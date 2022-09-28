---@meta

---
---ENT's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class ENT : Entity
ENT = {}

---
---@env SERVER
---@param set boolean
---* Marks the entity to use power
---
function ENT:setUsesPower(set) end

---
---@env SERVER
---@param set boolean
---* Marks the entity to use tile
---
function ENT:setUsesTile(set) end

---
---@env SERVER
---@param set boolean
---* Marks the entity to use wire io
---
function ENT:setUsesWire(set) end

---
---@env SERVER
---@param set boolean
---* Marks the entity to use gas
---
function ENT:setUsesGas(set) end

---
---@env SERVER
---@param set USE
---* Sets the use type of the entity
---
function ENT:setUseType(set) end

---
---@env SERVER
---* Triggers a netWrite and transmits that data to the client, triggering a netRead
---
function ENT:transmitUpdate() end

---
---@env SHARED
---@param aabb AABB
---* Sets the render box of the entity.
---* ⚠ `initPhysics` & `initCirclePhysics` **reset** this value. Should be placed **after** calling those (inside `createPhysics`) ⚠
---* ⚠ **If the entity has not physics this needs to be set, for VIS to work** ⚠
---
function ENT:setRenderBox(aabb) end

---
---@env SHARED
---@return AABB
---* Gets the render box of the entity.
---
function ENT:getRenderBox() end

------------------------------------

---
---@env SHARED
---* Called when the entity is initialized
---
function ENT:init() end

---
---@env SHARED
---@param id number
---* Called when the entity VIS is updated
---
function ENT:onVISUpdate(id) end

---
---@env SHARED
---* Called when the entity's physics are initialized. initCirclePhysics / initPhysics should be placed here
---
function ENT:createPhysics() end

---
---@env CLIENT
---@param packet Packet
---* The data to read from the netWrite (Server). Use this to sync variables between client and server
---
function ENT:onNetRead(packet) end

---
---@env SHARED
---* Called before the lua is reloaded
---
function ENT:onPreLuaReload() end

---
---@env SHARED
---* Called after the lua is reloaded
---
function ENT:onPostLuaReload() end

---
---@env SHARED
---@param delta number
---* Called every update tick
---
function ENT:update(delta) end

---
---@env SHARED
---@param entity Entity
---* Called when an entity touches another entity (requires physics)
---
function ENT:onTouchStart(entity) end

---
---@env SHARED
---@param entity Entity
---* Called when an entity stops touching another entity (requires physics)
---
function ENT:onTouchEnd(entity) end

---
---@env SHARED
---@param entity Entity
---* Called when an entity starts grabbing this entity
---
function ENT:onGrabStart(entity) end

---
---@env SHARED
---@param entity Entity
---* Called when an entity stops grabbing this entity
---
function ENT:onGrabEnd(entity) end

---
---@env SHARED
---* Called when the entity is being removed
---
function ENT:onDestroy() end

---
---@env SERVER
---@param ent Entity
---* Triggered when a entity presses USE
---
function ENT:onUse(ent) end

---
---@env SERVER
---@param ent Entity
---* Triggered when a entity cancels USE (only on MENU mode)
---
function ENT:onUseCancel(ent) end

---
---@env SERVER
---@param packet Packet
---* Triggered when the server transmits an update
---
function ENT:onNetWrite(packet) end

---
---@env SERVER
---@param id string
---@param hasSignal boolean
---* Triggered when the wire emits a signal
---
function ENT:onWireIOEmit(id, hasSignal) end

---
---@env SERVER
---@param id string
---* Triggered when the entity is connected to the wire IO
---
function ENT:onWireIOConnected(id) end

---
---@env SERVER
---@param id string
---* Triggered when the entity is disconnected from the wire IO
---
function ENT:onWireIODisconnected(id) end

---
---@env CLIENT
---@param player Player
---* Triggered a use viewer player is added
---
function ENT:onUseViewerAdded(player) end

---
---@env CLIENT
---@param player Player
---* Triggered a use viewer player is removed
---
function ENT:onUseViewerRemoved(player) end

---
---@env CLIENT
---@param item ITEM
---@param slot number
---@param mover Entity
---* If the entity should accept the item on the given slot by the given entity.
---* If method not defined, by default it accepts all items.
---
function ENT:acceptItem(item, slot, mover) end

---
---@env CLIENT
---@param slot number
---* Triggered when a slot is updated
---
function ENT:onStorageUpdate(slot) end

---
---@env SERVER
---@param id number
---@return number
---* Called to see if the entity has any power available
---
function ENT:onPowerAvailable(id) end

---
---@env SERVER
---@param id number
---@param amount number
---* Called when power is drained
---
function ENT:onPowerDrain(id, amount) end

---
---@env SERVER
---@param id number
---* Called when a power network is connected to the entity
---
function ENT:onPowerConnected(id) end

---
---@env SERVER
---@param id number
---* Called when a power network is disconnected from the entity
---
function ENT:onPowerDisconnected(id) end

---
---@env CLIENT
---@param id string
---@param packet Packet
---* Called when the entity recieves a net packet from the server
---
function ENT:onNetPacket(id, packet) end

---
---@env SERVER
---@param id string
---@param packet Packet
---@param ply Player
---* Called when the server recieves a net packet from the player (client)
---
function ENT:onNetPacket(id, packet, ply) end

---
---@env CLIENT
---* Called every draw
---
function ENT:draw() end
