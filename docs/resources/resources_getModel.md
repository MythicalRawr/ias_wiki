---
sidebar_label: resources:getModel
sidebar_class_name: env-shared
---

### ![](/img/wiki/shared.png) [resources](../resources/README.md):getModel

```lua
Model resources:getModel(path, loadFlags)
```

Returns a Model object if loaded successfully, you should use addModel on Mod:onLoad() to pre-load the model mesh and not block the client<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | path | No description |   |
| [LOAD.MODEL_FLAGS](../load.model_flags/README.md) | loadFlags | No description | ✔ |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| [Model](../model/README.md) | No description |
