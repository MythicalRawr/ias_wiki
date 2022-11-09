---@meta

---
---@class Vector3
---@field x number
---@field y number
---@field z number
---@operator add(Vector3): Vector3
---@operator add(number): Vector3
---@operator sub(Vector3): Vector3
---@operator sub(number): Vector3
---@operator mul(Vector3): Vector3
---@operator mul(number): Vector3
---@operator div(Vector3): Vector3
---@operator div(number): Vector3
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

---
---@env SHARED
---@return number
---* Returns the length of the vector
---
function Vector3:length() end

---
---@env SHARED
---@return Vector3
---* Returns the floored vector
---
function Vector3:floor() end

---
---@env SHARED
---@param other Vector3
---@return number
---* Returns the distance of the vector from the given vector
---
function Vector3:distance(other) end

---
---@env SHARED
---@param other Vector3
---@return number
---* Returns the angle of the vector from the given vector
---
function Vector3:angle(other) end

---
---@env SHARED
---@return number
---* Returns the vector atan2
---
function Vector3:atan2() end

---
---@env SHARED
---@param min Vector3
---@param max Vector3
---@return Vector3
---* Returns the clamped vector
---
function Vector3:clamp(min, max) end

---
---@env SHARED
---@param ang number
---@return Vector3
---* Returns the clamped vector
---
function Vector3:cosSin(ang) end

---
---@env SHARED
---@param other Vector3
---@return number
---* Returns the cross vector
---
function Vector3:cross(other) end

---
---@env SHARED
---@return Vector3
---* Returns the normalized vector
---
function Vector3:normalized() end

---
---@env SHARED
---@param other Vector3
---@return number
---* Returns the dot vector
---
function Vector3:dot(other) end

---
---@env SHARED
---@param other Vector3
---@param t number
---@return Vector3
---* Returns the lerped vector
---
function Vector3:lerp(other, t) end

---
---@env SHARED
---@return Vector
---* Converts Vector3 to Vector
---
function Vector3:xy() end

---
---@env SHARED
---@return Vector
---* Switches z and y on the Vector
---
function Vector3:xzy() end
