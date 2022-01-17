---@meta

---
---MOD's entry class
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class MOD
MOD = {}

---
---@ENV SHARED
---* Called when the mod initializes
---
function MOD:init() end


---
---@ENV SHARED
---* Called when the mod begins loading content, you should pre-load all the content here
---
function MOD:onLoad() end

---
---@ENV CLIENT
---@param state string The state opened (ie 'ingame', 'mainmenu', etc)
---* Global event called by the game when the state is entered
---
function MOD:onStateEnter(state) end

---
---@ENV CLIENT
---@param state string The state opened (ie 'ingame', 'mainmenu', etc)
---* Global event called by the game before the state is changed
---
function MOD:onStateLeave(state) end

---
---@ENV SHARED
---@param ply Player
---* Global event called when a player joins the game
---
function MOD:onPlayerJoin(ply) end

---
---@ENV SHARED
---@param delta number
---* Global event called every tick update
---
function MOD:update(delta) end
