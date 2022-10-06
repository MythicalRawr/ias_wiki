## <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> [console](../console/README.md):execute

```lua
boolean, string console:execute(args)
```

Executes a console command programmatically
```lua
--my_command is the command to execute, true is a parameter
console:execute({"my_command", "true"})
```


-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string[] | args | No description |  |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| boolean | If command was executed successfully |
| string | The error / success message |