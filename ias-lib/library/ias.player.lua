---@meta

---
---player's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Player : ENT
Player = {}

---
---@ENV SHARED
---@return string
---* Returns the player name (aka name on steam)
---
function Player:getName() end

---
---@ENV SHARED
---@return number
---* Returns the player steam id
---
function Player:getSteamID() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the player is an admin
---
function Player:isAdmin() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the player is a developer
---
function Player:isDeveloper() end

---
---@ENV SHARED
---@return number
---* Returns the current player oxygen
---
function Player:getOxygen() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the player is grabbing an object
---
function Player:isGrabbing() end

---
---@ENV SHARED
---@return boolean
---* Cancels use (used when the player closes menus on the client, on the server this is done automatically)
---* Returns true if successful
---
function Player:cancelUse() end

---
---@ENV SERVER
---@param flags FREEZE
---@param set boolean
---* Sets / Unsets the freeze flags
---
function Player:setFreeze(flags, set) end

---
---@ENV SHARED
---@return boolean
---* Returns true if the player movement is disabled
---
function Player:isMovementDisabled() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the player rotation is disabled
---
function Player:isRotationDisabled() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the player rotation and movement are disabled
---
function Player:isFrozen() end

---
---@ENV CLIENT
---@see ENT:moveItem
---@param oldStorage ENT
---@param newStorage ENT
---@param oldSlot number
---@param newSlot number
---@return boolean "Local move was successful"
---* Locally moves an item from an inventory to another inventory and sends a validation request to the server.
---* The moving player must be marked as a viewer on server and be within range of both inventories!
---
function Player:moveItem(oldStorage, newStorage, oldSlot, newSlot) end
