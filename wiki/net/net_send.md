## ![](images/server.png "SERVER") net:send

```lua
void net:send(string netId, Packet msg, Player ply, [bool reliable = true])
```

> Sends a [Packet](packet_base) to a specific [Player](player_base)

📝 Use [broadcast()](net_broadcast) instead of **send()** to transmit to all connected players

Ex:

```lua
if SERVER then
	local msg = Packet:new()
	msg:writeString("world")

	local plys = world:getPlayers()
	net:send("net_hello_world", msg, plys[1]) -- Send message to first player
else
	-- Client
	hooks:listen("net_hello_world", "my-hook", function(msg)
		print("hello", msg:readString()) -- prints "Hello, world" on client 1
	end)
end
```

### Arguments

| Type   | Name     | Description                              | Optional |
| ------ | -------- | ---------------------------------------- | -------: |
| string | netId    | The net id to send to                    |          |
| string | msg      | [Packet](packet_base) object to transmit |          |
| bool   | reliable | Should the message be reliable or not    |     true |
