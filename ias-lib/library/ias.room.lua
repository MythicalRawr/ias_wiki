---@meta

---
---@class Room
---* Room's entry class
---
Room = {}

---
---@env SHARED
---@return number
---* Returns the room id, unique per building
---
function Room:ID()
end

---
---@env SHARED
---@return boolean
---* Returns true if the room is valid
---
function Room:isValid()
end

---
---@env SHARED
---@return number
---* Returns the surface area size
---
function Room:getSurfaceSize()
end
