---@meta

---
---@class Storage
---* Storage's entry class.
---
Storage = {}


---
---@env SHARED
---@return boolean
---* Returns true if the storage is valid
---
function Storage:isValid()
end

---
---@env SHARED
---@return table
---* Returns all the items in the storage
---
function Storage:getItems()
end

---
---@env SHARED
---@param index number
---@return ITEM
---* Returns the item by index
---
function Storage:getItem(index)
end

---
---@env SHARED
---@param slot number
---@return number
---* Returns the total amount of the item on the slot
---
function Storage:getItemCount(slot)
end

---
---@env SHARED
---@param id string
---@return number
---* Returns the total amount of the item on the storage by id
---
function Storage:getItemCountById(id)
end

---
---@env SHARED
---@return boolean
---* Returns true if the storage is empty
---
function Storage:empty()
end

---
---@env SHARED
---@return number
---* Returns the first available slot index
---
function Storage:getAvailableSlot()
end

---
---@env SHARED
---@param id string
---@param amount? number "Defaults: 1"
---@return number
---* Returns the available slot index by id
---
function Storage:getAvailableSlotById(id, amount)
end

---
---@env SHARED
---@param id string
---@return number[]
---* Returns the slots where the given item id is present
---
function Storage:findItemSlots(id)
end

---
---@env SHARED
---@param slot number
---@return boolean
---* Returns true if the storage has an item on the given slot
---
function Storage:hasItem(slot)
end

---
---@env SHARED
---@param id string
---@return boolean
---* Returns true if the storage has the given id
---
function Storage:hasItemById(id)
end

---
---@env CLIENT
---@param slot number
---@param count number
---@return boolean
---* Returns true if it can add the ammount to the given slot
---
function Storage:canAddItem(slot, count)
end

--------------------------------

---
---@env SERVER
---@param id string
---@param amount? number "Defaults: 1"
---@param slot? number "Defaults: -1"
---@param metadata? table "Defaults: nil"
---@return boolean
---* Adds the given item id to the ent storage (ent needs to be marked with setStorage)
---
function Storage:addItem(id, amount, slot, metadata)
end

---
---@env SERVER
---@param slot number
---@param amount? number "Removes the whole item if not set"
---@return boolean
---* Removes the given amount (if not set, the whole item) on the given slot
---
function Storage:removeItem(slot, amount)
end

---
---@env SERVER
---@param id string
---@param amount number
---@return boolean
---* Removes the given amount by item id
---
function Storage:removeItemById(id, amount)
end

---
---@env SERVER
---@param to Storage
---@param slot number
---@param newSlot number
---@return boolean
---* Moves an item to a different inventory
---
function Storage:moveItem(to, slot, newSlot)
end

---
---@env SERVER
---@param slot number
---@param pos Vector
---@return boolean
---* Drops the given item slot on the given pos
---
function Storage:dropItem(slot, pos)
end

---
---@env SERVER
---@param ply Player
---* Forces a storage sync with the given player
---@hint @warning "This is done automatically, should only be called if you reject the player on the canAccessStorage and give it access later"
---
function Storage:syncStorage(ply)
end

--------------------------------

---
---@env CLIENT
---@param slot number
---@return boolean
---* Drops the given item slot
---
function Storage:dropItem(slot)
end

---
---@env CLIENT
---@param priority number
---* Storage priority, used for SHIFT item transfering clicking
---
function Storage:setPriority(priority)
end

---
---@env CLIENT
---@return number
---* Returns the storage priority, -1 for unset
---
function Storage:getPriority(priority)
end
