## ![shared](.gitbook/assets/shared.png) [console](home/console)



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

------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | command | No description |  |
| [fun(args:](home/fun(args:) | callback | string[]): success: boolean, msg: string ⚠️ The callback must return a boolean and a string (true or false if sucessfull, and the error / sucess message) ⚠️ |  |
| string | description | No description | ✔ |
| [CONSOLE.FLAGS](home/CONSOLE.FLAGS) | flags | No description | ✔ |


