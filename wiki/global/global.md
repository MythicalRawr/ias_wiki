## ![](../images/global.png "GLOBAL") Global variables

```lua
SERVER
```

> Returns true if the current code is running on the **server**

```lua
CLIENT
```

> Returns true if the current code is running on the **client**

For **SHARED** code, just don't check for `SERVER` or `CLIENT`

Ex:

```lua
if SERVER then
	print("SERVER CODE")
end

if CLIENT then
	print("CLIENT CODE")
end

print("SHARED CODE")
```

## ![](images/client.png "CLIENT") LocalPlayer()

```lua
Player LocalPlayer()
```

> Returns the local player (**nil** until the player fully connects to a server)

### Returns

| Type                     | Description      |
| ------------------------ | ---------------- |
| [Player](player_base.md) | The local player |

## ![](images/shared.png "SHARED") curtime()

```lua
number curtime()
```

> Returns the epoch unix time in milliseconds (from 1/1/1970)... until 2038, then we are all [doomed](https://youtu.be/6ssaV2zuKVI).

### Returns

| Type   | Description                 |
| ------ | --------------------------- |
| number | The current epoch unix time |
