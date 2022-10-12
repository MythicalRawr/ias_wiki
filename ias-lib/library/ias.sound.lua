---@meta

---
---@class Sound
---@field volume number "Set the sound volume"
---@field pitch number "Set the sound pitch"
---@field position? Vector "Set the sound position"
---@field loop boolean "Set the sound loop"
---* Sound's entry class.
---
Sound = {
	volume = 1,
	pitch = 1,
	position = nil,
	loop = false
}

---
---@env CLIENT
---@return number
---* Returns the channel id
---
function Sound:id() end

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
---* Returns true if the is playing from a url
---
function Sound:isHTTP() end

---
---@env CLIENT
---@param fft_size number "The FFT size"
---@hint @warning "Supported FFT Sizes: 256, 512, 1024, 2048"
---@return table
---* Returns the sound FFT table
---
function Sound:getFFT(fft_size) end

---
---@env CLIENT
---@return boolean
---* Returns true if the sound is valid
---
function Sound:isValid() end

---
---@env CLIENT
---@param bandwidth number
---@param center_freq number
---@param release_time number
---* Sets the beat detection settings for the channel
---
function Sound:setBeatSettings(bandwidth, center_freq, release_time) end

---
---@env CLIENT
---@param callback function "fun(beatPosition: number): void"
---* Triggers when a beat is detected
---
function Sound:onBEAT(callback) end

---
---@env CLIENT
---@param callback function "fun(): void"
---* Triggers when a music ends
---
function Sound:onEnd(callback) end
