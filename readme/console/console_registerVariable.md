# [console](../console/README.md):registerVariable

### <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> [console](../console/README.md):registerVariable

{% hint style="warning" %} Console commands should be registered on the MOD:init() function {% endhint %}
{% hint style="warning" %} The command id needs to be unique {% endhint %}


```lua
void console:registerVariable(command, var, description, flags)
```

Registers a new console command<br>
```lua
local myVar = false
console:registerVariable("my_command", myVar, "My command description", CONSOLE.FLAGS.CHEATS | CONSOLE.FLAGS.ADMIN) -- Admin only and requires cheats enabled
```


-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | command | No description |   |
| [number|string|boolean](../number|string|boolean/README.md) | var | No description |   |
| string | description | Default: <Empty> | ✔ |
| [CONSOLE.FLAGS](../console.flags/README.md) | flags | Default: <Empty> | ✔ |
