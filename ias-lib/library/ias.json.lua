---@meta

---
---json's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
--- [json.lua](https://github.com/rxi/json.lua)
---@class json
json = {}

---
---@env SHARED
---@param data table
---@return string
---* Encodes a table to a json string
---
function json:encode(data) end

---
---@env SHARED
---@param data string
---@return table
---* Decodes a json string to a lua table
---
function json:decode(data) end
