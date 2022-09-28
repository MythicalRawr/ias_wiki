---@meta

---
---FMT's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class fmt
fmt = {}

---
---@env SHARED
---@param str string
---@param ... any
---@return string
---@deprecated Use string.format instead
---* Returns a formated string
---
function fmt:format(str, ...) end
