# Entity:addViewer

```lua
void Entity:addViewer(Player ply)
```

> Adds a [Player](../../wiki/entity/player\_base/) to the viewer list. This tells the server what players to send the inventories to.

You should **addViewer** if your entity displays inventory slots, and you want the player that opened it to view those changes (preventing clients from seeing inventories that they did not open). You can also add multiple players.

⚠️ Make sure you run [Entity:removeViewer](../../wiki/entity/entity\_removeViewer/) to remove the player after you are done!

## Arguments

| Type                                      | Name | Description       | Optional |
| ----------------------------------------- | ---- | ----------------- | -------: |
| [Player](../../wiki/entity/player\_base/) | ply  | The player to add |          |
