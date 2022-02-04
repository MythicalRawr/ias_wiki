---@meta

---
---Room's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Room
Room = {}

---
---@ENV SHARED
---@return number
---* Returns the room id, unique per building
---
function Room:ID() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the room is valid
---
function Room:isValid() end

---
---@ENV SHARED
---@return number
---* Returns the pressure in PSI
---
function Room:getPressure() end

---
---@ENV SHARED
---@param gasType GAS
---@return number
---* Returns amount of gas in a room of the type
---
function Room:getGas(gasType) end

---
---@ENV SHARED
---@return table
---* Returns all gasses that are in the room
---
function Room:getGasses() end

---
---@ENV SERVER
---@param gasType GAS
---@param amount number
---* adds the amount of gas to a room
---
function Room:addGas(gasType, amount) end
