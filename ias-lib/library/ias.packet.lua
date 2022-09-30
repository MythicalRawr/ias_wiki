---@meta

---
---@class Packet
---@hint @warning Remember that the reading order MUST MATCH the writing order!
---* packet's entry class.
---
Packet = {}

---
---@env SHARED
---@return Packet
---* Packet constructor
---
function Packet:new() end

---
---@env SHARED
---@return boolean
---* Reads a boolean from the net packet
---
function Packet:readBool() end

---
---@env SHARED
---@return any
---* Reads a byte from the net packet
---
function Packet:readByte() end

---
---@env SHARED
---@return string
---* Reads a char from the net packet
---
function Packet:readChar() end

---
---@env SHARED
---@return string
---* Reads a string from the net packet
---
function Packet:readString() end

---
---@env SHARED
---@return number
---* Reads a short from the net packet
---
function Packet:readShort() end

---
---@env SHARED
---@return number
---* Reads a unsigned short from the net packet
---
function Packet:readUShort() end

---
---@env SHARED
---@return number
---* Reads a int from the net packet
---
function Packet:readInt() end

---
---@env SHARED
---@return number
---* Reads a unsigned int from the net packet
---
function Packet:readUInt() end

---
---@env SHARED
---@return number
---* Reads a long from the net packet
---
function Packet:readLong() end

---
---@env SHARED
---@return number
---* Reads a unsigned long from the net packet
---
function Packet:readULong() end

---
---@env SHARED
---@return number
---* Reads a float from the net packet
---
function Packet:readFloat() end

---
---@env SHARED
---@return number
---* Reads a double from the net packet
---
function Packet:readDouble() end

---
---@env SHARED
---@return table
---* Reads a table from the net packet
---
function Packet:readTable() end

---
---@env SHARED
---@return ENT
---* Reads a entity from the net packet
---
function Packet:readEntity() end

-------------------------------------------

---
---@env SHARED
---@param data boolean
---* Writes a boolean in the net packet.
---
function Packet:writeBool(data) end

---
---@env SHARED
---@param data number
---* Reads a byte in the net packet.
---
function Packet:writeByte(data) end

---
---@env SHARED
---@param data string
---* Writes a char in the net packet.
---
function Packet:writeChar(data) end

---
---@env SHARED
---@param data string
---* Writes a string in the net packet.
---
function Packet:writeString(data) end

---
---@env SHARED
---@param data number
---* Writes a short in the net packet.
---
function Packet:writeShort(data) end

---
---@env SHARED
---@param data number
---* Writes a unsigned short in the net packet.
---
function Packet:writeUShort(data) end

---
---@env SHARED
---@param data number
---* Writes a int in the net packet.
---
function Packet:writeInt(data) end

---
---@env SHARED
---@param data number
---* Writes a unsigned int in the net packet.
---
function Packet:writeUInt(data) end

---
---@env SHARED
---@param data number
---* Writes a long in the net packet.
---
function Packet:writeLong(data) end

---
---@env SHARED
---@param data number
---* Writes a unsigned long in the net packet.
---
function Packet:writeULong(data) end

---
---@env SHARED
---@param data number
---* Writes a float in the net packet.
---
function Packet:writeFloat(data) end

---
---@env SHARED
---@param data number
---* Writes a double in the net packet.
---
function Packet:writeDouble(data) end

---
---@env SHARED
---@param data table
---* Writes a table in the net packet.
---
function Packet:writeTable(data) end

---
---@env SHARED
---@param data Entity
---* Writes a entity in the net packet.
---
function Packet:writeEntity(data) end

---------------

---
---@env SHARED
---* Clears the entire packet data
---
function Packet:clear() end

---
---@env SHARED
---@return boolean
---* Returns true if the packet data is empty
---
function Packet:empty() end

---
---@env SHARED
---@param position number
---* Sets the cursor reading position
---
function Packet:seek(position) end

---
---@env SHARED
---@return number
---* Returns the size of the packet content
---
function Packet:size() end

---
---@env SHARED
---@return number
---* Returns the current position of the cursor
---
function Packet:tell() end
