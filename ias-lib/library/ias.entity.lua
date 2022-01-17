---@meta

---
---Entity's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Entity
Entity = {}

---
---@ENV SHARED
---@return number
---* Returns the unique ent id
---
function Entity:ID() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the ent is still valid on the game (ex: becomes false after calling :destroy())
---
function Entity:isValid() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the ent is destructible
---
function Entity:isDestructible() end

---
---@ENV SHARED
---@return number
---* Returns the ent health
---
function Entity:getHealth() end

---
---@ENV SHARED
---@return USE
---* Returns the ent use type
---
function Entity:getUseType() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the ent is usable
---
function Entity:isUsable() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the ent is grabbable
---
function Entity:isGrabbable() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the ent is powered
---
function Entity:isPowered() end

---
---@ENV SHARED
---@deprecated Might get changed to server side only
---@param slots number
---* Marks the ent as a storage with the given max slots.
---* ⚠️Needs to be replicated on client⚠️
---
function Entity:setStorage(slots) end

---
---@ENV SHARED
---@return boolean
---* Returns true if the ent stores items or not (aka has inventory)
---
function Entity:isStorage() end

---
---@ENV SHARED
---@return boolean
---* Returns true if a player can see the entity
---
function Entity:isBeingSeen() end

---
---@ENV SHARED
---@param id number
---@return boolean
---* Returns true if the entity can see the given id
---
function Entity:canSeePlayer(id) end

---
---@ENV SHARED
---@return table
---* Returns the items in the ent storage
---
function Entity:getStorageItems() end

---
---@ENV SHARED
---@param slot number
---@param count number
---@return boolean
---* Returns true if you can add an item on the given slot with the given amount
---
function Entity:canAddItem(slot, count) end

---
---@ENV SHARED
---@param slot number
---@return number
---* Returns the total amount of the item on the slot
---
function Entity:getItemCount(slot) end

---
---@ENV SHARED
---@param id string
---@return number
---* Returns the total amount of the item on the storage by id
---
function Entity:getItemCountById(id) end

---
---@ENV SHARED
---@return number
---* Returns the an available slot index
---
function Entity:getAvailableSlot() end

---
---@ENV SHARED
---@param id string
---@return number
---* Returns the an available slot index by id
---
function Entity:getAvailableSlotById(id) end

---
---@ENV SHARED
---@param id string
---@return number[]
---* Returns the slots where the given item id is present
---
function Entity:findItemSlots(id) end

---
---@ENV SHARED
---@param id string
---@return boolean
---* Returns true if the storage has the given id
---
function Entity:hasItem(id) end

---
---@ENV SHARED
---@param index number
---@return ITEM
---* Returns the item by index
---
function Entity:getItem(index) end

---
---@ENV SHARED
---@return Vector
---* Returns the ent position
---
function Entity:getPos() end

---
---@ENV SHARED
---@param pos Vector
---* Sets the position of the ent
---
function Entity:setPos(pos) end

---
---@ENV SHARED
---@return Vector
---* Returns the velocity of the ent (physics)
---
function Entity:getVelocity() end

---
---@ENV SHARED
---@param vel Vector
---* Sets the velocity of the ent (physics)
---
function Entity:setVelocity(vel) end

---
---@ENV SHARED
---* Returns the scale of the ent
---
function Entity:getScale() end

---
---@ENV SHARED
---@param scale Vector
---* Sets the scale of the ent
---
function Entity:setScale(scale) end

---
---@ENV SHARED
---@return Vector
---* Returns the ent local position (relative to the parent)
---
function Entity:getLocalPos() end

---
---@ENV SHARED
---@param pos Vector
---* Sets the position of the ent (relative to the parent)
---
function Entity:setLocalPos(pos) end

---
---@ENV SHARED
---@return Vector
---* Returns the ent rotation in degrees
---
function Entity:getRotation() end

---
---@ENV SHARED
---@param rot Vector
---* Sets the rotation of the ent in degrees
---
function Entity:setRotation(rot) end

---
---@ENV SHARED
---@param distance? number
---@return Vector
---* Returns ent forward facing position
---
function Entity:forward(distance) end

---
---@ENV SHARED
---@return Vector
---* Returns ent left facing position
---
function Entity:left() end

---
---@ENV SHARED
---@return Model
---* Returns ent model mesh
---
function Entity:getModel() end

---
---@ENV SHARED
---@see Entity:getParent
---@return Entity
---* Returns the parent ent (should be checked with hasParent first)
---
function Entity:getParent() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the ent has a parent
---
function Entity:hasParent() end

---
---@ENV SHARED
---@return string
---* Returns the ent class type
---
function Entity:getType() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the ent is buildable
---
function Entity:isBuilding() end

---
---@ENV SHARED
---@return Tile
---* Returns the tile under the ent (needs setUseTile set!)
---
function Entity:getTile() end

---
---@ENV SHARED
---@param pos Vector
---@return Tile
---* Returns the tile on the given position under the ent (needs to be a buildable type!)
---
function Entity:getTileByPos(pos) end

---
---@ENV CLIEntity
---@param slot number
---@return boolean
---* Returns true if the item on the given slot was droped
---
function Entity:dropItem(slot) end

