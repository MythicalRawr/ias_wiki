# Entity:getAvailableSlot

```lua
number Entity:getAvailableSlot([string itemID])
```

> Returns an available **slot** on the inventory. If an **itemID** is passed it will try to find a slot where that item can be merged into or an empty slot

## Arguments

| Type   | Name   | Description           | Optional |
| ------ | ------ | --------------------- | -------: |
| string | itemID | The item id to locate |        ✔ |

## Returns

| Type   |          Description |
| ------ | -------------------: |
| number | Available slot index |
