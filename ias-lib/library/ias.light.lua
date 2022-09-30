---@meta

---
---@class light
---* light's entry class
---
light = {}

---
---@env CLIENT
---@return boolean
---* Returns true if the light is valid
---
function light:isValid() end

---
---@env CLIENT
---@param on boolean
---* Turns the light on / off
---
function light:setStatus(on) end

---
---@env CLIENT
---@return number
---* Returns the light id
---
function light:ID() end

---
---@env CLIENT
---@param val number
---* Sets the light luminance
---
function light:setLuminance(val) end

---
---@env CLIENT
---@param val number
---* Sets the light falloff start
---
function light:setFalloffStart(val) end

---
---@env CLIENT
---@param val number
---* Sets the light falloff end
---
function light:setFalloffEnd(val) end

---
---@env CLIENT
---@param pos Vector
---* Sets the light position
---
function light:setPos(pos) end

---
---@env CLIENT
---@param color Color
---* Sets the light color
---
function light:setColor(color) end

---
---@env CLIENT
---@return Color
---* Gets the light color
---
function light:getColor() end
