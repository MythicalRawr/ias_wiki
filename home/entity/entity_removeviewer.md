# Entity:removeViewer

```lua
void Entity:removeViewer(Player ply)
```

> Removes the player from the viewer list on the entity. You should do this when the user closes the inventory, so the inventory won't be synced to that player, preventing cheating

## Arguments

| Type                                      | Name | Description          | Optional |
| ----------------------------------------- | ---- | -------------------- | -------: |
| [Player](../../wiki/entity/player\_base/) | ply  | The player to remove |          |
