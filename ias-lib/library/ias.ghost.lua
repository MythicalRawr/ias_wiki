---@meta

---
---@class Ghost
---* Ghost's entry class
---
Ghost = {}

---
---@env SHARED
---@return Ghost
---* Ghost constructor
---
function Ghost:new() end

---
---@env SHARED
---@return boolean
---* Returns true if valid
---
function Ghost:isValid() end

---
---@env SHARED
---* Destroys the ghost
---
function Ghost:destroy() end

---
---@env SHARED
---@param mdl Model
---* Sets the model for the ghost
---
function Ghost:setModel(mdl) end

---
---@env SHARED
---@return Model
---* Gets the current ghost model
---
function Ghost:getModel() end

---
---@env SHARED
---@param pos Vector3
---* Sets the current ghost position
---
function Ghost:setPos(pos) end

---
---@env SHARED
---@return Vector3
---* Gets the current ghost position
---
function Ghost:getPos() end

---
---@env SHARED
---@param ang number
---* Sets the current ghost angle in degrees
---
function Ghost:setAngle(ang) end

---
---@env SHARED
---@return number
---* Gets the current ghost angle in degrees
---
function Ghost:getAngle() end

---
---@env CLIENT
---@param color Color
---* Sets the current ghost color
---
function Ghost:setColor(color) end

---
---@env CLIENT
---* Draws the ghost model
---* ⚠ Should be called in ENT:Draw or ITEM:Draw ⚠
---
function Ghost:draw() end
