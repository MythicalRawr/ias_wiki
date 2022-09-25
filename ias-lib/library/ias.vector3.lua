---@meta

---
---Vector3's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Vector3: Vector
---@field x number
---@field y number
---@field z number
Vector3 = {
	x = 0,
	y = 0,
	z = 0
}

---
---@ENV SHARED
---@param x number
---@param y number
---@param z number
---@return Vector3
---* Vector3 constructor
---
function Vector3:new(x, y, z) end
