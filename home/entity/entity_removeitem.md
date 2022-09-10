# Entity:removeItem

```lua
boolean Entity:removeItem(number slot, [number amount = 0])
```

> Removes an [Item](../../wiki/entity/item\_base/) from a specific **slot** on the [Entity](../../wiki/entity/entity\_base/), if no amount is specified (or is not stackable), it will fully remove the item.

📝 To automatically remove an amount by item id, use [Entity:removeByAmount](../../wiki/entity/entity\_removeItemById/)

## Arguments

| Type   | Name   | Description             | Optional |
| ------ | ------ | ----------------------- | -------: |
| number | slot   | The item slot to remove |          |
| number | amount | Amount to remove        |        ✔ |

## Returns

| Type    |                          Description |
| ------- | -----------------------------------: |
| boolean | If the item was removed successfully |
