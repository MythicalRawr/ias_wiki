## <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> [Entity](../entity/README.md):initCirclePhysics

```lua
void Entity:initCirclePhysics(radius, phys, block)
```

Sets the entity physics with the given radius<br>If block is set, the VIS will be blocked by it<br>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| number | radius | No description |  |
| [PHYSICS](../physics/README.md) | phys | Defaults: PHYSICS.DYNAMIC | ✔ |
| boolean | block | Defaults: false | ✔ |
