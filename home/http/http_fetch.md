## ![](images/shared.png "SHARED")![](images/todo.png "UNFINISHED") http:fetch

`🚧 PAGE / FUNCTIONALITY STILL IN CONSTRUCTION`

```lua
void http:fetch(string url, table headers, function callback(hasErrored, data))
```

> Queries the internetz using fetch

By default it uses the method **GET**

Available methods: `DELETE, POST, GET, PUT, HEAD, OPTIONS, PATCH`

Ex:

```lua
http:fetch("https://google.com", { METHOD = "GET" }, function(hasErrored, data)
	if hasErrored then return print("FAILED: ", data) end
	print("Recieved data", data)
end)
```

### Arguments

| Type     | Name     | Description          | Optional |
| -------- | -------- | -------------------- | -------: |
| string   | url      | The url              |          |
| string   | headers  | Headers to be passed |          |
| function | callback | Callback method      |          |
