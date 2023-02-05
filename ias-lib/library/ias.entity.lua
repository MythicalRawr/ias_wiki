---@meta

---
---@class Entity
---* Entity's entry class
---
Entity = {}

---
---@env SHARED
---@return number
---* Returns the unique ent id
---
function Entity:ID() end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is still valid on the game (ex: becomes false after calling :destroy())
---
function Entity:isValid() end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is destructible
---
function Entity:isDestructible() end

---
---@env SHARED
---@return number
---* Returns the ent health
---
function Entity:getHealth() end

---
---@env SHARED
---@return USE
---* Returns the ent use type
---
function Entity:getUseType() end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is usable
---
function Entity:isUsable() end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is grabbable
---
function Entity:isGrabbable() end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is powered
---
function Entity:isPowered() end

---
---@env SHARED
---@deprecated Might get changed to server side only
---@param slots number
---* Marks the ent as a storage with the given max slots.
---* ⚠️Needs to be replicated on client⚠️
---
function Entity:setStorage(slots) end

---
---@env SHARED
---@return boolean
---* Returns true if the ent stores items or not (aka has inventory)
---
function Entity:isStorage() end

---
---@env SHARED
---@return boolean
---* Returns true if a player can see the entity
---
function Entity:isBeingSeen() end

---
---@env SHARED
---@param id number
---@return boolean
---* Returns true if the entity can see the given id
---
function Entity:canSeePlayer(id) end

---
---@env SHARED
---@return table
---* Returns the items in the ent storage
---
function Entity:getStorageItems() end

---
---@env SHARED
---@param slot number
---@param count number
---@return boolean
---* Returns true if you can add an item on the given slot with the given amount
---
function Entity:canAddItem(slot, count) end

---
---@env SHARED
---@param slot number
---@return number
---* Returns the total amount of the item on the slot
---
function Entity:getItemCount(slot) end

---
---@env SHARED
---@param id string
---@return number
---* Returns the total amount of the item on the storage by id
---
function Entity:getItemCountById(id) end

---
---@env SHARED
---@return number
---* Returns the first available slot index
---
function Entity:getAvailableSlot() end

---
---@env SHARED
---@param id string
---@param amount? number "Defaults: 1"
---@return number
---* Returns the available slot index by id
---
function Entity:getAvailableSlotById(id, amount) end

---
---@env SHARED
---@param id string
---@return number[]
---* Returns the slots where the given item id is present
---
function Entity:findItemSlots(id) end

---
---@env SHARED
---@param slot number
---@return boolean
---* Returns true if the storage has an item on the given slot
---
function Entity:hasItem(slot) end

---
---@env SHARED
---@param id string
---@return boolean
---* Returns true if the storage has the given id
---
function Entity:hasItemById(id) end

---
---@env SHARED
---@param index number
---@return ITEM
---* Returns the item by index
---
function Entity:getItem(index) end

---
---@env SHARED
---@return Vector
---* Returns the ent position
---
function Entity:getPos() end

---
---@env SHARED
---@param pos Vector
---* Sets the position of the ent
---
function Entity:setPos(pos) end

---
---@env SHARED
---@return Vector
---* Returns the velocity of the ent (physics)
---
function Entity:getVelocity() end

---
---@env SHARED
---@param vel Vector
---* Sets the velocity of the ent (physics)
---
function Entity:setVelocity(vel) end

---
---@env SHARED
---@return Vector3
---* Returns the scale of the ent
---
function Entity:getScale() end

---
---@env SHARED
---@param scale Vector3
---* Sets the scale of the ent
---
function Entity:setScale(scale) end

---
---@env SHARED
---@return Vector
---* Returns the ent local position (relative to the parent)
---
function Entity:getLocalPos() end

---
---@env SHARED
---@param pos Vector
---* Sets the position of the ent (relative to the parent)
---
function Entity:setLocalPos(pos) end

---
---@env SHARED
---@return Vector
---* Returns the ent rotation in degrees
---
function Entity:getRotation() end

---
---@env SHARED
---@param rot Vector
---* Sets the rotation of the ent in degrees
---
function Entity:setRotation(rot) end

---
---@env SHARED
---@param distance? number "Defaults: 0"
---@return Vector
---* Returns ent forward facing position
---
function Entity:forward(distance) end

