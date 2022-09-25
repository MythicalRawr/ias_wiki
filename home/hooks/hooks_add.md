## ![shared](.gitbook/assets/shared.png) hooks:add


```lua
void hooks:add(hookId, hookName, callback)
```

Creates a hook (aka listener) for a specific hookId
Make sure your hook hookName is unique, it might get replaced by other hooks!


------
## Parameters

| Type   | Name | Description              | Optional |
| ------ | ---- | ------------------------ | -------: |
| string | hookId |  |  |
| string | hookName |  |  |
| fun(data: | callback | any) |  |


