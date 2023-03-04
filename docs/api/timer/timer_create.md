---
sidebar_label: timer:create
sidebar_class_name: env-tag env-shared
title: timer:create
---

# <img src='/img/wiki/shared.png' alt='shared' classname='env-tag' /> [timer](../timer/README.md):create

```lua
timerObj timer:create(id, interval, ticks, callback)
```

Creates a timer using the unique id, triggering every x seconds for an x ammount of times.<br/>If ticks is set to <= than 0, it will run infinitely<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | id | No description |   |
| number | interval | No description |   |
| number | ticks | No description |   |
| function | callback | fun(data?: any): void |   |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| [timerObj](../timerobj/README.md) | No description |
