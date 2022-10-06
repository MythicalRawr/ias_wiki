## <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> [ENT](../ent/README.md):setRenderBox

{% hint style="warning" %} `initPhysics` & `initCirclePhysics` **reset** this value. Should be placed **after** calling those (inside `createPhysics`) {% endhint %}
{% hint style="warning" %} If the entity has not physics this needs to be set, for VIS to work {% endhint %}


```lua
void ENT:setRenderBox(aabb)
```

Sets the render box of the entity.

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [AABB](../aabb/README.md) | aabb | No description |  |
