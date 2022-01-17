---@meta

---
---lights's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class lights
lights = {}

---
---@ENV CLIENT
---@param pos Vector
---@param color Color
---@param fallStart? number
---@param fallEnd? number
---@param lumi? number
---@return light
---* Creates a light at the given location (client side only)
---* ⚠ MAKE SURE YOU REMOVE THE LIGHT AFTER YOU ARE DONE WITH IT ⚠
---
function lights:create(pos, color, fallStart, fallEnd, lumi) end

---
---@ENV CLIENT
---@param id number
---* Removes the a light by id
---
function lights:remove(id) end

-------------------------

---
---light's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class light
light = {}

---
---@ENV CLIENT
---@return boolean
---* Returns true if the light is valid
---
function light:isValid() end

---
---@ENV CLIENT
---@param on boolean
---* Turns the light on / off
---
function light:setStatus(on) end

---
---@ENV CLIENT
---@return number
---* Returns the light id
---
function light:ID() end

---
---@ENV CLIENT
---@param val number
---* Sets the light luminance
---
function light:setLuminance(val) end

---
---@ENV CLIENT
---@param val number
---* Sets the light falloff start
---
function light:setFalloffStart(val) end

---
---@ENV CLIENT
---@param val number
---* Sets the light falloff end
---
function light:setFalloffEnd(val) end

---
---@ENV CLIENT
---@param pos Vector
---* Sets the light position
---
function light:setPos(pos) end

---
---@ENV CLIENT
---@param color Color
---* Sets the light color
---
function light:setColor(color) end

---
---@ENV CLIENT
---@return Color
---* Gets the light color
---
function light:getColor() end
