# Packet:write

### ![](../../wiki/packet/images/shared.png) [Packet](../../wiki/packet/packet\_base/):write\*

> Writes content in the network packet.

⚠️ Remember that the [reading](../../wiki/packet/packet\_read/) order **MUST MATCH** the **writing** order! Meaning:

```lua
local msg = Packet:new()
msg:writeString("hi")
msg:writeTable({a = 1, b = 2})

-- READ MUST MATCH THE ORDER
print(msg:readString(), "world") -- Will print "hi, world"
printTable(msg:readTable()) -- Will print the table
```

⚠️ To create a new packet, use **Packet:new()**

```lua
local msg = Packet:new()
```

### Available writes

```lua
void packet:writeBool(boolean value)
void packet:writeByte(number value)
void packet:writeChar(string value)
void packet:writeString(string value)

void packet:writeShort(number value)
void packet:writeUShort(number value)
void packet:writeInt(number value)
void packet:writeUInt(number value)
void packet:writeLong(number value)
void packet:writeULong(number value)
void packet:writeFloat(number value)
void packet:writeDouble(number value)

void packet:writeTable(table value)
void packet:writeEntity(entity value)
```
