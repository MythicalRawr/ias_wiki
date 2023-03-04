---
sidebar_label: http:fetch
sidebar_class_name: env-tag env-shared
title: http:fetch
---

# <img src='/img/wiki/shared.png' alt='shared' classname='env-tag' /> [http](../http/README.md):fetch

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
