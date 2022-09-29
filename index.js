const fs = require('fs');
const { WikiExtract } = require('@edunad/lua-wiki-generator');

const init = () => {
    const methodTemplate = fs.readFileSync('./md-templates/METHOD_TEMPLATE.md', 'utf8');
    const classTemplate = fs.readFileSync('./md-templates/CLASS_TEMPLATE.md', 'utf8');
    const extensionTemplate = fs.readFileSync('./md-templates/EXTENSION_TEMPLATE.md', 'utf8');
    const summaryTemplate = fs.readFileSync('./md-templates/SUMMARY_TEMPLATE.md', 'utf8');

    new WikiExtract('./ias-lib/**/*.lua', './readme', {
        templates: {
            summary: summaryTemplate,
            method: methodTemplate,
            class: classTemplate,
            extension: extensionTemplate,
        },
        mdLinkParser: (type, outputFolder, data) => {
            if (type === '$TITLE_NAME$') {
                return `[${data.title.link}](${data.title.link.toLowerCase()})${data.title.msg.replace(data.title.link, '')}`;
            } else if (type === '$PARAMETERS$' || type === '$RETURNS$' || type === '$FIELDS$') {
                return `[${data.link}](${data.link.toLowerCase()})`;
            } else if (type === 'SUMMARY') {
                if (data.fileName) {
                    // Not root
                    return `[${data.name}](${outputFolder}/${data.dir}/${data.fileName.replace('.md', '').toLowerCase()})`;
                } else {
                    // ROOT
                    return `[${data.dir}](${outputFolder}/${data.dir}/README)`;
                }
            }

            throw new Error(`Unknown type: ${type}`);
        },
    }).extract();
};

init();
