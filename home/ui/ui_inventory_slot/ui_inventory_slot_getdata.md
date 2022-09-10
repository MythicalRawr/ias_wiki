## ![](images/client.png "CLIENT") [UIInventorySlot](ui_inventory_slot):getData

```lua
table UIInventorySlot:getData()
```

> Gets the inventory slot item data

```lua
{
	"id" = "<item id>",
	"description" = "<item description>",
	"icon" = "<item icon path>",
	"rarity" = "<item rarity>",
	"slot" = "<item slot on the inventory>",
	"count" = "<item count>",
	"max" = "<item max>"
}
```

### Returns

| Type  | Description        |
| ----- | ------------------ |
| table | Contains item data |
