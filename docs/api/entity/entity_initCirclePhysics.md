---
sidebar_label: Entity:initCirclePhysics
sidebar_class_name: env-tag env-shared
title: Entity:initCirclePhysics
---

# <img src='/img/wiki/shared.png' alt='shared' data-tag='env-tag' /> [Entity](../entity/README.md):initCirclePhysics

```lua
void Entity:initCirclePhysics(radius, phys, block)
```

Sets the entity physics with the given radius<br/>If block is set, the VIS will be blocked by it<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| number | radius | No description |   |
| [PHYSICS](../physics/README.md) | phys | Defaults: PHYSICS.DYNAMIC | ✔ |
| boolean | block | Defaults: false | ✔ |
