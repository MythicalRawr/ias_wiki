## ![](images/shared.png "SHARED") [Entity](entity_base):isValid

```lua
boolean Entity:isValid()
```

> Returns true if the entity is still valid on the game (ex: becomes false after calling :destroy())

Ex:

```lua
if myBox ~= nil and myBox:isValid() then
	print(myBox:ID)
else
	print("myBox is no longer valid :(")
end
```

### Returns

| Type |            Description |
| ---- | ---------------------: |
| bool | If the entity is valid |
