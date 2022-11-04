# [world](../world/README.md):broadcast3DChat

### <img src="../../.gitbook/assets/server.png" width="32" height="32" /> [world](../world/README.md):broadcast3DChat

```lua
void world:broadcast3DChat(pos, speaker, msg, color, groupid, distance)
```

Creates a 3D chat on the given position to all players<br>Distance controls how readable the text is<br>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [Vector](../vector/README.md) | pos | No description |  |
| string | speaker | No description |  |
| string | msg | No description |  |
| [Color](../color/README.md) | color | Default: white | ✔ |
| number | groupid | Default: 0 | ✔ |
| number | distance | Default: -1 (global) | ✔ |
