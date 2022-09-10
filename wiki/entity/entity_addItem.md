## ![](images/server.png "SERVER") [Entity](entity_base):addItem

```lua
boolean Entity:addItem(string itemID, [number amount = 1], [number slot = 0])
```

> Creates a new [Item](item_base) and adds it to a specified **slot**.

### Arguments

| Type   | Name   | Description                                        | Optional |
| ------ | ------ | -------------------------------------------------- | -------: |
| string | itemID | The item to add                                    |          |
| number | amount | The amount of that item to add (must be stackable) |     true |
| number | slot   | Slot to add the item (-1 = find available slot)    |     true |

### Returns

| Type    |                        Description |
| ------- | ---------------------------------: |
| boolean | If the item was added successfully |
