---@meta

---
---Model's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Model
Model = {}

---
---@ENV SHARED
---@return boolean
---* Returns true if the model is valid
---
function Model:isValid() end

---
---@ENV SHARED
---@param name string
---@return ModelMesh
---* Returns the model mesh if found
---
function Model:getMesh(name) end

---
---@ENV SHARED
---@param mesh ModelMesh
---* Adds the mesh to the model
---
function Model:addMesh(mesh) end

---
---@ENV SHARED
---@return ModelMesh[]
---* Returns all the model meshes
---
function Model:getMeshes() end
