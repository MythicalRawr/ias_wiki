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
function Player:name() end

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
