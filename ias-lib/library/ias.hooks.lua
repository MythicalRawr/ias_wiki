---@meta

---
---Hooks's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class hooks
hooks = {}

---
---@env SHARED
---@param hookId string
---@param hookName string
---@param callback function "fun(data:any): void"
---* Creates a hook (aka listener) for a specific hookId
---* Make sure your hook hookName is unique, it might get replaced by other hooks!
---
function hooks:add(hookId, hookName, callback) end

---
---@env SHARED
---@param hookId string
---@param hookName string
---* Remove a hook (aka listener) for a specific hookId
---
function hooks:remove(hookId, hookName) end

---
---@env SHARED
---@param hookId string
---@param data any
---* Emits data to the given hookId
---
function hooks:call(hookId, data) end
