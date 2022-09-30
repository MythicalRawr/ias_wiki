## <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> [console](../console/README.md):register

```lua
void console:register(command, callback, description, flags)
```

Registers a new console command (the command id needs to be unique)
```lua
console:register("my_command", function(args)
if #args <= 1 then return false, "Missing arguments" end

console:print("Awesome " .. args[2], CONSOLE.LOG.DEBUG)
return true, ""
end, "My command description", CONSOLE.FLAGS.CHEATS | CONSOLE.FLAGS.ADMIN) -- Admin only and requires cheats
```


-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | command | No description |  |
| function | callback | fun(args: string[]): success: boolean, msg: string |  |
| string | description | No description | ✔ |
| [CONSOLE.FLAGS](../console.flags/README.md) | flags | No description | ✔ |
