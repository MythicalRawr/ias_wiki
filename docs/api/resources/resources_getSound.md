---
sidebar_label: resources:getSound
sidebar_class_name: env-tag env-client
title: resources:getSound
---

# <img src='/img/wiki/client.png' alt='client' classname='env-tag' /> [resources](../resources/README.md):getSound

```lua
Sound resources:getSound(path, loadFlags)
```

Returns a Sound object if loaded successfully, you should use preLoad on Mod:onLoad() to pre-load the sound and not block the client<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | path | No description |   |
| [LOAD.SOUND_FLAGS](../load.sound_flags/README.md) | loadFlags | No description | ✔ |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| [Sound](../sound/README.md) | No description |
