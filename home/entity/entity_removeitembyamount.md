# Entity:removeItemById

```lua
boolean Entity:removeItemById(string itemID, number amount)
```

> Removes an [Item](../../wiki/entity/item\_base/) by a given **amount** (it will automatically find the stacks on the inventory and remove them until the remaining is 0)

⚠️ Make sure you first check if the [Entity](../../wiki/entity/entity\_base/) has the amount you want to remove by using [Entity:getItemCount](../../wiki/entity/entity\_getItemCount/)!

## Arguments

| Type   | Name   | Description           | Optional |
| ------ | ------ | --------------------- | -------: |
| number | itemID | The item id to remove |          |
| number | amount | Amount to remove      |          |

## Returns

| Type    |                                                                                                                     Description |
| ------- | ------------------------------------------------------------------------------------------------------------------------------: |
| boolean | If the item was removed successfully (if false, you probably should have checked if the user has the amount you want to remove) |
