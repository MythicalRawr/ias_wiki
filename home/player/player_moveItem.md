## ![client](.gitbook/assets/client.png) Player:moveItem


```lua
boolean Player:moveItem(oldStorage, newStorage, oldSlot, newSlot)
```

Locally moves an item from an inventory to another inventory and sends a validation request to the server.
The moving player must be marked as a viewer on server and be within range of both inventories!


------
## Parameters

| Type   | Name | Description              | Optional |
| ------ | ---- | ------------------------ | -------: |
| ENT | oldStorage |  |  |
| ENT | newStorage |  |  |
| number | oldSlot |  |  |
| number | newSlot |  |  |

------
## Returns

| Type | Description |
| ---- | ----------: |
| boolean | move |

