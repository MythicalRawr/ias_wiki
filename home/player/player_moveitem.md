# Player:moveItem

```lua
boolean Player:moveItem(Entity oldStorage, Entity newStorage, number oldSlot, number newSlot)
```

> Locally moves an item from an inventory to another inventory and sends a validation request to the server

⚠️ The moving player must be marked as a viewer on server and be within range of both inventories!

⚠️ You might want to use [Entity:moveItem](../../wiki/player/entity\_move\_item/) instead (SERVER-SIDE ONLY)!

## Arguments

| Type                                      | Name       | Description     | Optional |
| ----------------------------------------- | ---------- | --------------- | -------: |
| [Entity](../../wiki/player/entity\_base/) | oldStorage | The old storage |          |
| [Entity](../../wiki/player/entity\_base/) | newStorage | The new storage |          |
| number                                    | oldSlot    | The old slot    |          |
| number                                    | newSlot    | The new slot    |          |

## Returns

| Type    |               Description |
| ------- | ------------------------: |
| boolean | Local move was successful |
