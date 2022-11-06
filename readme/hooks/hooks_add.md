# [hooks](../hooks/README.md):add

### <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> [hooks](../hooks/README.md):add

```lua
void hooks:add(hookId, hookName, callback)
```

Creates a hook (aka listener) for a specific hookId<br>Make sure your hook hookName is unique, it might get replaced by other hooks!<br>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | hookId | No description |   |
| string | hookName | No description |   |
| function | callback | fun(data:any): void |   |
