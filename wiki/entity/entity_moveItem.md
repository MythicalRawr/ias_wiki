## ![](images/server.png "SERVER") [Entity](entity_base):moveItem

```lua
boolean Entity:moveItem(Entity newInventory, number oldSlot, number newSlot)
```

> Moves an [Item](item_base) to a specific **slot** on the [Entity](entity_base)

### Arguments

| Type                  | Name         | Description              | Optional |
| --------------------- | ------------ | ------------------------ | -------: |
| [Entity](entity_base) | newInventory | The inventory to move to |          |
| number                | oldSlot      | The item slot            |          |
| number                | newSlot      | The new item slot        |          |

### Returns

| Type    |                        Description |
| ------- | ---------------------------------: |
| boolean | If the item was moved successfully |
