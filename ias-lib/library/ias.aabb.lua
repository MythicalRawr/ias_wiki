---@meta

---
---AABB's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class AABB
---@field pos Vector
---@field size Vector
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
---@ENV SHARED
---@param x number
---@param y number
---@param width number
---@param height number
---@return AABB
---* AABB constructor
---
function AABB:new(x, y, width, height) end

---
---@ENV SHARED
---@return number
---* Returns the top
---
function AABB:top() end

---
---@ENV SHARED
---@return number
---* Returns the bottom
---
function AABB:bottom() end

---
---@ENV SHARED
---@return number
---* Returns the left
---
function AABB:left() end

---
---@ENV SHARED
---@return number
---* Returns the right
---
function AABB:right() end

---
---@ENV SHARED
---@return number
---* Returns the surfaceArea
---
function AABB:surfaceArea() end
