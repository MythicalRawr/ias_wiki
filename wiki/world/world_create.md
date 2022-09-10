## ![](images/server.png "SERVER") world:create

```lua
entity world:create(string class, [entity parentShip])
```

> Creates and spawns a new entity on the world

‌‌ ‌‌

### Arguments

| Type   | Name       | Description                                                | Optional |
| ------ | ---------- | ---------------------------------------------------------- | -------: |
| string | class      | The entity class to be created                             |          |
| entity | parentShip | The [ship](./) to be parented to, if not set, uses "space" |     true |

‌‌ ‌‌

### Returns

| Type         |              Description |
| ------------ | -----------------------: |
| [Entity](./) | The newly created entity |
