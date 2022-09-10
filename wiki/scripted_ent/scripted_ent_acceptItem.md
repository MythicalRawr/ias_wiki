## ![](images/shared.png "SHARED")![](images/event.png "EVENT") ENT:acceptItem

```lua
boolean ENT:acceptItem(string itemId, number slot, Entity mover)
```

> Global event called everytime an item is moved / added to the storage on the entity
> If none is provided, it will default to true

Ex:

```lua
function ENT:acceptItem(item, slot, mover)
	if slot == 1 and item:ID() ~= "item_beer" then return false end
	if slot == 2 and item:ID() ~= "item_coin" then return false end

	return true
end
```

### Arguments

| Type                  | Name   | Description                  | Optional |
| --------------------- | ------ | ---------------------------- | -------: |
| string                | itemId | The item id being moved      |          |
| number                | slot   | The slot it wants to move to |          |
| [Entity](entity_base) | mover  | The moving entity            |          |

### Returns

| Type    |                                                Description |
| ------- | ---------------------------------------------------------: |
| boolean | Return true if the item can be added or false to be denied |
