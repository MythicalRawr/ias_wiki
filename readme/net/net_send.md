# net:send

### ![server](../../home/net/.gitbook/assets/server.png) [net](../../home/net/home/net/):send

```lua
void net:send(netId, msg, ply, reliable)
```

### Sends a Packet to a specific Player.

### Parameters

| Type                                  | Name     | Description     | Optional |
| ------------------------------------- | -------- | --------------- | -------: |
| string                                | netId    | No description  |          |
| [Packet](../../home/net/home/Packet/) | msg      | No description  |          |
| [Player](../../home/net/home/Player/) | ply      | No description  |          |
| boolean                               | reliable | optional = true |        ✔ |
