## ![shared](.gitbook/assets/shared.png) timer:create


```lua
timerObj timer:create(id, interval, ticks, callback)
```

Creates a timer using the unique id, triggering every x seconds for an x ammount of times.
If ticks is set to <= than 0, it will run infinitely


------
## Parameters

| Type   | Name | Description              | Optional |
| ------ | ---- | ------------------------ | -------: |
| string | id |  |  |
| number | interval |  |  |
| number | ticks |  |  |
| fun() | callback |  |  |

------
## Returns

| Type | Description |
| ---- | ----------: |
| timerObj |  |

