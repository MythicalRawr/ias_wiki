---@meta

---
---Color's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Color
Color = {
	r = 0,
	g = 0,
	b = 0,
	a = 1
}

---
---@ENV SHARED
---@param r number
---@param g number
---@param b number
---@param a? number
---@return Color
---* Color constructor
---
function Color:new(r, g, b, a) end

---
---@ENV SHARED
---@return number
---* Returns the length of the color
---
function Color:length() end

---
---@ENV SHARED
---@return number
---* Returns the distance of the color
---
function Color:distance() end

---
---@ENV SHARED
---@return number
---* Returns the normalized color
---
function Color:normalized() end

---
---@ENV SHARED
---@return number
---* Returns the dot color
---
function Color:dot() end
