---@meta

---
---@class WorkshopMOD
---* WorkshopMOD's entry class
---
WorkshopMOD = {}

---
---@env SHARED
---@return table
---* Returns the mod's enviroment
---* ⚠ BE VERY CAREFUL, YOU MIGHT MESS UP THE MOD'S LUA ENVIROMENT IF NOT CAREFUL!! ⚠
---
function WorkshopMOD:getENV() end

---
---@env SHARED
---@return table
---* Returns the mod's settings
---
function WorkshopMOD:getSettings() end
