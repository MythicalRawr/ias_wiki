# [resources](../resources/README.md):getHTTPSound

### <img src="../../.gitbook/assets/client.png" width="32" height="32" /> $TITLE_NAME$

{% hint style="warning" %} If blocking is set, the sound will be destroyed after playing. {% endhint %}
{% hint style="error" %} Loop will not working if blocking is set {% endhint %}


```lua
Sound resources:getHTTPSound(url, loadFlags)
```

Returns a Sound object if loaded successfully.<br>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| string | url | No description |  |
| [LOAD.SOUND_FLAGS](../load.sound_flags/README.md) | loadFlags | No description | ✔ |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| [Sound](../sound/README.md) | No description |
