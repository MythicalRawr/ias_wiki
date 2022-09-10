## ![](images/shared.png "SHARED") [Packet](packet_base):read\*

> Reads the content in the network packet.

⚠️ The reading order **MUST MATCH** the [writing](packet_write) order! Meaning:

```lua
local msg = Packet:new()
msg:writeString("hi")
msg:writeTable({a = 1, b = 2})

-- READ MUST MATCH THE ORDER
print(msg:readString(), "world") -- Will print "hi, world"
printTable(msg:readTable()) -- Will print the table
```

## Available reads

```lua
boolean packet:readBool()
number packet:readByte()
string packet:readChar()
string packet:readString()

number packet:readShort()
number packet:readUShort()
number packet:readInt()
number packet:readUInt()
number packet:readLong()
number packet:readULong()
number packet:readFloat()
number packet:readDouble()

table packet:readTable()
entity packet:readEntity()
```
