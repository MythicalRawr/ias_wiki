---@meta

---
---@class Vector3: Vector
---@field x number
---@field y number
---@field z number
---* Vector3's entry class
---
Vector3 = {
	x = 0,
	y = 0,
	z = 0
}

---
---@env SHARED
---@param x number
---@param y number
---@param z number
---@return Vector3
---* Vector3 constructor
---
function Vector3:new(x, y, z) end
