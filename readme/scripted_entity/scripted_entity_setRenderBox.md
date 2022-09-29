## <img src="../../.gitbook/assets/shared.png" width="24" height=24 /> [ENT](https://iaswiki.rawr.dev/readme/ent):setRenderBox

```lua
void ENT:setRenderBox(aabb)
```

Sets the render box of the entity.,⚠ `initPhysics` & `initCirclePhysics` **reset** this value. Should be placed **after** calling those (inside `createPhysics`) ⚠,⚠ **If the entity has not physics this needs to be set, for VIS to work** ⚠

------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [AABB](https://iaswiki.rawr.dev/readme/aabb) | aabb | No description |  |

