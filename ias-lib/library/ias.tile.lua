---@meta

---
---Tile's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Tile
Tile = {}

---
---@ENV SHARED
---@return boolean
---* Returns true if the tile is valid
---
function Tile:isValid() end

---
---@ENV SHARED
---@return WireIO
---* Returns the wire io on the tile, if any
---
function Tile:getIO() end

---
---@ENV SHARED
---@return WirePower
---* Returns the wire power on the tile, if any
---
function Tile:getPower() end

---
---@ENV SHARED
---@return Pipe
---* Returns the pipe on the tile, if any
---
function Tile:getPipe() end

---
---@ENV SHARED
---@param type WIRE
---@return boolean
---* Returns true if the tile has the requested wire type
---
function Tile:hasWire(type) end

---
---@ENV SHARED
---@return boolean
---* Returns true if the tile has a pipe
---
function Tile:hasPipe() end

---
---@ENV SHARED
---@return Room
---* Returns the current room the tile is in
---
function Tile:getRoom() end

---
---@ENV SERVER
---@param type WIRE
---* Removes the given wire type from the tile
---
function Tile:removeWire(type) end

---
---@ENV SERVER
---@param type WIRE
---@param networkId? number
---* Adds the given wire type to the tile
---
function Tile:addWire(type, networkId) end

---
---@ENV SERVER
---@param networkId number
---* Removes the given pipe networkId from the tile
---
function Tile:removePipe(networkId) end

---
---@ENV SERVER
---@param networkId number
---* Adds the given pipe networkId to the tile
---
function Tile:addPipe(networkId) end
