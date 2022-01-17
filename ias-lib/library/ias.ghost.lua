---@meta

---
---Ghost's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Ghost
Ghost = {}

---
---@ENV SHARED
---@return Ghost
---* Ghost constructor
---
function Ghost:new() end

---
---@ENV SHARED
---@return boolean
---* Returns true if valid
---
function Ghost:isValid() end

---
---@ENV SHARED
---* Destroys the ghost
---
function Ghost:destroy() end

---
---@ENV SHARED
---@param mdl Model
---* Sets the model for the ghost
---
function Ghost:setModel(mdl) end

---
---@ENV SHARED
---@return Model
---* Gets the current ghost model
---
function Ghost:getModel() end

---
---@ENV SHARED
---@param pos Vector3
---* Sets the current ghost position
---
function Ghost:setPos(pos) end

---
---@ENV SHARED
---@return Vector3
---* Gets the current ghost position
---
function Ghost:getPos() end

---
---@ENV SHARED
---@param ang number
---* Sets the current ghost angle in degrees
---
function Ghost:setAngle(ang) end

---
---@ENV SHARED
---@return number
---* Gets the current ghost angle in degrees
---
function Ghost:getAngle() end

---
---@ENV CLIENT
---@param color Color
---* Sets the current ghost color
---
function Ghost:setColor(color) end

---
---@ENV CLIENT
---* Draws the ghost model
---* ⚠ Should be called in ENT:Draw or ITEM:Draw ⚠
---
function Ghost:draw() end
