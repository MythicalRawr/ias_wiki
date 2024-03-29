---@meta

---
---@class AABB
---@field pos Vector
---@field size Vector
---* AABB's entry class
AABB = {
	pos = {
		x = 0,
		y = 0
	},
	size = {
		x = 0,
		y = 0
	}
}

---
---@env SHARED
---@param x number
---@param y number
---@param width number
---@param height number
---@return AABB
---* AABB constructor
---
function AABB:new(x, y, width, height) end

---
---@env SHARED
---@return number
---* Returns the top
---
function AABB:top() end

---
---@env SHARED
---@return number
---* Returns the bottom
---
function AABB:bottom() end

---
---@env SHARED
---@return number
---* Returns the left
---
function AABB:left() end

---
---@env SHARED
---@return number
---* Returns the right
---
function AABB:right() end

---
---@env SHARED
---@return number
---* Returns the surfaceArea
---
function AABB:surfaceArea() end
