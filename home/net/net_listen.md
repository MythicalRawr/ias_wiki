## ![shared](.gitbook/assets/shared.png) net:listen


```lua
void net:listen(netId, hookName, callback)
```

Creates a listener for a specific netId. Make sure your hookName is unique, it might get replaced by other listeners!


------
## Parameters

| Type   | Name | Description              | Optional |
| ------ | ---- | ------------------------ | -------: |
| string | netId |  |  |
| string | hookName |  |  |
| fun(data: | callback | any) |  |


