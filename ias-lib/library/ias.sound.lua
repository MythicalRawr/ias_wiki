---@meta

---
---Sound's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Sound
---@field volume number "Set the sound volume"
---@field pitch number "Set the sound pitch"
---@field loop boolean "Set the sound loop"
---@field position? Vector "Set the sound position"
Sound = {
	volume = 1,
	pitch = 1,
	loop = false,
	position = nil
}

---
---@env CLIENT
---* Stops playing the sound
---
function Sound:stop() end

---
---@env CLIENT
---* Plays the sound
---
function Sound:play() end

---
---@env CLIENT
---@param maxDistance number
---* Sets the sound as 3D with the given min and max distance
---
function Sound:set3D(maxDistance) end

---
---@env CLIENT
---@return boolean
---* Returns true if the sound is currently playing
---
function Sound:isPlaying() end

---
---@env CLIENT
---@return boolean
---* Returns true if the sound is valid
---
function Sound:isValid() end
