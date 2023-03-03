---
sidebar_label: console:registerVariable
sidebar_class_name: env-shared
---

### ![](/img/wiki/shared.png) [console](../console/README.md):registerVariable

:::warning
Console commands should be registered on the MOD:init() function
:::
:::warning
The command id needs to be unique
:::


```lua
void console:registerVariable(command, var, description, flags)
```

Registers a new console command<br/>
```lua
local myVar = false
console:registerVariable("my_command", myVar, "My command description", CONSOLE.FLAGS.CHEATS | CONSOLE.FLAGS.ADMIN) -- Admin only and requires cheats enabled
```


-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | command | No description |   |
| number | var | No description |   |
| string | var | No description |   |
| boolean | var | No description |   |
| string | description | Default: '' | ✔ |
| [CONSOLE.FLAGS](../console.flags/README.md) | flags | Default: '' | ✔ |