---
---@ENV CLIEntity
---@param id string
---@param packet Packet
---@param reliable? boolean
---* Sends the given packet to the server
---
function Entity:sendPacket(id, packet, reliable) end

---
---@ENV CLIEntity
---@param hint string
---@param texture Texture
---@deprecated TODO
---* Sets the cursor hint & texture when the user hovers the ent
---
function Entity:setUseHint(hint, texture) end

---
---@ENV SERVER
---* Removes the ent from the world
---
function Entity:remove() end

---
---@ENV SERVER
---@param health number
---* Sets the ent health
---
function Entity:setHealth(health) end

---
---@ENV SERVER
---@param power number
---@return boolean
---* Uses the given ammount of power (ent needs to be marked with setUsesPower) and returns true if successful
---
function Entity:usePower(power) end

---
---@ENV SERVER
---@param grab boolean
---* Allows the ent to be grabbed or not
---
function Entity:setGrabbable(grab) end

---
---@ENV SERVER
---@param id string
---@param amount? number
---@param slot? number
---@return boolean
---* Adds the given item id to the ent storage (ent needs to be marked with setStorage)
---
function Entity:addItem(id, amount, slot) end

---
---@ENV SERVER
---@param slot number
---@param amount? number
---@return boolean
---* Removes the given amount (if not set, the whole item) on the given slot
---
function Entity:removeItem(slot, amount) end

---
---@ENV SERVER
---@param id string
---@param amount number
---@return boolean
---* Removes the given amount by item id
---
function Entity:removeItemById(id, amount) end

---
---@ENV SERVER
---@param to Entity
---@param slot number
---@param newSlot number
---@return boolean
---* Moves an item to a different inventory
---
function Entity:moveItem(to, slot, newSlot) end

---
---@ENV SERVER
---@param slot number
---@param pos Vector
---@return boolean
---* Drops the given item slot on the given pos
---
function Entity:dropItem(slot, pos) end

---
---@ENV SERVER
---@param id number
---@deprecated TODO: IMPROVE THIS DESCRIPTION
---* Add the ent id as a use viewer
---
function Entity:addUseViewer(id) end

---
---@ENV SERVER
---@param id number
---@deprecated TODO: IMPROVE THIS DESCRIPTION
---* Remove the ent id as a use viewer
---
function Entity:removeUseViewer(id) end

---
---@ENV SERVER
---@param id number
---@return boolean
---@deprecated TODO: IMPROVE THIS DESCRIPTION
---* Returns true if the given ent id is registered as a use viewer
---
function Entity:hasUseViewer(id) end

---
---@ENV SERVER
---@param ent Entity
---* Programmatically "uses" the given ent (if marked as a use viewer)
---
function Entity:use(ent) end

---
---@ENV SERVER
---@see Entity:broadcastPacket
---@param id string
---@param ply Player
---@param packet Packet
---@param reliable? boolean
---* Send a packet to the given player with the given id
---
function Entity:sendPacket(id, ply, packet, reliable) end

---
---@ENV SERVER
---@param id string
---@param packet Packet
---@param reliable? boolean
---* Broadcast a packet to all the players
---
function Entity:broadcastPacket(id, packet, reliable) end

---
---@ENV SERVER
---@param ent Entity
---* Sets the entity parent
---
function Entity:setParent(ent) end

---
---@ENV SHARED
---@param mdl Model
---* Sets the entity model
---
function Entity:setModel(mdl) end

---
---@ENV SHARED
---@param phys? PHYSICS
---@param block? boolean
---* Sets the entity physics type
---* If block is set, the VIS will be blocked by it
---
function Entity:initPhysics(phys, block) end

---
---@ENV SHARED
---@param phys? PHYSICS
---@param radius? number
---@param block? boolean
---* Sets the entity physics with the given radius
---* If block is set, the VIS will be blocked by it
---
function Entity:initCirclePhysics(phys, radius, block) end

---
---@ENV SHARED
---@param mass number
---* Sets the entity physics mass
---
function Entity:setMass(mass) end

---
---@ENV SHARED
---@param name string
---@param trigger boolean
---* Sets the entity physics mesh id as a trigger
---
function Entity:setMeshTrigger(name, trigger) end

---
---@ENV SHARED
---@param friction number
---* Sets the entity physics friction
---
function Entity:setFriction(friction) end

---
---@ENV SHARED
---@param damp number
---* Sets the entity physics linear damping
---
function Entity:setLinearDamping(damp) end

---
---@ENV SHARED
---@param damp number
---* Sets the entity physics angular damping
---
function Entity:setAngularDamping(damp) end

---
---@ENV SHARED
---@param type PHYSICS
---* Updates the entity physics body type
---
function Entity:setBodyType(type) end

---
---@ENV SERVER
---@return Vector
---* Returns the current mouse world position
---
function Entity:getWorldMousePos() end

---
---@ENV CLIENT
---@param disable boolean
---* Disables the snapshot interpolation, usefull for teleporting things.
---
function Entity:disableInterpolation(disable) end

---
---@ENV CLIENT
---@param disable boolean
---* Disables the fade memory, usefull for teleporting things.
---
function Entity:disableMemory(disable) end
