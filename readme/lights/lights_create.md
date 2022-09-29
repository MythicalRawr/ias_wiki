## <img src="../../.gitbook/assets/client.png" width="32" height="32" /> [lights](../lights/README.md):create

```lua
light lights:create(pos, color, fallStart, fallEnd, lumi)
```

Creates a light at the given location (client side only),⚠ MAKE SURE YOU REMOVE THE LIGHT AFTER YOU ARE DONE WITH IT ⚠

------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [Vector](../vector/README.md) | pos | No description |  |
| [Color](../color/README.md) | color | No description |  |
| number | fallStart | No description | ✔ |
| number | fallEnd | No description | ✔ |
| number | lumi | No description | ✔ |


------
## Returns

| Type   | Description |
| ------ | ----------: |
| [light](../light/README.md) | No description |

