# timer:get

```lua
timerObj timer:get(string id)
```

> Returns a [timerObj](../../wiki/timer/timer\_timerObj/) with the given **id**, make sure you validate with `timer:exists` first.

## Arguments

| Type   | Name | Description         | Optional |
| ------ | ---- | ------------------- | -------: |
| string | id   | The timer unique id |          |

## Returns

| Type                                          |      Description |
| --------------------------------------------- | ---------------: |
| [timerObj](../../wiki/timer/timer\_timerObj/) | The timer object |
