## ![shared](../../.gitbook/assets/shared.png) [http](https://iaswiki.rawr.dev/readme/http):fetch

```lua
void http:fetch(url, headers, callback)
```

Queries the internetz using fetch.,By default it uses the method GET.,Available methods: DELETE, POST, GET, PUT, HEAD, OPTIONS, PATCH

------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | url | No description |  |
| table | headers | EX: { METHOD = 'GET' } |  |
| function | callback | fun(hasErrored: boolean, data: string): void |  |

