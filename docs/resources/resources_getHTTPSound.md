---
sidebar_label: resources:getHTTPSound
sidebar_class_name: env-client
---

### ![](/img/wiki/client.png) [resources](../resources/README.md):getHTTPSound

:::warning
If blocking is set, the sound will be destroyed after playing.
:::
:::error
Loop will not working if blocking is set
:::


```lua
Sound resources:getHTTPSound(url, loadFlags)
```

Returns a Sound object if loaded successfully.<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | url | No description |   |
| [LOAD.SOUND_FLAGS](../load.sound_flags/README.md) | loadFlags | No description | ✔ |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| [Sound](../sound/README.md) | No description |
