---@meta

---
---@ENV SHARED
---@param val number
---@param min number
---@param max number
---@return number
---* Clamps a number
---
math.clamp = function(val, min, max) end

---
---@ENV SHARED
---@param val number
---@return boolean
---* Returns true if the number is NaN (not a number)
---
math.isNan = function(val) end

---
---@ENV SHARED
---@param val number
---@return boolean
---* Returns true if the number is finite
---
math.isFinite = function(val) end

---
---@ENV SHARED
---@param val number
---@return number
---* Returns the rounded number
---
math.round = function(val) end
