## ![client](../../.gitbook/assets/client.png) [Player](./readme/player.md):moveItem

```lua
boolean Player:moveItem(oldStorage, newStorage, oldSlot, newSlot)
```

Locally moves an item from an inventory to another inventory and sends a validation request to the server.,The moving player must be marked as a viewer on server and be within range of both inventories!

------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [ENT](./readme/ent.md) | oldStorage | No description |  |
| [ENT](./readme/ent.md) | newStorage | No description |  |
| number | oldSlot | No description |  |
| number | newSlot | No description |  |


------
## Returns

| Type   | Description |
| ------ | ----------: |
| boolean | Local move was successful |

