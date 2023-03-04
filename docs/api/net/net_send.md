---
sidebar_label: net:send
sidebar_class_name: env-tag env-server
title: net:send
---

# <img src='/img/wiki/server.png' alt='server' classname='env-tag' /> [net](../net/README.md):send

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
