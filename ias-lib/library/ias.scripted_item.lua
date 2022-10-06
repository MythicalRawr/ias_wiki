---@meta

---
---@class ITEM
---* ITEM's entry class
---
ITEM = {}

---
---@env CLIENT
---@param path string
---* Update the item icon
---
function ITEM:updateIcon(path) end

---
---@env CLIENT
---@param slot number
---@param packet Packet
---* Sends a packet to the given slot
---
function ITEM:sendMessage(slot, packet) end

------------------

---
---@env SHARED
---* Called when the item is initialized
---
function ITEM:init() end

---
---@env SHARED
---@param delta number
---* Called every update tick
---
function ITEM:update(delta) end

---
---@env SHARED
---* Called when item use is canceled
---
function ITEM:onCancelUse() end

---
---@env SHARED
---* Called when item use is preparing (only right click)
---
function ITEM:onPreUse() end

---
---@env SHARED
---* Called when item use is used (right + left click)
---
function ITEM:onUse() end

---
---@env CLIENT
---@param packet Packet
---* The data to read from the netWrite (Server). Use this to sync variables between client and server
---
function ITEM:onNetRead(packet) end

---
---@env SERVER
---@param packet Packet
---* Called by transmitUpdate by the server to send an update (should be used to sync vars)
---
function ITEM:onNetWrite(packet) end

---
---@env SHARED
---@param slot number
---* Called when the item changes slots
---
function ITEM:onSlotChanged(slot) end

---
---@env SHARED
---* Called when the item is being destroyed
---
function ITEM:onDestroy() end

---
---@env SHARED
---* Called when the item is un-selected by the player
---
function ITEM:onHolster() end

---
---@env SHARED
---* Called when the item is selected by the player
---
function ITEM:onDeploy() end

---
---@env SHARED
---@param item ITEM
---* Called to override the check if the item can be combined.
---
function ITEM:canCombine(item) end

---
---@env SHARED
---@hint @error "MUST BE IMPLEMENTED"
---@return table
---@nodiscard
---* Return the item settings
---
---```lua
---return {
---		id = "item_coin", -- ⚠ REQUIRED AND NEEDS TO BE UNIQUE ⚠
---		icon = "content/textures/items/coin.png", -- ⚠ REQUIRED ⚠
---		max = 999,
---		description = "Looks valuable",
--- 	title = "Moneys",
---		rarity = ITEM_RARITY.EPIC
---}
---```
---
function ITEM:getSettings() end

---
---@env SHARED
---@return Entity
---* Returns the current item owner
---
function ITEM:getOwner() end

---
---@env CLIENT
---* Called every draw
---
function ITEM:draw() end

---
---@env SHARED
---@param quantity? number "Default: 0"
---* Destroy the current item with the given quantity (if not set, destroys the whole item)
---
function ITEM:destroy(quantity) end

---
---@env SHARED
---@return table
---* Returns the item settings
---
function ITEM:getSettings() end

---
---@env SHARED
---@return boolean
---* Returns true if the item is stackable
---
function ITEM:isStackable() end

---
---@env SHARED
---@param other ITEM
---@return boolean
---* Returns true if the item can be combined
---
function ITEM:canCombine(other) end

---
---@env SHARED
---@param other ITEM
---@return boolean
---* Returns true if it's the same item
---
function ITEM:same(other) end

---
---@env SHARED
---@return string
---* Returns the item unique id (class)
---
function ITEM:ID() end
