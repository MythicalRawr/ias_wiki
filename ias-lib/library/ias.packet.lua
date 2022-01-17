---@meta

---
---packet's entry class.
---Remember that the reading order MUST MATCH the writing order!
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class Packet
Packet = {}

---
---@ENV SHARED
---@return Packet
---* Packet constructor
---
function Packet:new() end

---
---@ENV SHARED
---@return boolean
---* Reads a boolean from the net packet
---
function Packet:readBool() end

---
---@ENV SHARED
---@return any
---* Reads a byte from the net packet
---
function Packet:readByte() end

---
---@ENV SHARED
---@return string
---* Reads a char from the net packet
---
function Packet:readChar() end

---
---@ENV SHARED
---@return string
---* Reads a string from the net packet
---
function Packet:readString() end

---
---@ENV SHARED
---@return number
---* Reads a short from the net packet
---
function Packet:readShort() end

---
---@ENV SHARED
---@return number
---* Reads a unsigned short from the net packet
---
function Packet:readUShort() end

---
---@ENV SHARED
---@return number
---* Reads a int from the net packet
---
function Packet:readInt() end

---
---@ENV SHARED
---@return number
---* Reads a unsigned int from the net packet
---
function Packet:readUInt() end

---
---@ENV SHARED
---@return number
---* Reads a long from the net packet
---
function Packet:readLong() end

---
---@ENV SHARED
---@return number
---* Reads a unsigned long from the net packet
---
function Packet:readULong() end

---
---@ENV SHARED
---@return number
---* Reads a float from the net packet
---
function Packet:readFloat() end

---
---@ENV SHARED
---@return number
---* Reads a double from the net packet
---
function Packet:readDouble() end

---
---@ENV SHARED
---@return table
---* Reads a table from the net packet
---
function Packet:readTable() end

---
---@ENV SHARED
---@return ENT
---* Reads a entity from the net packet
---
function Packet:readEntity() end

-------------------------------------------

---
---@ENV SHARED
---@param data boolean
---* Writes a boolean in the net packet.
---
function Packet:writeBool(data) end

---
---@ENV SHARED
---@param data number
---* Reads a byte in the net packet.
---
function Packet:writeByte(data) end

---
---@ENV SHARED
---@param data string
---* Writes a char in the net packet.
---
function Packet:writeChar(data) end

---
---@ENV SHARED
---@param data string
---* Writes a string in the net packet.
---
function Packet:writeString(data) end

---
---@ENV SHARED
---@param data number
---* Writes a short in the net packet.
---
function Packet:writeShort(data) end

---
---@ENV SHARED
---@param data number
---* Writes a unsigned short in the net packet.
---
function Packet:writeUShort(data) end

---
---@ENV SHARED
---@param data number
---* Writes a int in the net packet.
---
function Packet:writeInt(data) end

---
---@ENV SHARED
---@param data number
---* Writes a unsigned int in the net packet.
---
function Packet:writeUInt(data) end

---
---@ENV SHARED
---@param data number
---* Writes a long in the net packet.
---
function Packet:writeLong(data) end

---
---@ENV SHARED
---@param data number
---* Writes a unsigned long in the net packet.
---
function Packet:writeULong(data) end

---
---@ENV SHARED
---@param data number
---* Writes a float in the net packet.
---
function Packet:writeFloat(data) end

---
---@ENV SHARED
---@param data number
---* Writes a double in the net packet.
---
function Packet:writeDouble(data) end

---
---@ENV SHARED
---@param data table
---* Writes a table in the net packet.
---
function Packet:writeTable(data) end

---
---@ENV SHARED
---@param data Entity
---* Writes a entity in the net packet.
---
function Packet:writeEntity(data) end

---------------

---
---@ENV SHARED
---* Clears the entire packet data
---
function Packet:clear() end

---
---@ENV SHARED
---@return boolean
---* Returns true if the packet data is empty
---
function Packet:empty() end

---
---@ENV SHARED
---@param position number
---* Sets the cursor reading position
---
function Packet:seek(position) end

---
---@ENV SHARED
---@return number
---* Returns the size of the packet content
---
function Packet:size() end

---
---@ENV SHARED
---@return number
---* Returns the current position of the cursor
---
function Packet:tell() end
