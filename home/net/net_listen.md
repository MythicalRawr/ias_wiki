## ![shared](.gitbook/assets/shared.png) [net](./home/net):listen

```lua
void net:listen(netId, hookName, callback)
```

Creates a listener for a specific netId. Make sure your hookName is unique, it might get replaced by other listeners!
------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | netId | No description |  |
| string | hookName | No description |  |
| function | callback | fun(data: any) |  |

