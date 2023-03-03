---@meta

---
---@class timer
---* timer's entry class.
---
timer = {}

---
---@env SHARED
---@param id string
---@param interval number
---@param ticks number
---@param callback function "fun(data?: any): void"
---@return timerObj
---* Creates a timer using the unique id, triggering every x seconds for an x ammount of times.
---* If ticks is set to <= than 0, it will run infinitely
---
function timer:create(id, interval, ticks, callback)
end

---
---@env SHARED
---@param id string
---@return boolean
---* Returns true if a timer with the given id exists
---
function timer:exists(id)
end

---
---@env SHARED
---@param id string
---@return boolean
---* Destroys a timer with the given id
---
function timer:destroy(id)
end

---
---@env SHARED
---@param id string
---@return timerObj
---* Returns a timerObj with the given id, make sure you validate with timer:exists first.
---
function timer:get(id)
end
