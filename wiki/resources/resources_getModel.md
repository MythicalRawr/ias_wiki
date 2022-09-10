## ![](images/shared.png "SHARED") resources:getModel

```lua
void resources:getModel(string path)
```

> Returns a [ModelMesh](modelMesh) object if loaded successfully, you should use `addModel` on `Mod:onLoad()` to pre-load the model mesh and not block the client

### Arguments

| Type   | Name | Description           | Optional |
| ------ | ---- | --------------------- | -------: |
| string | path | The path to the model |          |
