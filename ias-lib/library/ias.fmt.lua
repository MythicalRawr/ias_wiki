---@meta

---
---@class fmt
---* FMT's entry class.
---
fmt = {}

---
---@env SHARED
---@param str string
---@param ... any
---@return string
---@deprecated "Use string.format instead"
---* Returns a formated string
---
function fmt:format(str, ...) end
