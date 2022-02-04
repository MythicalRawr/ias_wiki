---@meta

---
---GasNetwork's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class GasNetwork
GasNetwork = {}

---
---@ENV SHARED
---@return number
---* Returns the GasNetwork id, unique per building
---
function GasNetwork:ID() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the GasNetwork is valid
---
function GasNetwork:isValid() end

---
---@ENV SHARED
---@return number
---* Returns the pressure in PSI
---
function GasNetwork:getPressure() end

---
---@ENV SHARED
---@param gasType GAS
---@return number
---* Returns amount of gas in a GasNetwork of the type
---
function GasNetwork:get(gasType) end

---
---@ENV SHARED
---@return table
---* Returns all gasses that are in the GasNetwork
---
function GasNetwork:getAll() end

---
---@ENV SERVER
---@param gasType GAS
---@param amount number
---* adds the amount of gas to a GasNetwork
---
function GasNetwork:add(gasType, amount) end
