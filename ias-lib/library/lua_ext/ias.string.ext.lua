---@meta

---
---@ENV SHARED
---@param str string
---@param sep string
---@param max number
---@return string[]
---* Splits the string with the given seperator
---
string.split = function(str, sep, max) end

---
---@ENV SHARED
---@param str string
---@return boolean
---* Returns true if the string is empty
---
string.isEmpty = function(str) end

---
---@ENV SHARED
---@param bytes number
---@return string
---* Converts bytes to a readable string (aka 1GB.. 1TB.. etc)
---
string.bytesToReadable = function(bytes) end
