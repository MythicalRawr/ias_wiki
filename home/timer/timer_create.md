## ![shared](.gitbook/assets/shared.png) [timer](home/timer)



```lua
timerObj timer:create(id, interval, ticks, callback)
```

Creates a timer using the unique id, triggering every x seconds for an x ammount of times.,If ticks is set to <= than 0, it will run infinitely

------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | id | No description |  |
| number | interval | No description |  |
| number | ticks | No description |  |
| [fun()](home/fun()) | callback | No description |  |

------
## Returns

| Type   | Description |
| ------ | ----------: |
| [timerObj](home/timerObj) | No description |

