const fs = require("fs");
const { WikiExtract } = require("@edunad/lua-wiki-generator");

const init = () => {
  const methodTemplate = fs.readFileSync(
    "./md-templates/METHOD_TEMPLATE.md",
    "utf8"
  );
  const classTemplate = fs.readFileSync(
    "./md-templates/CLASS_TEMPLATE.md",
    "utf8"
  );
  const extensionTemplate = fs.readFileSync(
    "./md-templates/EXTENSION_TEMPLATE.md",
    "utf8"
  );
  const gvarTemplate = fs.readFileSync(
    "./md-templates/GVAR_TEMPLATE.md",
    "utf8"
  );

  new WikiExtract("./ias-lib/**/*.lua", "D:/ias_dev/ias_wiki/docs", {
    templates: {
      method: methodTemplate,
      class: classTemplate,
      extension: extensionTemplate,
      gvar: gvarTemplate,
    },
    mdTextParser: (folder, template, codeBlock) => {
      template = template.replace(/\$TITLE_NAME_CLEAN\$/g, codeBlock.title.msg);
      return [true, template];
    },
    mdLinkParser: (type, outputFolder, data) => {
      if (type === "$TITLE_NAME$") {
        return `[${
          data.title.link
        }](../${data.title.link.toLowerCase()}/README.md)${data.title.msg.replace(
          data.title.link,
          ""
        )}`;
      } else if (
        type === "$PARAMETERS$" ||
        type === "$RETURNS$" ||
        type === "$FIELDS$"
      ) {
        return `[${data.link}](../${data.link.toLowerCase()}/README.md)`;
      }

      throw new Error(`Unknown type: ${type}`);
    },
  }).extract();
};

init();
