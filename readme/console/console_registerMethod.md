# [console](../console/README.md):registerMethod

### <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> [console](../console/README.md):registerMethod

{% hint style="warning" %} Console commands should be registered on the MOD:init() function {% endhint %}
{% hint style="warning" %} The command id needs to be unique {% endhint %}


```lua
void console:registerMethod(command, callback, description, flags)
```

Registers a new console command<br>
```lua
console:registerMethod("my_command", function(args, userID)
if #args <= 1 then return false, "Missing arguments" end

console:print("Awesome " .. args[2], CONSOLE.LOG.DEBUG)
return true, "OK!"
end, "My command description", CONSOLE.FLAGS.CHEATS | CONSOLE.FLAGS.ADMIN) -- Admin only and requires cheats enabled
```


-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | command | No description |   |
| function | callback | fun(args: string[], userID: number): success: boolean, msg: string |   |
| string | description | Default: <Empty> | ✔ |
| [CONSOLE.FLAGS](../console.flags/README.md) | flags | Default: <Empty> | ✔ |
