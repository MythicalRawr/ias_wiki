---@meta

---
---@return boolean
---@hint @info "For SHARED code, just don't check for SERVER or CLIENT"
---* Returns true if the current code is running on the SERVER
---
---[IasWiki](https://github.com/MythicalRawr/ias_wiki/wiki/global)
---
_G.SERVER = false

---
---@return boolean
---@hint @info "For SHARED code, just don't check for SERVER or CLIENT"
---* Returns true if the current code is running on the CLIENT
---
---[IasWiki](https://github.com/MythicalRawr/ias_wiki/wiki/global)
---
_G.CLIENT = false

---
---@env CLIENT
---@return Player
---* Returns the local player if exists
---
---[IasWiki](https://github.com/MythicalRawr/ias_wiki/wiki/global)
---
LocalPlayer = function() end

---
---@env SHARED
---@return number
---* Returns the epoch unix time in milliseconds (from 1/1/1970)... until 2038, then we are all doomed.
---
curtime = function() end

---
---@env CLIENT
---@return Vector
---* Returns the local player last mouse position
---
getMousePos = function() end

---
---@env SHARED
---@param tbl table
---* Pretty prints the given table
---
printTable = function(tbl) end

---
---@env SHARED
---@param el any
---@return boolean
---* Returns true if its a number
---
isNumber = function(el) end

---
---@env SHARED
---@param el any
---@return boolean
---* Returns true if its a table
---
isTable = function(el) end

---
---@env SHARED
---@param el any
---@return boolean
---* Returns true if its a string
---
isString = function(el) end
