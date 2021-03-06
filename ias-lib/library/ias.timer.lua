---@meta

---
---timer's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class timer
timer = {}

---
---@ENV SHARED
---@param id string
---@param interval number
---@param ticks number
---@param callback function
---@return timerObj
---* Creates a timer using the unique id, triggering every x seconds for an x ammount of times.
---* If ticks is set to <= than 0, it will run infinitely
---
function timer:create(id, interval, ticks, callback) end

---
---@ENV SHARED
---@param id string
---@return boolean
---* Returns true if a timer with the given id exists
---
function timer:exists(id) end

---
---@ENV SHARED
---@param id string
---@return boolean
---* Destroys a timer with the given id
---
function timer:destroy(id) end

---
---@ENV SHARED
---@param id string
---@return timerObj
---* Returns a timerObj with the given id, make sure you validate with timer:exists first.
---
function timer:get(id) end

-----------------------------------


---
---timerObj's entry class.
---
---@class timerObj
timerObj = {}

---
---@ENV SHARED
---* Destroys the timer
---
function timerObj:destroy() end

---
---@ENV SHARED
---@return string
---* Returns the timer id
---
function timerObj:getId() end

---
---@ENV SHARED
---@return number
---* Returns how many remaining ticks the timer has
---
function timerObj:getRemainingTicks() end
