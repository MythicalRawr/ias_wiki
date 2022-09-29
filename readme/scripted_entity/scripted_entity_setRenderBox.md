## ![shared](../../.gitbook/assets/shared.png) [ENT](ent):setRenderBox

```lua
void ENT:setRenderBox(aabb)
```

Sets the render box of the entity.,⚠ `initPhysics` & `initCirclePhysics` **reset** this value. Should be placed **after** calling those (inside `createPhysics`) ⚠,⚠ **If the entity has not physics this needs to be set, for VIS to work** ⚠

------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [AABB](aabb) | aabb | No description |  |

