---@meta

---
---@class ModelMesh
---* ModelMesh's entry class.
---
ModelMesh = {}

---
---@env SHARED
---@return boolean
---* Returns true if the mesh is valid
---
function ModelMesh:isValid() end

---
---@env SHARED
---@return string
---* Returns the mesh name
---
function ModelMesh:getName() end

---
---@env SHARED
---@param name string
---* Sets the mesh name
---
function ModelMesh:setName(name) end

---
---@env SHARED
---@param color Color
---* Sets the mesh color
---
function ModelMesh:setColor(color) end

---
---@env SHARED
---@return Color
---* Gets the mesh color
---
function ModelMesh:getColor() end

---
---@env SHARED
---@param rot Vector3
---* Sets the mesh rotation in degrees
---
function ModelMesh:setRotation(rot) end

---
---@env SHARED
---@return number
---* Gets the mesh rotation in degrees
---
function ModelMesh:getRotation() end

---
---@env SHARED
---@param pos Vector
---* Sets the mesh position
---
function ModelMesh:setPosition(pos) end

---
---@env SHARED
---@return Vector
---* Gets the mesh position
---
function ModelMesh:getPosition() end

---
---@env SHARED
---@param pos Vector
---* Sets the mesh uv position
---
function ModelMesh:setUV(pos) end

---
---@env SHARED
---@return Vector
---* Gets the mesh uv position
---
function ModelMesh:getUV() end

---
---@env SHARED
---@param scale Vector3
---* Sets the mesh scale
---
function ModelMesh:setScale(scale) end

---
---@env SHARED
---@return Vector3
---* Gets the mesh scale
---
function ModelMesh:getScale() end
