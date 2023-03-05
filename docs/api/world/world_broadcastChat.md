---
sidebar_label: world:broadcastChat
sidebar_class_name: env-tag env-server
title: world:broadcastChat
---

# <img src='/img/wiki/server.png' alt='server' data-tag='env-tag' /> [world](../world/README.md):broadcastChat

```lua
void world:broadcastChat(pos, speaker, msg, distance, color)
```

Creates a chat on the given position to all players<br/>Distance controls how readable the text is<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [Vector](../vector/README.md) | pos | No description |   |
| string | speaker | No description |   |
| string | msg | No description |   |
| number | distance | Default: -1 (global) | ✔ |
| [Color](../color/README.md) | color | Default: white | ✔ |
