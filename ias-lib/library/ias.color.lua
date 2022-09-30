---@meta

---
---@class Color
---@field r number
---@field g number
---@field b number
---@field a number
---* Color's entry class
Color = {
	r = 0,
	g = 0,
	b = 0,
	a = 1
}

---
---@env SHARED
---@param r number
---@param g number
---@param b number
---@param a? number
---@return Color
---* Color constructor
---
function Color:new(r, g, b, a) end

---
---@env SHARED
---@return number
---* Returns the length of the color
---
function Color:length() end

---
---@env SHARED
---@return number
---* Returns the distance of the color
---
function Color:distance() end

---
---@env SHARED
---@return number
---* Returns the normalized color
---
function Color:normalized() end

---
---@env SHARED
---@return number
---* Returns the dot color
---
function Color:dot() end
