# [http](../http/README.md):fetch

### <img src="../../.gitbook/assets/shared.png" width="32" height="32" /> $TITLE_NAME$

{% hint style="info" %} Available methods: DELETE, POST, GET, PUT, HEAD, OPTIONS, PATCH {% endhint %}


```lua
void http:fetch(url, headers, callback)
```

Queries the internetz using fetch.<br>By default it uses the method GET.<br>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | url | No description |  |
| table | headers | EX: { METHOD = 'GET' } |  |
| function | callback | fun(hasErrored: boolean, data: string): void |  |
