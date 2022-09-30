---@meta

---
---@class Tile
---* Tile's entry class.
---
Tile = {}

---
---@env SHARED
---@return boolean
---* Returns true if the tile is valid
---
function Tile:isValid() end

---
---@env SHARED
---@return WireIO
---* Returns the wire io on the tile, if any
---
function Tile:getIO() end

---
---@env SHARED
---@return WirePower
---* Returns the wire power on the tile, if any
---
function Tile:getPower() end

---
---@env SHARED
---@return Pipe
---* Returns the pipe on the tile, if any
---
function Tile:getPipe() end

---
---@env SHARED
---@param type WIRE
---@return boolean
---* Returns true if the tile has the requested wire type
---
function Tile:hasWire(type) end

---
---@env SHARED
---@return boolean
---* Returns true if the tile has a pipe
---
function Tile:hasPipe() end

---
---@env SHARED
---@return Room
---* Returns the current room the tile is in
---
function Tile:getRoom() end

---
---@env SERVER
---@param type WIRE
---* Removes the given wire type from the tile
---
function Tile:removeWire(type) end

---
---@env SERVER
---@param type WIRE
---@param networkId? number
---* Adds the given wire type to the tile
---
function Tile:addWire(type, networkId) end

---
---@env SERVER
---@param networkId number
---* Removes the given pipe networkId from the tile
---
function Tile:removePipe(networkId) end

---
---@env SERVER
---@param networkId number
---* Adds the given pipe networkId to the tile
---
function Tile:addPipe(networkId) end
