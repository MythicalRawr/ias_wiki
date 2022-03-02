---@meta

---
---ENT's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class ENT : Entity
ENT = {}

---
---@ENV SERVER
---@param set boolean
---* Marks the entity to use power
---
function ENT:setUsesPower(set) end

---
---@ENV SERVER
---@param set boolean
---* Marks the entity to use tile
---
function ENT:setUsesTile(set) end

---
---@ENV SERVER
---@param set boolean
---* Marks the entity to use wire io
---
function ENT:setUsesWire(set) end

---
---@ENV SERVER
---@param set boolean
---* Marks the entity to use gas
---
function ENT:setUsesGas(set) end

---
---@ENV SERVER
---@param set USE
---* Sets the use type of the entity
---
function ENT:setUseType(set) end

---
---@ENV SERVER
---* Triggers a netWrite and transmits that data to the client, triggering a netRead
---
function ENT:transmitUpdate() end

---
---@ENV SHARED
---@param aabb AABB
---* Sets the render box of the entity.
---* ⚠ `initPhysics` & `initCirclePhysics` **reset** this value. Should be placed **after** calling those (inside `createPhysics`) ⚠
---* ⚠ **If the entity has not physics this needs to be set, for VIS to work** ⚠
---
function ENT:setRenderBox(aabb) end

---
---@ENV SHARED
---@return AABB
---* Gets the render box of the entity.
---
function ENT:getRenderBox() end

------------------------------------

---
---@ENV SHARED
---* Called when the entity is initialized
---
function ENT:init() end

---
---@ENV SHARED
---@param id number
---* Called when the entity VIS is updated
---
function ENT:onVISUpdate(id) end

---
---@ENV SHARED
---* Called when the entity's physics are initialized. initCirclePhysics / initPhysics should be placed here
---
function ENT:createPhysics() end

---
---@ENV CLIENT
---@param packet Packet
---* The data to read from the netWrite (Server). Use this to sync variables between client and server
---
function ENT:onNetRead(packet) end

---
---@ENV SHARED
---* Called before the lua is reloaded
---
function ENT:onPreLuaReload() end

---
---@ENV SHARED
---* Called after the lua is reloaded
---
function ENT:onPostLuaReload() end

---
---@ENV SHARED
---@param delta number
---* Called every update tick
---
function ENT:update(delta) end

---
---@ENV SHARED
---@param entity Entity
---* Called when an entity touches another entity (requires physics)
---
function ENT:onTouchStart(entity) end

---
---@ENV SHARED
---@param entity Entity
---* Called when an entity stops touching another entity (requires physics)
---
function ENT:onTouchEnd(entity) end

---
---@ENV SHARED
---@param entity Entity
---* Called when an entity starts grabbing this entity
---
function ENT:onGrabStart(entity) end

---
---@ENV SHARED
---@param entity Entity
---* Called when an entity stops grabbing this entity
---
function ENT:onGrabEnd(entity) end

---
---@ENV SHARED
---* Called when the entity is being removed
---
function ENT:onDestroy() end

---
---@ENV SERVER
---@param ent Entity
---* Triggered when a entity presses USE
---
function ENT:onUse(ent) end

---
---@ENV SERVER
---@param ent Entity
---* Triggered when a entity cancels USE (only on MENU mode)
---
function ENT:onUseCancel(ent) end

---
---@ENV SERVER
---@param packet Packet
---* Triggered when the server transmits an update
---
function ENT:onNetWrite(packet) end

---
---@ENV SERVER
---@param id string
---@param hasSignal boolean
---* Triggered when the wire emits a signal
---
function ENT:onWireIOEmit(id, hasSignal) end

---
---@ENV SERVER
---@param id string
---* Triggered when the entity is connected to the wire IO
---
function ENT:onWireIOConnected(id) end

---
---@ENV SERVER
---@param id string
---* Triggered when the entity is disconnected from the wire IO
---
function ENT:onWireIODisconnected(id) end

---
---@ENV CLIENT
---@param player Player
---* Triggered a use viewer player is added
---
function ENT:onUseViewerAdded(player) end

---
---@ENV CLIENT
---@param player Player
---* Triggered a use viewer player is removed
---
function ENT:onUseViewerRemoved(player) end

---
---@ENV CLIENT
---@param item ITEM
---@param slot number
---@param mover Entity
---* If the entity should accept the item on the given slot by the given entity.
---* If method not defined, by default it accepts all items.
---
function ENT:acceptItem(item, slot, mover) end

---
---@ENV CLIENT
---@param slot number
---* Triggered when a slot is updated
---
function ENT:onStorageUpdate(slot) end

---
---@ENV SERVER
---@param id number
---@return number
---* Called to see if the entity has any power available
---
function ENT:onPowerAvailable(id) end

---
---@ENV SERVER
---@param id number
---@param amount number
---* Called when power is drained
---
function ENT:onPowerDrain(id, amount) end

---
---@ENV SERVER
---@param id number
---* Called when a power network is connected to the entity
---
function ENT:onPowerConnected(id) end

---
---@ENV SERVER
---@param id number
---* Called when a power network is disconnected from the entity
---
function ENT:onPowerDisconnected(id) end

---
---@ENV CLIENT
---@param id string
---@param packet Packet
---* Called when the entity recieves a net packet from the server
---
function ENT:onNetPacket(id, packet) end

---
---@ENV SERVER
---@param id string
---@param packet Packet
---@param ply Player
---* Called when the server recieves a net packet from the player (client)
---
function ENT:onNetPacket(id, packet, ply) end

---
---@ENV CLIENT
---* Called every draw
---
function ENT:draw() end
