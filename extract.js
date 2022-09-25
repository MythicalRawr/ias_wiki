import fs from 'fs-extra';
import readline from 'readline';
import glob from 'glob';
import events from 'events';
import { basename } from 'path';

const ROOT_LIB_FOLDER = './ias-lib';
const TEMPLATE_FILE = './TEMPLATE.md';

const OUTPUT = './home';

async function init() {
    const template = await fs.readFile(TEMPLATE_FILE, 'utf8');

    await fs.remove(OUTPUT);
    await fs.ensureDir(OUTPUT);

    glob(`${ROOT_LIB_FOLDER}/**/ias.*.lua`, { symlinks: true }, async function (er, files) {
        if (er) throw er;

        // Parse files
        const parsePromises = files.map((file) => parseFile(file));
        const parsedData = await Promise.all(parsePromises);

        // GENERATE MD FILES ----
        parsedData.forEach((data) => {
            // Generate folder
            const folderTitle = basename(data.file).replace('ias.', '').replace('.lua', '').toLowerCase();
            fs.ensureDirSync(`${OUTPUT}/${folderTitle}`);

            data.blocks.forEach((block) => {
                const md = generateMD(template, block);
                if (md === '') return;

                const name = block.title.split(':')[1];
                const file = `${OUTPUT}/${folderTitle}/${folderTitle}_${name}.md`;

                fs.writeFileSync(file, md, { encoding: 'utf-8' });
            });
        });
    });
}

function generateMD(template, block) {
    if (!block) return '';

    let fixedTemplate = template;
    fixedTemplate = fixedTemplate.replace('$CLEAN_METHOD_NAME$', block.title);
    fixedTemplate = fixedTemplate.replace('$METHOD_NAME$', block.method);

    fixedTemplate = fixedTemplate.replace(/\$SCOPE\$/g, block.commentBlock.env.toLowerCase());

    /// HINTS -----
    let hints = '';
    block.commentBlock.hints.info.forEach((info) => {
        hints += `{% hint style="info" %} ${info} {% endhint %}\n`;
    });
    block.commentBlock.hints.warnings.forEach((info) => {
        hints += `{% hint style="warning" %} ${info} {% endhint %}\n`;
    });
    block.commentBlock.hints.success.forEach((info) => {
        hints += `{% hint style="success" %} ${info} {% endhint %}\n`;
    });
    block.commentBlock.hints.danger.forEach((info) => {
        hints += `{% hint style="danger" %} ${info} {% endhint %}\n`;
    });

    fixedTemplate = fixedTemplate.replace('$HINTS$', hints);
    // -------

    /// PARAMETERS -----
    let description = '';
    block.commentBlock.description.forEach((desc) => {
        description += `${desc}\n`;
    });

    fixedTemplate = fixedTemplate.replace('$DESCRIPTION$', description);
    // -------

    /// EXAMPLE -----
    let example = '';
    if (block.commentBlock.example.length > 0) {
        example += '```lua\n';
        block.commentBlock.example.forEach((ex) => {
            example += `${ex}\n`;
        });
        example += '```\n';
    }
    fixedTemplate = fixedTemplate.replace('$EXAMPLE$', example);
    // -------

    /// PARAMETERS -----
    let params = '';
    if (block.commentBlock.params.length > 0) {
        params += `------\n`;
        params += `## Parameters\n\n`;
        params += `| Type   | Name | Description              | Optional |\n`;
        params += `| ------ | ---- | ------------------------ | -------: |\n`;

        block.commentBlock.params.forEach((param) => {
            params += `| ${param.type} | ${param.name} | ${param.description} | ${param.optional ? '✔' : ''} |\n`;
        });
    }
    fixedTemplate = fixedTemplate.replace('$PARAMETERS$', params);
    // -------

    /// RETURN -----
    let returns = '';
    if (block.commentBlock.return.type !== 'void') {
        returns += `------\n`;
        returns += `## Returns\n\n`;
        returns += `| Type | Description |\n`;
        returns += `| ---- | ----------: |\n`;
        returns += `| ${block.commentBlock.return.type} | ${block.commentBlock.return.description} |\n`;
    }
    fixedTemplate = fixedTemplate.replace('$RETURNS$', returns);
    // -------

    return fixedTemplate;
}

function getDefaultBlock() {
    return {
        env: 'UNKNOWN',
        params: [],
        hints: {
            info: [],
            warnings: [],
            danger: [],
            success: [],
        },
        return: {
            type: 'void',
            description: '',
        },
        description: [],
        example: [],
    };
}

async function parseFile(filePath) {
    const stream = fs.createReadStream(filePath, 'utf8');
    const rl = readline.createInterface({
        input: stream,
        crlfDelay: Infinity,
    });

    /// --------
    const parsedBlocks = {
        file: filePath,
        blocks: [],
    };

    let commentBlock = getDefaultBlock();
    let exampleEnabled = false;

    rl.on('line', (line) => {
        if (line === '---@meta' || line.trim() === '') return; // Ignore

        if (!line.startsWith('---')) {
            // Reached a method?
            const isMethod = line.startsWith('function');
            if (isMethod) {
                let methodName = line.replace('end', '').replace('function', commentBlock.return.type).trim();

                parsedBlocks.blocks.push({
                    commentBlock,
                    method: methodName,
                    title: methodName.split(' ')[1].split('(')[0],
                });
            }

            commentBlock = getDefaultBlock(); // Reset
        } else {
            const lineData = line.split(/ /g);
            const text = line.replace('---', '').trim();

            if (line.startsWith('---@param')) {
                commentBlock.params.push({
                    type: lineData[2],
                    name: lineData[1].replace('?', ''),
                    description: lineData.length >= 4 ? lineData[3] : '',
                    optional: lineData[1].indexOf('?') != -1,
                });
            } else if (line.startsWith('---@return')) {
                commentBlock.return = {
                    type: lineData[1],
                    description: lineData.length >= 4 ? lineData[3] : '',
                };
            } else if (line.startsWith('---@ENV')) {
                commentBlock.env = lineData[1];
            } else if (line.startsWith('---@warning')) {
                commentBlock.hints.warnings.push(text);
            } else if (line.startsWith('---@info')) {
                commentBlock.hints.info.push(text);
            } else if (line.startsWith('---@danger')) {
                commentBlock.hints.danger.push(text);
            } else if (line.startsWith('---@success')) {
                commentBlock.hints.success.push(text);
            } else if (line.startsWith('---*')) {
                commentBlock.description.push(line.replace('---*', '').trim());
            } else if (line.startsWith('---```lua')) {
                exampleEnabled = true;
            } else if (line.startsWith('---```')) {
                exampleEnabled = false;
            } else if (exampleEnabled) {
                commentBlock.example.push(text);
            }
        }
    });
    // -----

    await events.once(rl, 'close');
    if (parsedBlocks.length <= 0) console.warn(`File ${filePath} has no lua documentation?`);

    return parsedBlocks;
}

await init();
