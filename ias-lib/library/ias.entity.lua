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
function Entity:ID()
end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is still valid on the game (ex: becomes false after calling :destroy())
---
function Entity:isValid()
end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is destructible
---
function Entity:isDestructible()
end

---
---@env SHARED
---@return number
---* Returns the ent health
---
function Entity:getHealth()
end

---
---@env SHARED
---@return USE
---* Returns the ent use type
---
function Entity:getUseType()
end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is usable
---
function Entity:isUsable()
end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is grabbable
---
function Entity:isGrabbable()
end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is powered
---
function Entity:isPowered()
end

---
---@env SHARED
---@deprecated Might get changed to server side only
---@param slots number
---* Marks the ent as a storage with the given max slots.
---* ⚠️Needs to be replicated on client⚠️
---
function Entity:setStorage(slots)
end

---
---@env SHARED
---@return boolean
---* Returns true if the ent stores items or not (aka has inventory)
---
function Entity:isStorage()
end

---
---@env SHARED
---@return Storage
---* Returns the storage wrapper
---
function Entity:getStorage()
end

---
---@env SHARED
---@return boolean
---* Returns true if a player can see the entity
---
function Entity:isBeingSeen()
end

---
---@env SHARED
---@param id number
---@return boolean
---* Returns true if the entity can see the given id
---
function Entity:canSeePlayer(id)
end

---
---@env SHARED
---@return Vector
---* Returns the ent position
---
function Entity:getPos()
end

---
---@env SHARED
---@param pos Vector
---* Sets the position of the ent
---
function Entity:setPos(pos)
end

---
---@env SHARED
---@return Vector
---* Returns the velocity of the ent (physics)
---
function Entity:getVelocity()
end

---
---@env SHARED
---@param vel Vector
---* Sets the velocity of the ent (physics)
---
function Entity:setVelocity(vel)
end

---
---@env SHARED
---@return Vector3
---* Returns the scale of the ent
---
function Entity:getScale()
end

---
---@env SHARED
---@param scale Vector3
---* Sets the scale of the ent
---
function Entity:setScale(scale)
end

---
---@env SHARED
---@return Vector
---* Returns the ent local position (relative to the parent)
---
function Entity:getLocalPos()
end

---
---@env SHARED
---@param pos Vector
---* Sets the position of the ent (relative to the parent)
---
function Entity:setLocalPos(pos)
end

---
---@env SHARED
---@return Vector
---* Returns the ent rotation in degrees
---
function Entity:getRotation()
end

---
---@env SHARED
---@param rot number
---* Sets the rotation of the ent in degrees
---
function Entity:setRotation(rot)
end

---
---@env SHARED
---@param distance? number "Defaults: 0"
---@return Vector
---* Returns ent forward facing position
---
function Entity:forward(distance)
end

---
---@env SHARED
---@return Vector
---* Returns ent left facing position
---
function Entity:left()
end

---
---@env SHARED
---@return Model
---* Returns ent model mesh
---
function Entity:getModel()
end

---
---@env SHARED
---@return Entity
---* Returns the parent ent (should be checked with hasParent first)
---
function Entity:getParent()
end

---
---@env SHARED
---@return boolean
---* Returns true if the ent has a parent
---
function Entity:hasParent()
end

---
---@env SHARED
---@return string
---* Returns the ent class type
---
function Entity:getType()
end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is buildable
---
function Entity:isBuilding()
end

---
---@env SHARED
---@return boolean
---* Returns true if the ent is a player
---
function Entity:isPlayer()
end

---
---@env SHARED
---@return Tile
---* Returns the tile under the ent (needs setUseTile set!)
---
function Entity:getTile()
end

---
---@env SHARED
---@param pos Vector
---@return Tile
---* Returns the tile on the given position under the ent (needs to be a buildable type!)
---
function Entity:getTileByPos(pos)
end

---
---@env CLIENT
---@param id string
---@param packet Packet
---@param reliable? boolean "Defaults: true"
---* Sends the given packet to the server
---
function Entity:sendPacket(id, packet, reliable)
end

---
---@env CLIENT
---@param hint string
---@param texture Texture
---@deprecated TODO
---* Sets the cursor hint & texture when the user hovers the ent
---
function Entity:setUseHint(hint, texture)
end

---
---@env SERVER
---* Removes the ent from the world
---
function Entity:remove()
end

---
---@env SERVER
---@param health number
---* Sets the ent health
---
function Entity:setHealth(health)
end

---
---@env SHARED
---@return boolean
---* Returns true if the entity is alive
---
function Entity:isAlive()
end

---
---@env SERVER
---@param health number
---@hint @info "Entity needs to be alive to heal"
---* Heals the ent.
---
function Entity:heal(health)
end

---
---@env SERVER
---@param damage number
---@param attacker? Entity "Defaults: WORLD"
---* Damages the entity
---
function Entity:takeDamage(damage, attacker)
end

---
---@env SERVER
---@param power number
---@return boolean
---* Uses the given ammount of power (ent needs to be marked with setUsesPower) and returns true if successful
---
function Entity:usePower(power)
end

---
---@env SERVER
---@param grab boolean
---* Allows the ent to be grabbed or not
---
function Entity:setGrabbable(grab)
end

---
---@env SERVER
---@param id number
---@deprecated TODO: IMPROVE THIS DESCRIPTION
---* Add the ent id as a use viewer
---
function Entity:addUseViewer(id)
end

---
---@env SERVER
---@param id number
---@deprecated TODO: IMPROVE THIS DESCRIPTION
---* Remove the ent id as a use viewer
---
function Entity:removeUseViewer(id)
end

---
---@env SERVER
---@param id number
---@return boolean
---* Returns true if the given ent id is registered as a use viewer
---
function Entity:hasUseViewer(id)
end

