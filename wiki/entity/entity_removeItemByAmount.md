## ![](images/server.png "SERVER") [Entity](entity_base):removeItemById

```lua
boolean Entity:removeItemById(string itemID, number amount)
```

> Removes an [Item](item_base) by a given **amount** (it will automatically find the stacks on the inventory and remove them until the remaining is 0)

⚠️ Make sure you first check if the [Entity](entity_base) has the amount you want to remove by using [Entity:getItemCount](entity_getItemCount)!

### Arguments

| Type   | Name   | Description           | Optional |
| ------ | ------ | --------------------- | -------: |
| number | itemID | The item id to remove |          |
| number | amount | Amount to remove      |          |

### Returns

| Type    |                                                                                                                     Description |
| ------- | ------------------------------------------------------------------------------------------------------------------------------: |
| boolean | If the item was removed successfully (if false, you probably should have checked if the user has the amount you want to remove) |
