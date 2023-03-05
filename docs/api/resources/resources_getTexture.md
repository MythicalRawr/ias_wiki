---
sidebar_label: resources:getTexture
sidebar_class_name: env-tag env-client
title: resources:getTexture
---

# <img src='/img/wiki/client.png' alt='client' data-tag='env-tag' /> [resources](../resources/README.md):getTexture

```lua
Texture resources:getTexture(path, loadFlags)
```

Returns a Texture object if loaded successfully, you should use preLoad on Mod:onLoad() to pre-load the texture and not block the client<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | path | No description |   |
| [LOAD.TEXTURE_FLAGS](../load.texture_flags/README.md) | loadFlags | No description | ✔ |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| [Texture](../texture/README.md) | No description |
