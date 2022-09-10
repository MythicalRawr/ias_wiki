# Entity:moveItem

```lua
boolean Entity:moveItem(Entity newInventory, number oldSlot, number newSlot)
```

> Moves an [Item](../../wiki/entity/item\_base/) to a specific **slot** on the [Entity](../../wiki/entity/entity\_base/)

## Arguments

| Type                                      | Name         | Description              | Optional |
| ----------------------------------------- | ------------ | ------------------------ | -------: |
| [Entity](../../wiki/entity/entity\_base/) | newInventory | The inventory to move to |          |
| number                                    | oldSlot      | The item slot            |          |
| number                                    | newSlot      | The new item slot        |          |

## Returns

| Type    |                        Description |
| ------- | ---------------------------------: |
| boolean | If the item was moved successfully |
