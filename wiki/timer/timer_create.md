## ![](images/shared.png "SHARED") timer:create

```lua
timerObj timer:create(string id, number interval, number ticks, function callback(void))
```

> Creates a timer using the **unique id**, triggering every x seconds for an x ammount of times

If ticks is set to <= than 0, it will run infinitely

### Arguments

| Type     | Name     | Description                                                   | Optional |
| -------- | -------- | ------------------------------------------------------------- | -------: |
| string   | id       | The timer unique id                                           |          |
| number   | interval | The timer interval (in seconds, supports float)               |          |
| number   | ticks    | The number of times the timer will tick **(<= 0 = infinite)** |          |
| function | callback | The timer callback that gets triggered                        |          |

### Returns

| Type                       |             Description |
| -------------------------- | ----------------------: |
| [timerObj](timer_timerObj) | The newly created timer |
