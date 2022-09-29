---@meta

---
---net's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class net
net = {}

---
---@env SERVER
---@see net:broadcast
---@param netId string
---@param msg Packet
---@param ply Player
---@param reliable? boolean "optional = true"
---* Sends a Packet to a specific Player.
---
function net:send(netId, msg, ply, reliable) end

---
---@env SERVER
---@param netId string
---@param msg Packet
---@param reliable? boolean "optional = true"
---* Broadcasts a Packet to all connected players
---
function net:broadcast(netId, msg, reliable) end

---
---@env CLIENT
---@param netId string
---@param msg Packet
---@param reliable? boolean "optional = true"
---* Sends a Packet to the server
---
function net:sendToServer(netId, msg, reliable) end

---
---@env SHARED
---@param netId string
---@param hookName string
---@param callback function "fun(data: any)"
---* Creates a listener for a specific netId. Make sure your hookName is unique, it might get replaced by other listeners!
---
function net:listen(netId, hookName, callback) end

---
---@env SHARED
---@param netId string
---@param hookName string
---* Remove a listener for a specific netId
---
function net:remove(netId, hookName) end
