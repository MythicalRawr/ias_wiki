---@meta

---
---@class world
---* world's entry class.
---
world = {}

---
---@env SERVER
---@param class string
---@param parent? ENT "Default: nil"
---@return ENT
---* Creates and spawns a new entity on the world
---
function world:create(class, parent)
end

---
---@env SHARED
---@param id number
---@return ENT
---* Finds an entity in the world by id
---
function world:find(id)
end

---
---@env SHARED
---@param class string
---@return ENT[]
---* Finds entities in the world by class type (EX: entity_ship)
---
function world:findByClass(class)
end

---
---@env SHARED
---@param pos Vector
---@param distance number
---@return ENT[]
---* Finds entities on the world in the given square size
---
function world:findInBBOX(pos, distance)
end

---
---@env SHARED
---@param class string
---@param pos Vector
---@param distance number
---@return ENT[]
---* Finds entities on the world in the given square size and filters by the given class (EX: entity_ship)
---
function world:findInBBOXByClass(class, pos, distance)
end

---
---@env SHARED
---@param from Vector
---@param to Vector
---@return ENT
---* Do a raycast to find an entity between 2 points
---
function world:raycast(from, to)
end

---
---@env CLIENT
---@param pos Vector
---@param speaker string
---@param msg string
---@param color? Color "Default: white"
---@param groupid? number "Default: 0"
---* Creates a client side 3d chat text
---
function world:add3DText(pos, speaker, msg, color, groupid)
end

---
---@env CLIENT
---@param speaker string
---@param msg string
---@param color? Color "Default: white"
---* Creates a client side chat text
---
function world:add3DText(speaker, msg, color)
end

---
---@env CLIENT
---@param groupid number
---* Clears all the messaged with that group ID (3d only)
---
function world:clearGroupID(groupid)
end

---
---@env SERVER
---@param pos Vector
---@param speaker string
---@param msg string
---@param color? Color "Default: white"
---@param groupid? number "Default: 0"
---@param distance? number "Default: -1 (global)"
---* Creates a 3D chat on the given position to all players
---* Distance controls how readable the text is
---
function world:broadcast3DChat(pos, speaker, msg, color, groupid, distance)
end

---
---@env SERVER
---@param pos Vector
---@param speaker string
---@param msg string
---@param distance? number "Default: -1 (global)"
---@param color? Color "Default: white"
---* Creates a chat on the given position to all players
---* Distance controls how readable the text is
---
function world:broadcastChat(pos, speaker, msg, distance, color)
end

---
---@env SERVER
---@param building Entity
---@return PathFinder
---* Creates a PathFinder object for the given building
---
function world:createPathFinder(building)
end

---
---@env SHARED
---@param id string
---@return table
---* Gets the given item id settings
---
function world:getItemSettings(id)
end

---
---@env SHARED
---@param id string
---@return WorkshopMOD
---* Returns the mod with the given id, if found
---
function world:getMod(id)
end
