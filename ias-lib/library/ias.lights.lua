---@meta

---
---lights's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class lights
lights = {}

---
---@env CLIENT
---@param pos Vector
---@param color Color
---@param fallStart? number
---@param fallEnd? number
---@param lumi? number
---@return light
---* Creates a light at the given location (client side only)
---* ⚠ MAKE SURE YOU REMOVE THE LIGHT AFTER YOU ARE DONE WITH IT ⚠
---
function lights:create(pos, color, fallStart, fallEnd, lumi) end

---
---@env CLIENT
---@param id number
---* Removes the a light by id
---
function lights:remove(id) end
