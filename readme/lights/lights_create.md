## ![client](.gitbook/assets/client.png) [lights](./readme/lights/README.md):create

```lua
light lights:create(pos, color, fallStart, fallEnd, lumi)
```

Creates a light at the given location (client side only),⚠ MAKE SURE YOU REMOVE THE LIGHT AFTER YOU ARE DONE WITH IT ⚠

------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [Vector](./readme/Vector/README.md) | pos | No description |  |
| [Color](./readme/Color/README.md) | color | No description |  |
| number | fallStart | No description | ✔ |
| number | fallEnd | No description | ✔ |
| number | lumi | No description | ✔ |


------
## Returns

| Type   | Description |
| ------ | ----------: |
| [light](./readme/light/README.md) | No description |

