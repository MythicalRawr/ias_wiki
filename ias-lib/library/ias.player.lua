---@meta

---
---@class Player : ENT
---* player's entry class.
---
Player = {}

---
---@env SHARED
---@return string
---* Returns the player name (aka name on steam)
---
function Player:getName()
end

---
---@env SHARED
---@return number
---* Returns the player steam id
---
function Player:getSteamID()
end

---
---@env SHARED
---@return boolean
---* Returns true if the player is an admin
---
function Player:isAdmin()
end

---
---@env SHARED
---@return boolean
---* Returns true if the player is a developer
---
function Player:isDeveloper()
end

---
---@env SHARED
---@return boolean
---* Returns true if the player is nocliping
---
function Player:isNocliping()
end

---
---@env SHARED
---@return number
---* Returns the current player oxygen
---
function Player:getOxygen()
end

---
---@env SHARED
---@return boolean
---* Returns true if the player is grabbing an object
---
function Player:isGrabbing()
end

---
---@env SHARED
---@param entity? Entity "The menu to close, empty will cancel all"
---@return boolean
---@hint @note "Should be used when the client closes the menu, on the server this is done automatically"
---* Returns true if successful
---
function Player:cancelUse(entity)
end

---
---@env SERVER
---@param flags FREEZE
---@param set boolean
---* Sets / Unsets the freeze flags
---
function Player:setFreeze(flags, set)
end

---
---@env SHARED
---@return boolean
---* Returns true if the player movement is disabled
---
function Player:isMovementDisabled()
end

---
---@env SHARED
---@return boolean
---* Returns true if the player rotation is disabled
---
function Player:isRotationDisabled()
end

---
---@env SHARED
---@return boolean
---* Returns true if the player rotation and movement are disabled
---
function Player:isFrozen()
end

---
---@env CLIENT
---@param oldStorage Storage
---@param newStorage Storage
---@param oldSlot number
---@param newSlot? number "Defaults to -1"
---@hint @info "The moving player must be marked as a viewer on server and be within range of both inventories!"
---@return boolean "Local move was successful"
---* Locally moves an item from an inventory to another inventory and sends a validation request to the server.
---
function Player:moveItem(oldStorage, newStorage, oldSlot, newSlot)
end

---
---@env CLIENT
---@param oldStorage Storage
---@param oldSlot number
---@hint @info "The moving player must be marked as a viewer on server and be within range of both inventories!"
---@return boolean "Local move was successful"
---* Locally transfers an item from an inventory to any other open inventory and sends a validation request to the server.
---
function Player:transferItem(oldStorage, oldSlot)
end

---
---@env SERVER
---@param ent ENT
---* Registers a new spawnpoint for the player
---
function Player:registerSpawnPoint(ent)
end

---
---@env SERVER
---@param ent ENT
---* UnRegisters a new spawnpoint for the player
---
function Player:unregisterSpawnPoint(ent)
end

---
---@env SERVER
---@param ent ENT
---@return boolean
---* Returns true if the spawnpoint is already registered for the player
---
function Player:hasSpawnPoint(ent)
end
