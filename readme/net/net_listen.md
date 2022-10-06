## <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> [net](../net/README.md):listen

```lua
void net:listen(netId, hookName, callback)
```

Creates a listener for a specific netId. Make sure your hookName is unique, it might get replaced by other listeners!<br>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | netId | No description |  |
| string | hookName | No description |  |
| function | callback | fun(data: any) |  |
