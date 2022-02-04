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
---@param type WIRE
---@return boolean
---* Returns true if the tile has the requested wire type
---
function Tile:hasWire(type) end

---
---@ENV SHARED
---@return Room
---* Returns the current room the tile is in
---
function Tile:getRoom() end

---
---@ENV SHARED
---@return Room
---* Returns the current room the tile is in
---
function Tile:getRoom() end