---
---@env SHARED
---@return Vector
---* Returns ent left facing position
---
function Entity:left() end

---
---@env SHARED
---@return Model
---* Returns ent model mesh
---
function Entity:getModel() end

---
---@env SHARED
---@return Entity
---* Returns the parent ent (should be checked with hasParent first)
---
function Entity:getParent() end

---
---@env SHARED
---@return boolean
---* Returns true if the ent has a parent
---
function Entity:hasParent() end

---
---@env SHARED
---@return string
---* Returns the ent class type
---
function Entity:getType() end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is buildable
---
function Entity:isBuilding() end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is a player
---
function Entity:isPlayer() end

---
---@env SHARED
---@return Tile
---* Returns the tile under the ent (needs setUseTile set!)
---
function Entity:getTile() end

---
---@env SHARED
---@param pos Vector
---@return Tile
---* Returns the tile on the given position under the ent (needs to be a buildable type!)
---
function Entity:getTileByPos(pos) end

---
---@env SHARED
---@param slot number
---@return boolean
---* Returns true if the item on the given slot was droped
---
function Entity:dropItem(slot) end

---
---@env CLIENT
---@param id string
---@param packet Packet
---@param reliable? boolean "Defaults: true"
---* Sends the given packet to the server
---
function Entity:sendPacket(id, packet, reliable) end

---
---@env CLIENT
---@param hint string
---@param texture Texture
---@deprecated TODO
---* Sets the cursor hint & texture when the user hovers the ent
---
function Entity:setUseHint(hint, texture) end

---
---@env SERVER
---* Removes the ent from the world
---
function Entity:remove() end

---
---@env SERVER
---@param health number
---* Sets the ent health
---
function Entity:setHealth(health) end

---
---@env SERVER
---@param damage number
---@param attacker? Entity "Defaults: WORLD"
---* Damages the entity
---
function Entity:takeDamage(damage, attacker) end

---
---@env SERVER
---@param power number
---@return boolean
---* Uses the given ammount of power (ent needs to be marked with setUsesPower) and returns true if successful
---
function Entity:usePower(power) end

---
---@env SERVER
---@param grab boolean
---* Allows the ent to be grabbed or not
---
function Entity:setGrabbable(grab) end

---
---@env SERVER
---@param id string
---@param amount? number "Defaults: 1"
---@param slot? number "Defaults: -1"
---@param metadata? table "Defaults: nil"
---@return boolean
---* Adds the given item id to the ent storage (ent needs to be marked with setStorage)
---
function Entity:addItem(id, amount, slot, metadata) end

---
---@env SERVER
---@param slot number
---@param amount? number "Removes the whole item if not set"
---@return boolean
---* Removes the given amount (if not set, the whole item) on the given slot
---
function Entity:removeItem(slot, amount) end

---
---@env SERVER
---@param id string
---@param amount number
---@return boolean
---* Removes the given amount by item id
---
function Entity:removeItemById(id, amount) end

---
---@env SERVER
---@param to Entity
---@param slot number
---@param newSlot number
---@return boolean
---* Moves an item to a different inventory
---
function Entity:moveItem(to, slot, newSlot) end

---
---@env SERVER
---@param slot number
---@param pos Vector
---@return boolean
---* Drops the given item slot on the given pos
---
function Entity:dropItem(slot, pos) end

---
---@env SERVER
---@param id number
---@deprecated TODO: IMPROVE THIS DESCRIPTION
---* Add the ent id as a use viewer
---
function Entity:addUseViewer(id) end

---
---@env SERVER
---@param id number
---@deprecated TODO: IMPROVE THIS DESCRIPTION
---* Remove the ent id as a use viewer
---
function Entity:removeUseViewer(id) end

---
---@env SERVER
---@param id number
---@return boolean
---* Returns true if the given ent id is registered as a use viewer
---
function Entity:hasUseViewer(id) end

---
---@env SERVER
---@param ent Entity
---* Programmatically "uses" the given ent (if marked as a use viewer)
---
function Entity:use(ent) end

---
---@env SERVER
---@param id string
---@param ply Player
---@param packet Packet
---@param reliable? boolean "Defaults: true"
---* Send a packet to the given player with the given id
---
function Entity:sendPacket(id, ply, packet, reliable) end

---
---@env SERVER
---@param id string
---@param packet Packet
---@param reliable? boolean "Defaults: true"
---* Broadcast a packet to all the players
---
function Entity:broadcastPacket(id, packet, reliable) end

