## <img src="../../.gitbook/assets/client.png" width="32" height="32" /> [Player](../player/README.md):moveItem

{% hint style="info" %} The moving player must be marked as a viewer on server and be within range of both inventories! {% endhint %}


```lua
boolean Player:moveItem(oldStorage, newStorage, oldSlot, newSlot)
```

Locally moves an item from an inventory to another inventory and sends a validation request to the server.<br>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [ENT](../ent/README.md) | oldStorage | No description |  |
| [ENT](../ent/README.md) | newStorage | No description |  |
| number | oldSlot | No description |  |
| number | newSlot | No description |  |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| boolean | Local move was successful |
