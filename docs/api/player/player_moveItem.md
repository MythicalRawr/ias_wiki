---
sidebar_label: Player:moveItem
sidebar_class_name: env-tag env-client
title: Player:moveItem
---

# <img src='/img/wiki/client.png' alt='client' classname='env-tag' /> [Player](../player/README.md):moveItem

:::info
The moving player must be marked as a viewer on server and be within range of both inventories!
:::


```lua
boolean Player:moveItem(oldStorage, newStorage, oldSlot, newSlot)
```

Locally moves an item from an inventory to another inventory and sends a validation request to the server.<br/>

-----------------
## Parameters

| Type   | Name | Description | Optional |
| ------ | ---- | ----------- | -------: |
| [ENT](../ent/README.md) | oldStorage | No description |   |
| [ENT](../ent/README.md) | newStorage | No description |   |
| number | oldSlot | No description |   |
| number | newSlot | No description |   |

-----------------
## Returns

| Type   | Description |
| ------ | ----------: |
| boolean | Local move was successful |
