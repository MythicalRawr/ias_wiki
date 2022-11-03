## <img src="../../.gitbook/assets/client.png" width="32" height="32" /> [resources](../resources/README.md):getSound

```lua
Sound resources:getSound(path, loadFlags)
```

Returns a Sound object if loaded successfully, you should use preLoad on Mod:onLoad() to pre-load the sound and not block the client<br>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | path | No description |  |
| [LOAD.SOUND_FLAGS](../load.sound_flags/README.md) | loadFlags | No description | ✔ |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| [Sound](../sound/README.md) | No description |


--------