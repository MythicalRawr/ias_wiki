---@meta

---
---Vector's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Vector
---@field x number
---@field y number
Vector = {
	x = 0,
	y = 0
}

---
---@ENV SHARED
---@param x number
---@param y number
---@return Vector
---* Vector constructor
---
function Vector:new(x, y) end

---
---@ENV SHARED
---@return number
---* Returns the length of the vector
---
function Vector:length() end

---
---@ENV SHARED
---@param other Vector
---@return number
---* Returns the distance of the vector from the given vector
---
function Vector:distance(other) end

---
---@ENV SHARED
---@param other Vector
---@return number
---* Returns the angle of the vector from the given vector
---
function Vector:angle(other) end

---
---@ENV SHARED
---@return number
---* Returns the vector atan2
---
function Vector:atan2() end

---
---@ENV SHARED
---@param min Vector
---@param max Vector
---@return Vector
---* Returns the clamped vector
---
function Vector:clamp(min, max) end

---
---@ENV SHARED
---@param ang number
---@return Vector
---* Returns the clamped vector
---
function Vector:cosSin(ang) end

---
---@ENV SHARED
---@param other Vector
---@return number
---* Returns the cross vector
---
function Vector:cross(other) end

---
---@ENV SHARED
---@return Vector
---* Returns the normalized vector
---
function Vector:normalized() end

---
---@ENV SHARED
---@param other Vector
---@return number
---* Returns the dot vector
---
function Vector:dot(other) end

---
---@ENV SHARED
---@return boolean
---* Returns true if the vector is Not A Number (NaN)
---
function Vector:isNaN() end

---
---@ENV SHARED
---@param other Vector
---@param t number
---@return Vector
---* Returns the lerped vector
---
function Vector:lerp(other, t) end
