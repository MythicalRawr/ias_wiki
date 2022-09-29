## ![client](../../.gitbook/assets/client.png) [Player](https://iaswiki.rawr.dev/readme/player):moveItem

```lua
boolean Player:moveItem(oldStorage, newStorage, oldSlot, newSlot)
```

Locally moves an item from an inventory to another inventory and sends a validation request to the server.,The moving player must be marked as a viewer on server and be within range of both inventories!

------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [ENT](https://iaswiki.rawr.dev/readme/ent) | oldStorage | No description |  |
| [ENT](https://iaswiki.rawr.dev/readme/ent) | newStorage | No description |  |
| number | oldSlot | No description |  |
| number | newSlot | No description |  |


------
## Returns

| Type   | Description |
| ------ | ----------: |
| boolean | Local move was successful |

