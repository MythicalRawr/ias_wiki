---
sidebar_label: lights:create
sidebar_class_name: env-client
---

### ![](/img/wiki/client.png) [lights](../lights/README.md):create

:::warning
MAKE SURE YOU REMOVE THE LIGHT AFTER YOU ARE DONE WITH IT
:::


```lua
light lights:create(pos, color, fallStart, fallEnd, lumi)
```

Creates a light at the given location (client side only)<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [Vector](../vector/README.md) | pos | No description |   |
| [Color](../color/README.md) | color | No description |   |
| number | fallStart | No description | ✔ |
| number | fallEnd | No description | ✔ |
| number | lumi | No description | ✔ |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| [light](../light/README.md) | No description |
