---@meta

---
---PathFinder's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class PathFinder
PathFinder = {}

---
---@env SERVER
---@param from Vector
---@param to Vector
---@return table
---* Returns a table<Vector> that contains a list of tiles to move to in order. If result is null then no path was found
---
function PathFinder:calculate(from, to) end
