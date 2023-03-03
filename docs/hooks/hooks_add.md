---
sidebar_label: hooks:add
sidebar_class_name: env-shared
---

### ![](/img/wiki/shared.png) [hooks](../hooks/README.md):add

```lua
void hooks:add(hookId, hookName, callback)
```

Creates a hook (aka listener) for a specific hookId<br/>Make sure your hook hookName is unique, it might get replaced by other hooks!<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | hookId | No description |   |
| string | hookName | No description |   |
| function | callback | fun(data:any): void |   |
