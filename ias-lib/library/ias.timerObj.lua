---@meta

---
---timerObj's entry class.
---
---@class timerObj
timerObj = {}

---
---@env SHARED
---* Destroys the timer
---
function timerObj:destroy()
end

---
---@env SHARED
---@return string
---* Returns the timer id
---
function timerObj:getId()
end

---
---@env SHARED
---@return number
---* Returns how many remaining ticks the timer has
---
function timerObj:getRemainingTicks()
end
