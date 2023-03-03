---
sidebar_label: net:send
sidebar_class_name: env-server
---

### ![](/img/wiki/server.png) [net](../net/README.md):send

```lua
void net:send(netId, msg, ply, reliable)
```

Sends a Packet to a specific Player.<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | netId | No description |   |
| [Packet](../packet/README.md) | msg | No description |   |
| [Player](../player/README.md) | ply | No description |   |
| boolean | reliable | Default: true | ✔ |
