## ![](images/client.png "CLIENT") [UIInventorySlot](ui_inventory_slot):setData

```lua
void UIInventorySlot:setData([table data] = nil, [boolean fixPaths] = false)
```

> Sets the inventory slot data.

---

**It expects the following data format:**

```lua
{
	"id" = "<item id> [REQUIRED]",
	"description" = "<item description> [REQUIRED]",
	"icon" = "<item icon path> [REQUIRED]",
	"rarity" = "<item rarity> [REQUIRED]",
	"slot" = "<item slot on the inventory> [REQUIRED]",

	"count" = "<item count> [Required if max is set]",
	"max" = "<item max> [Required if count is set]"
}
```

Item's without a `count` and a `max` are **not stackable**

### Arguments

| Type  | Name     | Description                                                                                                                     | Optional |
| ----- | -------- | ------------------------------------------------------------------------------------------------------------------------------- | -------: |
| table | data     | Item data to display (if none is pass, it's an empty slot)                                                                      |     true |
| table | fixPaths | Set to true if you want the game to fix the icon path, this should be ignored unless you are showcasing an item for some reason |     true |
