## ![client](.gitbook/assets/client.png) [lights](home/lights)



```lua
light lights:create(pos, color, fallStart, fallEnd, lumi)
```

Creates a light at the given location (client side only),⚠ MAKE SURE YOU REMOVE THE LIGHT AFTER YOU ARE DONE WITH IT ⚠

------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [Vector](home/Vector) | pos | No description |  |
| [Color](home/Color) | color | No description |  |
| number | fallStart | No description | ✔ |
| number | fallEnd | No description | ✔ |
| number | lumi | No description | ✔ |

------
## Returns

| Type   | Description |
| ------ | ----------: |
| [light](home/light) | No description |

