## <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> [timer](../timer/README.md):create

```lua
timerObj timer:create(id, interval, ticks, callback)
```

Creates a timer using the unique id, triggering every x seconds for an x ammount of times.,If ticks is set to <= than 0, it will run infinitely

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | id | No description |  |
| number | interval | No description |  |
| number | ticks | No description |  |
| function | callback | fun(data?: any): void |  |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| [timerObj](../timerobj/README.md) | No description |
