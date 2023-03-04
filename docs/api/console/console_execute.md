---
sidebar_label: console:execute
sidebar_class_name: env-tag env-shared
title: console:execute
---

# <img src='/img/wiki/shared.png' alt='shared' classname='env-tag' /> [console](../console/README.md):execute

```lua
boolean, string console:execute(args)
```

Executes a console command programmatically<br/>
```lua
--my_command is the command to execute, true is a parameter
console:execute({"my_command", "true"})
```


-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string[] | args | No description |   |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| boolean | If command was executed successfully |
| string | The error / success message |
