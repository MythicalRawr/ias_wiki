---
sidebar_label: Console:register
sidebar_class_name: base
---

# [console](../console/README.md):register

```lua
void console:register(command, callback, description, flags)
```

Registers a new console command (the command id needs to be unique)<br/>

```lua
console:register("my_command", function(args, userID)
if #args <= 1 then return false, "Missing arguments" end

console:print("Awesome " .. args[2], CONSOLE.LOG.DEBUG)
return true, ""
end, "My command description", CONSOLE.FLAGS.CHEATS | CONSOLE.FLAGS.ADMIN) -- Admin only and requires cheats
```

---

## Parameters

| Type                                        | Name        | Description                                                        | Optional |
| ------------------------------------------- | ----------- | ------------------------------------------------------------------ | -------: |
| string                                      | command     | No description                                                     |          |
| function                                    | callback    | fun(args: string[], userID: number): success: boolean, msg: string |          |
| string                                      | description | Default: Empty                                                     |        ✔ |
| [CONSOLE.FLAGS](../console.flags/README.md) | flags       | Default: Empty                                                     |        ✔ |
