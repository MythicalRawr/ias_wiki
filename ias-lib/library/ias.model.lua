---@meta

---
---@class Model
---* Model's entry class.
---
Model = {}

---
---@env SHARED
---@return boolean
---* Returns true if the model is valid
---
function Model:isValid() end

---
---@env SHARED
---@param name string
---@return ModelMesh
---* Returns the model mesh if found
---
function Model:getMesh(name) end

---
---@env SHARED
---@param mesh ModelMesh
---* Adds the mesh to the model
---
function Model:addMesh(mesh) end

---
---@env SHARED
---@return ModelMesh[]
---* Returns all the model meshes
---
function Model:getMeshes() end
