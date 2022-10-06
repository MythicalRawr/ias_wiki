---@meta

---
---@class resources
---* resources's entry class.
---
resources = {}

---
---@env SHARED
---@param path string
---* Marks the given file for pre-loading
---
function resources:preLoad(path) end

---
---@env SHARED
---@param folder string
---* Marks the given folder for pre-loading
---
function resources:preLoadFolder(folder) end

---
---@env SHARED
---@param path? string "Default: Mod's folder"
---* Fixes the given path with the mod's path
---* @/textures/blabalba.png = c++ content
---* @otherMod/textures/blabalba.png = @otherMod's content
function resources:getContent(path) end

---
---@env CLIENT
---@param path string
---@return Sound
---* Returns a Sound object if loaded successfully, you should use preLoad on Mod:onLoad() to pre-load the sound and not block the client
---
function resources:getSound(path) end

---
---@env CLIENT
---@param path string
---@return Texture
---* Returns a Texture object if loaded successfully, you should use preLoad on Mod:onLoad() to pre-load the texture and not block the client
---
function resources:getTexture(path) end

---
---@env SHARED
---@param path string
---@return Model
---* Returns a Model object if loaded successfully, you should use addModel on Mod:onLoad() to pre-load the model mesh and not block the client
---
function resources:getModel(path) end
