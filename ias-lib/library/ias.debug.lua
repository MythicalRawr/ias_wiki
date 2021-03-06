---@meta

---
---debug's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class worldDebug
worldDebug = {}

---
---@ENV CLIENT
---@param pos Vector3
---@param ttl number
---@param text string
---@param color? Color
---* Draws a 3D debug text that will vanish after the given ttl time
---
function worldDebug:text(pos, ttl, text, color) end

---
---@ENV CLIENT
---@param startPos Vector3
---@param endPos Vector3
---@param ttl number
---@param color? Color
---* Draws a 3D debug line that will vanish after the given ttl time
---
function worldDebug:line(startPos, endPos, ttl, color) end

---
---@ENV CLIENT
---@param pos Vector3
---@param ttl number
---@param size? Vector
---@param color? Color
---@param outline? boolean
---* Draws a 3D debug box that will vanish after the given ttl time
---
function worldDebug:box(pos, ttl, size, color, outline) end
