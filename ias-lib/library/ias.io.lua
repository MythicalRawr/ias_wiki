---@meta

---
---@class io
---* io's entry class.
---
io = {}

---
---@env SHARED
---@param path string
---@return string error
---@return string data
---* Loads a file on the data folder, make sure you pass the extension on the filePath
---
function io:load(path) end

---
---@env SHARED
---@param path string
---@param data string
---@return string error
---* Saves a file on the data folder, make sure you pass the extension on the filePath
---
function io:save(path, data) end
