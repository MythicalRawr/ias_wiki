---@meta

---
---@class PipeNetwork
---* PipeNetwork's entry class.
---
PipeNetwork = {}

---
---@env SHARED
---@return boolean
---* Returns true if the tile is valid
---
function PipeNetwork:isValid() end

---
---@env SHARED
---@return number
---* Returns network id
---
function PipeNetwork:getId() end

---
---@env SHARED
---@return number
---* Returns color id
---
function PipeNetwork:getColorId() end
