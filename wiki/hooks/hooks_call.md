## ![](images/shared.png "SHARED") hooks:call

```lua
void hooks:call(string hookId, ...data)
```

> Emits data to the given **hookId**

Custom hook example:

```lua
hooks:add("custom-hook", "derp", function(arg1, arg2)
	print("MY CUSTOM HOOK", arg1, arg2) -- will print derp, arg
end)

hooks:call("custom-hook", "derp", "arg")
```

### Arguments

| Type   | Name   | Description                | Optional |
| ------ | ------ | -------------------------- | -------: |
| string | hookId | The hook id to transmit to |          |
| ...    | data   | The data to transmit       |          |
