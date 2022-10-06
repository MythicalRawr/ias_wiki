## <img src="../../.gitbook/assets/server.png" width="32" height="32" /> [net](../net/README.md):send

```lua
void net:send(netId, msg, ply, reliable)
```

Sends a Packet to a specific Player.

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | netId | No description |  |
| [Packet](../packet/README.md) | msg | No description |  |
| [Player](../player/README.md) | ply | No description |  |
| boolean | reliable | Default: true | ✔ |