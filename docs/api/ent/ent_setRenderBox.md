---
sidebar_label: ENT:setRenderBox
sidebar_class_name: env-tag env-shared
title: ENT:setRenderBox
---

# <img src='/img/wiki/shared.png' alt='shared' data-tag='env-tag' /> [ENT](../ent/README.md):setRenderBox

:::warning
`initPhysics` & `initCirclePhysics` **reset** this value. Should be placed **after** calling those (inside `createPhysics`)
:::
:::warning
If the entity has not physics this needs to be set, for VIS to work
:::


```lua
void ENT:setRenderBox(aabb)
```

Sets the render box of the entity.<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [AABB](../aabb/README.md) | aabb | No description |   |
