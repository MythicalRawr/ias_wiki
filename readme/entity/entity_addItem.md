# [Entity](../entity/README.md):addItem

### <img src="../../.gitbook/assets/server.png" width="32" height="32" /> [Entity](../entity/README.md):addItem

```lua
boolean Entity:addItem(id, amount, slot, metadata)
```

Adds the given item id to the ent storage (ent needs to be marked with setStorage)<br>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | id | No description |  |
| number | amount | Defaults: 1 | ✔ |
| number | slot | Defaults: -1 | ✔ |
| table | metadata | Defaults: nil | ✔ |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| boolean | No description |
