---@meta

---
---language's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class language
language = {}

---
---@ENV CLIENT
---@return string
---* Returns the current game language
---
function language:getLanguage() end

---
---@ENV CLIENT
---@param lang string
---* Sets the game language (en, pt, etc)
---
function language:setLanguage(lang) end

---
---@ENV CLIENT
---@param modID string
---@param key string
---@param ...? any
---@return string
---* Returns the i18n string (values are optional)
---
function language:get(modID, key, ...) end
