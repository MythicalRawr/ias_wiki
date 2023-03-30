---@meta

---
---@env SHARED
---@param val number
---@param min number
---@param max number
---@return number
---* Clamps a number
---
math.clamp = function(val, min, max)
end

---
---@env SHARED
---@param val number
---@return boolean
---* Returns true if the number is NaN (not a number)
---
math.isNan = function(val)
end

---
---@env SHARED
---@param val number
---@return boolean
---* Returns true if the number is finite
---
math.isFinite = function(val)
end

---
---@env SHARED
---@param val number
---@return number
---* Returns the rounded number
---
math.round = function(val)
end

---
---@env SHARED
---@param lower number
---@param greater number
---@return number
---* Returns a random float between lower and greater
---
math.randomFloat = function(lower, greater)
end
