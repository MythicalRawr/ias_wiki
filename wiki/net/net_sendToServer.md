## ![](images/client.png "CLIENT") net:sendToServer

```lua
void net:sendToServer(string netId, Packet msg, [bool reliable = true])
```

> Sends a [Packet](packet_base) to the server

Ex:

```lua
if SERVER then
	hooks:listen("net_hello_world", "my-hook", function(msg)
		print("hello", msg:readString()) -- prints "Hello, world" on server
	end)
else
	-- Client
	local msg = Packet:new()
	msg:writeString("world")
	net:sendToServer("net_hello_world", msg) -- Send message to server
end
```

### Arguments

| Type   | Name     | Description                              | Optional |
| ------ | -------- | ---------------------------------------- | -------: |
| string | netId    | The net id to send to                    |          |
| string | msg      | [Packet](packet_base) object to transmit |          |
| bool   | reliable | Should the message be reliable or not    |     true |
