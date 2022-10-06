## <img src="../../.gitbook/assets/client.png" width="32" height="32" /> [resources](../resources/README.md):getTexture

```lua
Texture resources:getTexture(path)
```

Returns a Texture object if loaded successfully, you should use preLoad on Mod:onLoad() to pre-load the texture and not block the client

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | path | No description |  |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| [Texture](../texture/README.md) | No description |