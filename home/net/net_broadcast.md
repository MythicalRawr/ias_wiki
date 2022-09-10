# net:broadcast

```lua
void net:broadcast(string netId, Packet msg, [bool reliable = true])
```

> Broadcasts a [Packet](../../wiki/net/packet\_base/) to all connected players

Ex:

```lua
if SERVER then
	local msg = Packet:new()
	msg:writeString("world")

	net:broadcast("net_hello_world", msg)
else
	-- Client
	hooks:listen("net_hello_world", "my-hook", function(msg)
		print("hello", msg:readString()) -- prints "Hello, world"
	end)
end
```

## Arguments

| Type   | Name     | Description                                               | Optional |
| ------ | -------- | --------------------------------------------------------- | -------: |
| string | netId    | The net id to send to                                     |          |
| string | msg      | [Packet](../../wiki/net/packet\_base/) object to transmit |          |
| bool   | reliable | Should the message be reliable or not                     |        ✔ |
