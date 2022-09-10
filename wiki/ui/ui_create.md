## ![](images/client.png "CLIENT") ui:create

```lua
UIBase ui:create(string uiType, [UIBase parent]=nil)
```

> Creates a new ui base element.
>
> - Allowed types :
>   - [frame](ui_frame)
>   - [group](ui_group)
>   - [button](ui_button)
>   - [progress_bar](ui_progress_bar)
>   - [input](ui_input)
>   - [inventory_slot](ui_inventory_slot)
>   - [label](ui_label)

### Arguments

| Type                | Name   | Description       | Optional |
| ------------------- | ------ | ----------------- | -------: |
| string              | uiType | UI base type      |          |
| [UIBase](ui_UIBase) | parent | UI parent element |     true |

‌‌ ‌‌

### Returns

| Type                |                                                Description |
| ------------------- | ---------------------------------------------------------: |
| [UIBase](ui_UIBase) | The newly created ui element (of the given `uiType` above) |
