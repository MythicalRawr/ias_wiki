---@meta

---
---resources's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class resources
resources = {}

---
---@ENV SHARED
---@see MOD:onLoad
---@param path string
---* Marks the given file for pre-loading
---
function resources:preLoad(path) end

---
---@ENV SHARED
---@see MOD:onLoad
---@param folder string
---* Marks the given folder for pre-loading
---
function resources:preLoadFolder(folder) end

---
---@ENV CLIENT
---@param path string
---@return Sound
---* Returns a Sound object if loaded successfully, you should use preLoad on Mod:onLoad() to pre-load the sound and not block the client
---
function resources:getSound(path) end

---
---@ENV CLIENT
---@param path string
---@return Texture
---* Returns a Texture object if loaded successfully, you should use preLoad on Mod:onLoad() to pre-load the texture and not block the client
---
function resources:getTexture(path) end

---
---@ENV SHARED
---@param path string
---@return Model
---* Returns a Model object if loaded successfully, you should use addModel on Mod:onLoad() to pre-load the model mesh and not block the client
---
function resources:getModel(path) end