---
---@env SERVER
---@param ent Entity
---* Sets the entity parent
---
function Entity:setParent(ent) end

---
---@env SHARED
---@param mdl Model
---* Sets the entity model
---
function Entity:setModel(mdl) end

---
---@env SHARED
---@param phys? PHYSICS "Defaults: PHYSICS.DYNAMIC"
---@param block? boolean "Defaults: false"
---* Sets the entity physics type
---* If block is set, the VIS will be blocked by it
---
function Entity:initPhysics(phys, block) end

---
---@env SHARED
---@param radius number
---@param phys? PHYSICS "Defaults: PHYSICS.DYNAMIC"
---@param block? boolean "Defaults: false"
---* Sets the entity physics with the given radius
---* If block is set, the VIS will be blocked by it
---
function Entity:initCirclePhysics(radius, phys, block) end

---
---@env SHARED
---@param mass number
---* Sets the entity physics mass
---
function Entity:setMass(mass) end

---
---@env SHARED
---@param name string
---@param trigger boolean
---* Sets the entity physics mesh id as a trigger
---
function Entity:setMeshTrigger(name, trigger) end

---
---@env SHARED
---@param friction number
---* Sets the entity physics friction
---
function Entity:setFriction(friction) end

---
---@env SHARED
---@param damp number
---* Sets the entity physics linear damping
---
function Entity:setLinearDamping(damp) end

---
---@env SHARED
---@param damp number
---* Sets the entity physics angular damping
---
function Entity:setAngularDamping(damp) end

---
---@env SHARED
---@param type PHYSICS
---* Updates the entity physics body type
---
function Entity:setBodyType(type) end

---
---@env SERVER
---@return Vector
---* Returns the current mouse world position
---
function Entity:getWorldMousePos() end

---
---@env CLIENT
---@param disable boolean
---* Disables the snapshot interpolation, usefull for teleporting things.
---
function Entity:disableInterpolation(disable) end

---
---@env CLIENT
---@param disable boolean
---* Disables the fade memory, usefull for teleporting things.
---
function Entity:disableMemory(disable) end

---
---@env CLIENT
---@param name string
---@param loop? boolean "Defaults: false"
---@param speed? number "Defaults: 1"
---@return boolean "If the animation was started successfully"
---* Plays an animation on the entity
---
function Entity:playAnimation(name, loop, speed) end

---
---@env CLIENT
---@param name string
---@return boolean "If the animation was stopped successfully"
---* Stops an animation on the entity
---
function Entity:stopAnimation(name) end

---
---@env CLIENT
---@return boolean "Playing a animation"
---* Returns true if playing a animation
---
function Entity:isAnimating() end

---
---@env CLIENT
---@return table "The animation list"
---* Returns the available animations on the model
---
function Entity:getAnimations() end

---
---@env CLIENT
---@return table "The playing animation list"
---* Returns the playing animations on the model
---
function Entity:getAnimationsPlaying() end

---
---@env CLIENT
---@return table "The bones list"
---* Returns the available bones inside of the model based on the first animation sequence
---
function Entity:getBones() end

---
---@env CLIENT
---@param name string
---@return Bone "The bone"
---* Returns a bone object that refers to an entity bone with the provided name
---
function Entity:getBone(name) end

---
---@env SHARED
---@param mode boolean
---* enables or disables power use at an entity
---
function Entity:setUsesPower(mode) end

---
---@env SHARED
---@param mode boolean
---* enables or disables tile use at an entity
---
function Entity:setUsesTile(mode) end

---
---@env SHARED
---@param mode boolean
---* enables or disables gas use at an entity
---
function Entity:setUsesGas(mode) end

---
---@env SERVER
---@param network GasNetwork
---* called when a gas pipe is connected to the entity
---
function Entity:onGasConnected(network) end

---
---@env SERVER
---@param network GasNetwork
---* called when a gas pipe is disconnected from the entity
---
function Entity:onGasDisconnected(network) end

---
---@env SERVER
---@param network PowerNetwork
---* called when a power cable is connected to the entity
---
function Entity:onPowerConnected(network) end

---
---@env SERVER
---@param network PowerNetwork
---* called when a power cable is disconnected from the entity
---
function Entity:onPowerDisconnected(network) end
