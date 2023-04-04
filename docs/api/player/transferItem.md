---
sidebar_label: Player:transferItem
sidebar_class_name: env-tag env-client
title: Player:transferItem
description: Player:transferItem
hide_title: true
---
<!--
AUTOGENERATED - DON'T EDIT
Your edits in this file will be overwritten in the next build!
-->
# <img src='/img/wiki/client.png' alt='client' data-tag='env-tag' /> [Player](../player/README.md):transferItem

:::info
The moving player must be marked as a viewer on server and be within range of both inventories!
:::


```lua
boolean Player:transferItem(oldStorage, oldSlot)
```

Locally transfers an item from an inventory to any other open inventory and sends a validation request to the server.<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [Storage](../storage/README.md) | oldStorage | No description |   |
| number | oldSlot | No description |   |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| boolean | Local move was successful |