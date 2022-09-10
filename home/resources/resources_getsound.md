# resources:getSound

```lua
void resources:getSound(string path)
```

> Returns a [Sound](../../wiki/resources/sound/) object if loaded successfully, you should use `addSound` on `Mod:onLoad()` to pre-load the sound and not block the client

## Arguments

| Type   | Name | Description           | Optional |
| ------ | ---- | --------------------- | -------: |
| string | path | The path to the sound |          |
