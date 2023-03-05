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

  const dest = "D:/ias_dev/ias_wiki/docs";

  new WikiExtract("./ias-lib/**/*.lua", `${dest}/api`, {
    templates: {
      method: methodTemplate,
      class: classTemplate,
      extension: extensionTemplate,
      gvar: gvarTemplate,
    },
    mdTextParser: (folder, template, codeBlock) => {
      template = template.replace(/\$TITLE_NAME_CLEAN\$/g, codeBlock.title.msg);

      // Override example parsing
      let example = "";
      if (codeBlock.commentBlock.examples.length > 0) {
        example += "```lua {} showLineNumbers\n";
        codeBlock.commentBlock.examples.forEach((ex) => {
          example += `${ex}\n`;
        });
        example += "```\n\n";
      }

      template = template.replace(/\$EXAMPLE\$/g, example);
      // ----

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
  })
    .extract()
    .then(() => {
      fs.copyFileSync("./ias-lib/README.md", `${dest}/index.md`);
    });
};

init();
