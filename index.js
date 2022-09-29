const fs = require('fs');
const WikiExtract = require('@edunad/lua-wiki-generator');

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
    }).extract();
};

init();
