---@meta

---
---@class Bone
---* Bone's entry class
Bone = {}

---
---@env CLIENT
---@return Vector3
---* Returns the custom position offset of the bone
---
function Bone:getPosition() end

---
---@env CLIENT
---@param position Vector3 "Custom offset"
---* Sets the custom local position offset of the bone
---
function Bone:setPosition(position) end

---
---@env CLIENT
---@return Vector3
---* Returns the custom rotation offset of the bone in degrees
---
function Bone:getRotation() end

---
---@env CLIENT
---@param rotation Vector3 "Custom offset"
---* Sets the custom position offset of the bone in degrees
---
function Bone:setRotation(rotation) end

---
---@env CLIENT
---@return Vector3
---* Returns the custom scale modifier of the bone
---
function Bone:getScale() end

---
---@env CLIENT
---@param scale Vector3 "Custom modifier"
---* Sets the custom scale modifier of the bone
---
function Bone:setScale(scale) end

---
---@env CLIENT
---* Clears the position, rotation and scale modifiers for the bone.
---
function Bone:clear() end

---
---@env CLIENT
---@return string
---* Returns the bone name
---
function Bone:getName() end
