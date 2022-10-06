## <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> [http](../http/README.md):fetch

{% hint style="info" %} Available methods: DELETE, POST, GET, PUT, HEAD, OPTIONS, PATCH {% endhint %}


```lua
void http:fetch(url, headers, callback)
```

Queries the internetz using fetch.,By default it uses the method GET.

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | url | No description |  |
| table | headers | EX: { METHOD = 'GET' } |  |
| function | callback | fun(hasErrored: boolean, data: string): void |  |
