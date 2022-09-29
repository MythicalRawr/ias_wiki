## <img src="../../.gitbook/assets/shared.png" width="24" height=24 /> [net](https://iaswiki.rawr.dev/readme/net):listen

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

