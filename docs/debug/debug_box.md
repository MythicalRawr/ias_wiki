---
sidebar_label: worldDebug:box
sidebar_class_name: env-client
---

### ![](/img/wiki/client.png) [worldDebug](../worlddebug/README.md):box

```lua
void worldDebug:box(pos, ttl, size, color, outline)
```

Draws a 3D debug box that will vanish after the given ttl time<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [Vector3](../vector3/README.md) | pos | No description |   |
| number | ttl | No description |   |
| [Vector](../vector/README.md) | size | Default: {2, 2} | ✔ |
| [Color](../color/README.md) | color | Default: Yellow | ✔ |
| boolean | outline | Default: true | ✔ |
