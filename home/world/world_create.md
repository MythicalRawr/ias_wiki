# world:create

```lua
entity world:create(string class, [entity parentShip])
```

> Creates and spawns a new entity on the world

‌‌ ‌‌

## Arguments

| Type   | Name       | Description                                                               | Optional |
| ------ | ---------- | ------------------------------------------------------------------------- | -------: |
| string | class      | The entity class to be created                                            |          |
| entity | parentShip | The [ship](../../wiki/world/) to be parented to, if not set, uses "space" |        ✔ |

‌‌ ‌‌

## Returns

| Type                        |              Description |
| --------------------------- | -----------------------: |
| [Entity](../../wiki/world/) | The newly created entity |
