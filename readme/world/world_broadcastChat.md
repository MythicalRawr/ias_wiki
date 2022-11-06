# [world](../world/README.md):broadcastChat

### <img src="../../.gitbook/assets/server.png" width="32" height="32" /> [world](../world/README.md):broadcastChat

```lua
void world:broadcastChat(pos, speaker, msg, distance, color)
```

Creates a chat on the given position to all players<br>Distance controls how readable the text is<br>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [Vector](../vector/README.md) | pos | No description |   |
| string | speaker | No description |   |
| string | msg | No description |   |
| number | distance | Default: -1 (global) | ✔ |
| [Color](../color/README.md) | color | Default: white | ✔ |
