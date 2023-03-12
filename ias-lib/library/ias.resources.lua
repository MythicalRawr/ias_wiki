---@meta

---
---@class resources
---* resources's entry class.
---
resources = {}

---
---@env SHARED
---@param path string
---@param loadFlags? any
---* Marks the given file for pre-loading
---
function resources:preLoad(path, loadFlags)
end

---
---@env SHARED
---@param folder string
---* Marks the given folder for pre-loading
---
function resources:preLoadFolder(folder)
end

---
---@env SHARED
---@param path? string "Default: Mod's folder"
---* Fixes the given path with the mod's path
---* @/textures/blabalba.png = c++ content
---* @otherMod/textures/blabalba.png = @otherMod's content
function resources:getContent(path)
end

---
---@env CLIENT
---@param path string
---@param loadFlags? LOAD.SOUND_FLAGS
---@return Sound
---* Returns a Sound object if loaded successfully, you should use preLoad on Mod:onLoad() to pre-load the sound and not block the client
---
function resources:getSound(path, loadFlags)
end

---
---@env CLIENT
---@param url string
---@param loadFlags? LOAD.SOUND_FLAGS
---@hint @warning "If blocking is set, the sound will be destroyed after playing."
---@hint @error "Loop will not working if blocking is set"
---@return Sound
---* Returns a Sound object if loaded successfully.
---
function resources:getHTTPSound(url, loadFlags)
end

---
---@env CLIENT
---@param path string
---@param loadFlags? LOAD.TEXTURE_FLAGS
---@return Texture
---* Returns a Texture object if loaded successfully, you should use preLoad on Mod:onLoad() to pre-load the texture and not block the client
---
function resources:getTexture(path, loadFlags)
end

---
---@env SHARED
---@param path string
---@param loadFlags? LOAD.MODEL_FLAGS
---@return Model
---* Returns a Model object if loaded successfully, you should use addModel on Mod:onLoad() to pre-load the model mesh and not block the client
---
function resources:getModel(path, loadFlags)
end
