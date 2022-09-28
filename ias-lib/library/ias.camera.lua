---@meta

---
---camera's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class camera
camera = {}

---
---@env SHARED
---@return boolean
---* Returns true if the camera object is valid
---
function camera:isValid() end

---
---@env SHARED
---@param pos Vector3
---@return Vector3
---* Converts the screen position to world coordinates
---
function camera:toWorld(pos) end

---
---@env SHARED
---@param pos Vector3
---@return Vector
---* Converts the world position to screen coordinates
---
function camera:toScreen(pos) end
