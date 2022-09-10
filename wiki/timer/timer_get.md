## ![](images/shared.png "SHARED") timer:get

```lua
timerObj timer:get(string id)
```

> Returns a [timerObj](timer_timerObj) with the given **id**, make sure you validate with `timer:exists` first.

### Arguments

| Type   | Name | Description         | Optional |
| ------ | ---- | ------------------- | -------: |
| string | id   | The timer unique id |          |

### Returns

| Type                       |      Description |
| -------------------------- | ---------------: |
| [timerObj](timer_timerObj) | The timer object |
