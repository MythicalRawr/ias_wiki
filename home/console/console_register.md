# console:register

{% hint style="danger" %}
The callback must return a boolean and a string (true or false if sucessfull, and the error / sucess message)
{% endhint %}

```lua
boolean console:register(string command, function callback(string[] args) => {boolean, string}, [string description]="", [ConsoleEnums flags]=0)
```

> Registers a new console command (the command id needs to be unique)

Ex:

```lua
console:register("my_command", function(args)
	if #args <= 1 then return false, "Missing arguments" end

	console:print("Awesome " .. args[2], CONSOLE.LOG.DEBUG)
	return true, ""
end, "My command description", CONSOLE.FLAGS.CHEATS | CONSOLE.FLAGS.ADMIN) -- Admin only and requires cheats
```

## Arguments

| Type                                               | Name        | Description                             | Optional |
| -------------------------------------------------- | ----------- | --------------------------------------- | -------: |
| string                                             | command     | The command id                          |          |
| function                                           | callback    | Callback method (with arguments string) |          |
| string                                             | description | Command description                     |        ✔ |
| [ConsoleEnums](../../wiki/console/console\_enums/) | flags       | Command enums (FLAGS)                   |        ✔ |

## Returns

| Type    |                            Description |
| ------- | -------------------------------------: |
| boolean | If command was registered successfully |
