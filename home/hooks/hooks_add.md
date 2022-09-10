## ![](images/shared.png "SHARED") hooks:add

```lua
void hooks:add(string hookId, string hookName, function callback(...))
```

> Creates a hook (aka listener) for a specific **hookId**

Make sure your hook **hookName** is unique, it might get replaced by other hooks!

Ex:

```lua
-- Prints all executed commands on the console
hooks:add("onConsoleCommand", "test", function(id, args)
	print("running", id)
	printTable(args)
end)
```

### Arguments

| Type     | Name     | Description              | Optional |
| -------- | -------- | ------------------------ | -------: |
| string   | hookId   | The hook id to listen to |          |
| string   | hookName | This hook unique id      |          |
| function | callback | Callback with hook data  |          |
