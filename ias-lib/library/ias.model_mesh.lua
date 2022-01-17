---@meta

---
---ModelMesh's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class ModelMesh
ModelMesh = {}

---
---@ENV SHARED
---@return boolean
---* Returns true if the mesh is valid
---
function ModelMesh:isValid() end

---
---@ENV SHARED
---@return string
---* Returns the mesh name
---
function ModelMesh:getName() end

---
---@ENV SHARED
---@param name string
---* Sets the mesh name
---
function ModelMesh:setName(name) end

---
---@ENV SHARED
---@param color Color
---* Sets the mesh color
---
function ModelMesh:setColor(color) end

---
---@ENV SHARED
---@return Color
---* Gets the mesh color
---
function ModelMesh:getColor() end

---
---@ENV SHARED
---@param rot number
---* Sets the mesh rotation in degrees
---
function ModelMesh:setRotation(rot) end

---
---@ENV SHARED
---@return number
---* Gets the mesh rotation in degrees
---
function ModelMesh:getRotation() end

---
---@ENV SHARED
---@param pos Vector
---* Sets the mesh position
---
function ModelMesh:setPosition(pos) end

---
---@ENV SHARED
---@return Vector
---* Gets the mesh position
---
function ModelMesh:getPosition() end

---
---@ENV SHARED
---@param pos Vector
---* Sets the mesh uv position
---
function ModelMesh:setUV(pos) end

---
---@ENV SHARED
---@return Vector
---* Gets the mesh uv position
---
function ModelMesh:getUV() end

---
---@ENV SHARED
---@param scale Vector3
---* Sets the mesh scale
---
function ModelMesh:setScale(scale) end

---
---@ENV SHARED
---@return Vector3
---* Gets the mesh scale
---
function ModelMesh:getScale() end
