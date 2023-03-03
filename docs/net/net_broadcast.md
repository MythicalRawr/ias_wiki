---
sidebar_label: net:broadcast
sidebar_class_name: env-server
---

### ![](/img/wiki/server.png) [net](../net/README.md):broadcast

```lua
void net:broadcast(netId, msg, reliable)
```

Broadcasts a Packet to all connected players<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | netId | No description |   |
| [Packet](../packet/README.md) | msg | No description |   |
| boolean | reliable | Default: true | ✔ |
