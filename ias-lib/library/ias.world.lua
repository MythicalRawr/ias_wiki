---@meta

---
---world's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class world
world = {}

---
---@ENV SERVER
---@param class string
---@param parent? ENT
---@return ENT
---* Creates and spawns a new entity on the world
---
function world:create(class, parent) end


---
---@ENV SHARED
---@param id number
---@return ENT
---* Finds an entity in the world by id
---
function world:find(id) end

---
---@ENV SHARED
---@param class string
---@return ENT[]
---* Finds entities in the world by class type (EX: entity_ship)
---
function world:findByClass(class) end

---
---@ENV SHARED
---@param pos Vector
---@param distance number
---@return ENT[]
---* Finds entities in the world in a sphere radius
---
function world:findInSphere(pos, distance) end

---
---@ENV SHARED
---@param class string
---@param pos Vector
---@param distance number
---@return ENT[]
---* Finds entities in the world in a sphere radius and filters by the given class (EX: entity_ship)
---
function world:findInSphereByClass(class, pos, distance) end

---
---@ENV CLIENT
---@param pos Vector3
---@param speaker string
---@param msg string
---@param color? Color
---@param groupid? number
---* Creates a client side 3d chat text
---
function world:add3DText(pos, speaker, msg, color, groupid) end

---
---@ENV CLIENT
---@param speaker string
---@param msg string
---@param color? Color
---* Creates a client side chat text
---
function world:add3DText(speaker, msg, color) end

---
---@ENV CLIENT
---@param groupid number
---* Clears all the messaged with that group ID (3d only)
---
function world:clearGroupID(groupid) end

---
---@ENV SERVER
---@param pos Vector3
---@param speaker string
---@param msg string
---@param color? Color
---@param groupid? number
---@param distance? number
---* Creates a 3D chat on the given position to all players
---* Distance controls how readable the text is
---
function world:broadcast3DChat(pos, speaker, msg, color, groupid, distance) end

---
---@ENV SERVER
---@param pos Vector3
---@param speaker string
---@param msg string
---@param distance? number
---@param color? Color
---* Creates a chat on the given position to all players
---* Distance controls how readable the text is
---
function world:broadcastChat(pos, speaker, msg, distance, color) end