---
---@env SERVER
---@param ent Entity
---* Programmatically "uses" the given ent (if marked as a use viewer)
---
function Entity:use(ent)
end

---
---@env SERVER
---@param id string
---@param ply Player
---@param packet Packet
---@param reliable? boolean "Defaults: true"
---* Send a packet to the given player with the given id
---
function Entity:sendPacket(id, ply, packet, reliable)
end

---
---@env SERVER
---@param id string
---@param packet Packet
---@param reliable? boolean "Defaults: true"
---* Broadcast a packet to all the players
---
function Entity:broadcastPacket(id, packet, reliable)
end

---
---@env SERVER
---@param ent Entity
---* Sets the entity parent
---
function Entity:setParent(ent)
end

---
---@env SHARED
---@param mdl Model
---* Sets the entity model
---
function Entity:setModel(mdl)
end

---
---@env SHARED
---@param phys? PHYSICS "Defaults: PHYSICS.DYNAMIC"
---@param block? boolean "Defaults: false"
---* Sets the entity physics type
---* If block is set, the VIS will be blocked by it
---
function Entity:initPhysics(phys, block)
end

---
---@env SHARED
---@param radius number
---@param phys? PHYSICS "Defaults: PHYSICS.DYNAMIC"
---@param block? boolean "Defaults: false"
---* Sets the entity physics with the given radius
---* If block is set, the VIS will be blocked by it
---
function Entity:initCirclePhysics(radius, phys, block)
end

---
---@env SHARED
---@param mass number
---* Sets the entity physics mass
---
function Entity:setMass(mass)
end

---
---@env SHARED
---@param name string
---@param trigger boolean
---* Sets the entity physics mesh id as a trigger
---
function Entity:setMeshTrigger(name, trigger)
end

---
---@env SHARED
---@return string
---* Gets the entity name, eg: entity_crate
---
function Entity:getName()
end

---
---@env SHARED
---@param friction number
---* Sets the entity physics friction
---
function Entity:setFriction(friction)
end

---
---@env SHARED
---@param damp number
---* Sets the entity physics linear damping
---
function Entity:setLinearDamping(damp)
end

---
---@env SHARED
---@param damp number
---* Sets the entity physics angular damping
---
function Entity:setAngularDamping(damp)
end

---
---@env SHARED
---@param type PHYSICS
---* Updates the entity physics body type
---
function Entity:setBodyType(type)
end

---
---@env SHARED
---@return Vector
---* Returns the current mouse world position
---
function Entity:getWorldMousePos()
end

---
---@env SHARED
---@return Vector
---* Returns the current mouse localized position
---
function Entity:getLocalMousePos()
end

---
---@env CLIENT
---@param disable boolean
---* Disables the snapshot interpolation, usefull for teleporting things.
---
function Entity:disableInterpolation(disable)
end

---
---@env CLIENT
---@param disable boolean
---* Disables the fade memory, usefull for teleporting things.
---
function Entity:disableMemory(disable)
end

---
---@env CLIENT
---@param name string
---@param loop? boolean "Defaults: false"
---@param speed? number "Defaults: 1"
---@return boolean "If the animation was started successfully"
---* Plays an animation on the entity
---
function Entity:playAnimation(name, loop, speed)
end

---
---@env CLIENT
---@param name string
---@return boolean "If the animation was stopped successfully"
---* Stops an animation on the entity
---
function Entity:stopAnimation(name)
end

---
---@env CLIENT
---@return boolean "Playing a animation"
---* Returns true if playing a animation
---
function Entity:isAnimating()
end

---
---@env CLIENT
---@return table "The animation list"
---* Returns the available animations on the model
---
function Entity:getAnimations()
end

---
---@env CLIENT
---@return table "The playing animation list"
---* Returns the playing animations on the model
---
function Entity:getAnimationsPlaying()
end

---
---@env CLIENT
---@return table "The bones list"
---* Returns the available bones inside of the model based on the first animation sequence
---
function Entity:getBones()
end

---
---@env CLIENT
---@param name string
---@return Bone "The bone"
---* Returns a bone object that refers to an entity bone with the provided name
---
function Entity:getBone(name)
end

---
---@env SERVER
---@param set boolean
---* Marks the entity to use power
---
function Entity:setUsesPower(set)
end

---
---@env SERVER
---@param set boolean
---* Marks the entity to use tile
---
function Entity:setUsesTile(set)
end

---
---@env SERVER
---@param set boolean
---* Marks the entity to use gas
---
function Entity:setUsesGas(set)
end

---
---@env SERVER
---@param network GasNetwork
---* called when a gas pipe is connected to the entity
---
function Entity:onGasConnected(network)
end

---
---@env SERVER
---@param network GasNetwork
---* called when a gas pipe is disconnected from the entity
---
function Entity:onGasDisconnected(network)
end

---
---@env SERVER
---@param network PowerNetwork
---* called when a power cable is connected to the entity
---
function Entity:onPowerConnected(network)
end

---
---@env SERVER
---@param network PowerNetwork
---* called when a power cable is disconnected from the entity
---
function Entity:onPowerDisconnected(network)
end

---
---@env SERVER
---@param vars table
---* called when a template is loaded that contains `vars` key
---
function Entity:onTemplateVariablesLoad(vars)
end

---@param set boolean
---* Marks the entity to use wire io
---
function Entity:setUsesWire(set)
end

---
---@env SERVER
---@returns table
---* called when a template is generated, if a table is returned it will be stored inside of the template json
---
function Entity:onTemplateVariablesSave()
end

---@param set USE
---* Sets the use type of the entity
---
function Entity:setUseType(set)
end
