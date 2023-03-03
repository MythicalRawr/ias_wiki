---
sidebar_label: http:fetch
sidebar_class_name: env-shared
---

### ![](/img/wiki/shared.png) [http](../http/README.md):fetch

:::info
Available methods: DELETE, POST, GET, PUT, HEAD, OPTIONS, PATCH
:::


```lua
void http:fetch(url, headers, callback)
```

Queries the internetz using fetch.<br/>By default it uses the method GET.<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | url | No description |   |
| table | headers | EX: { METHOD = 'GET' } |   |
| function | callback | fun(hasErrored: boolean, data: string): void |   |
