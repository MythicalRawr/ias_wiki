# ui:create

```lua
UIBase ui:create(string uiType, [UIBase parent]=nil)
```

> Creates a new ui base element.
>
> * Allowed types :
>   * [frame](../../wiki/ui/ui\_frame/)
>   * [group](../../wiki/ui/ui\_group/)
>   * [button](../../wiki/ui/ui\_button/)
>   * [progress\_bar](../../wiki/ui/ui\_progress\_bar/)
>   * [input](../../wiki/ui/ui\_input/)
>   * [inventory\_slot](../../wiki/ui/ui\_inventory\_slot/)
>   * [label](../../wiki/ui/ui\_label/)

## Arguments

| Type                                | Name   | Description       | Optional |
| ----------------------------------- | ------ | ----------------- | -------: |
| string                              | uiType | UI base type      |          |
| [UIBase](../../wiki/ui/ui\_UIBase/) | parent | UI parent element |        ✔ |

‌‌ ‌‌

## Returns

| Type                                |                                                Description |
| ----------------------------------- | ---------------------------------------------------------: |
| [UIBase](../../wiki/ui/ui\_UIBase/) | The newly created ui element (of the given `uiType` above) |
