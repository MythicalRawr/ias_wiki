---@meta

---
---sound's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Sound
Sound = {}

---
---@ENV CLIENT
---* Set the sound volume
---
Sound.volume = 1

---
---@ENV CLIENT
---* Set the sound pitch
---
Sound.pitch = 1

---
---@ENV CLIENT
---* Set the sound loop
---
Sound.loop = false

---
---@ENV CLIENT
---* Set the sound position
---
Sound.position = nil

---
---@ENV CLIENT
---* Stops playing the sound
---
function Sound:stop() end

---
---@ENV CLIENT
---* Plays the sound
---
function Sound:play() end

---
---@ENV CLIENT
---@param maxDistance number
---* Sets the sound as 3D with the given min and max distance
---
function Sound:set3D(maxDistance) end

---
---@ENV CLIENT
---@return boolean
---* Returns true if the sound is currently playing
---
function Sound:isPlaying() end

---
---@ENV CLIENT
---@return boolean
---* Returns true if the sound is valid
---
function Sound:isValid() end
