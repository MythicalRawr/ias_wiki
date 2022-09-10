## ![](images/shared.png "SHARED") console:execute

```lua
boolean, string console:execute(string[] arguments)
```

> Executes a console command programmatically

Ex:

```lua
-- my_command is the command to execute, true is a parameter
console:execute({"my_command", "true"})
```

### Arguments

| Type     | Name      | Description        | Optional |
| -------- | --------- | ------------------ | -------: |
| string[] | arguments | Array of arguments |          |

‌‌ ‌‌

### Returns

| Type    |                          Description |
| ------- | -----------------------------------: |
| boolean | If command was executed successfully |
| string  |          The error / success message |
