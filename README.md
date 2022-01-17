# ias_wiki
Wiki for It's Absolutely Safe

## How to use the lua lib? (*VSCODE* ONLY)
1. Extract the contents into a folder
2. Install https://marketplace.visualstudio.com/items?itemName=sumneko.lua
3. Open your **.code-workspace** (or local) settings and point it to the lib folder (**absolute path**), example:
```json
"settings": {
    "Lua.workspace.library": ["D:/ias-lib"],
    "Lua.runtime.special": {
      "include": "require"
    }
}
```
4. **Restart*** VSCODE

## LINKS

### [WIKI](https://github.com/edunad/ias_wiki/wiki)
