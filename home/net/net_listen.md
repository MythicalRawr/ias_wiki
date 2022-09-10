# net:listen

```lua
void net:listen(string netId, string hookName, function callback(packet))
```

> Creates a listener for a specific **netId**

Make sure your **hookName** is unique, it might get replaced by other listeners!

Ex:

```lua
hooks:listen("net_hello_world", "my-hook", function(packet)
	print("Got net message:", packet:readString())
end)
```

## Arguments

| Type     | Name     | Description                                                   | Optional |
| -------- | -------- | ------------------------------------------------------------- | -------: |
| string   | netId    | The net id to listen to                                       |          |
| string   | hookName | This hook unique id                                           |          |
| function | callback | Callback with a [Packet](../../wiki/net/packet\_base/) object |          |
