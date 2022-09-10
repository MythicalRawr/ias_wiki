## ![](images/client.png "CLIENT")![](images/event.png "EVENT") MOD:onStateLeave

```lua
void MOD:onStateLeave(string oldState)
```

> Global event called by the game before the state is changed

## Game states

```
mainmenu
loading
ingame
```

### Arguments

| Type   | Name     | Description        | Optional |
| ------ | -------- | ------------------ | -------: |
| string | oldState | The previous state |          |
