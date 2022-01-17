---@meta

---
---ITEM's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class ITEM
ITEM = {}

---
---@ENV CLIENT
---@param path string
---* Update the item icon (client side only)
---
function ITEM:updateIcon(path) end

---
---@ENV CLIENT
---@param slot number
---@param packet Packet
---* Sends a packet to the given slot
---
function ITEM:sendMessage(slot, packet) end

------------------

---
---@ENV SHARED
---* Called when the item is initialized
---
function ITEM:init() end

---
---@ENV SHARED
---@param delta number
---* Called every update tick
---
function ITEM:update(delta) end

---
---@ENV SHARED
---* Called when item use is canceled
---
function ITEM:onCancelUse() end

---
---@ENV SHARED
---* Called when item use is preparing (only right click)
---
function ITEM:onPreUse() end

---
---@ENV SHARED
---* Called when item use is used (right + left click)
---
function ITEM:onUse() end

---
---@ENV CLIENT
---@param packet Packet
---* The data to read from the netWrite (Server). Use this to sync variables between client and server
---
function ITEM:onNetRead(packet) end

---
---@ENV SERVER
---@param packet Packet
---* Called by transmitUpdate by the server to send an update (should be used to sync vars)
---
function ITEM:onNetWrite(packet) end

---
---@ENV SHARED
---@param slot number
---* Called when the item changes slots
---
function ITEM:onSlotChanged(slot) end

---
---@ENV SHARED
---* Called when the item is being destroyed
---
function ITEM:onDestroy() end

---
---@ENV SHARED
---* Called when the item is un-selected by the player
---
function ITEM:onHolster() end

---
---@ENV SHARED
---* Called when the item is selected by the player
---
function ITEM:onDeploy() end

---
---@ENV SHARED
---@param item ITEM
---* Called to override the check if the item can be combined.
---
function ITEM:canCombine(item) end

---
---@ENV SHARED
---@return table
---@nodiscard
---* ⚠ MUST BE IMPLEMENTED ⚠.
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
---@ENV SHARED
---@return Entity
---* Returns the current item owner
---
function ITEM:getOwner() end

---
---@ENV CLIENT
---* Called every draw
---
function ITEM:draw() end

---
---@ENV SHARED
---@param quantity? number
---* Destroy the current item with the given quantity (if not set, destroys the whole item)
---
function ITEM:destroy(quantity) end

---
---@ENV SHARED
---@return table
---* Returns the item settings
---
function ITEM:getSettings() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the item is stackable
---
function ITEM:isStackable() end

---
---@ENV SHARED
---@param other ITEM
---@return boolean
---* Returns true if the item can be combined
---
function ITEM:canCombine(other) end

---
---@ENV SHARED
---@param other ITEM
---@return boolean
---* Returns true if it's the same item
---
function ITEM:same(other) end

---
---@ENV SHARED
---@return string
---* Returns the item unique id (class)
---
function ITEM:ID() end
