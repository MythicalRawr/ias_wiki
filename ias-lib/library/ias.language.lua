---@meta

---
---@class language
---* language's entry class.
---
language = {}

---
---@env CLIENT
---@return string
---* Returns the current game language
---
function language:getLanguage() end

---
---@env CLIENT
---@param lang string
---* Sets the game language (en, pt, etc)
---
function language:setLanguage(lang) end

---
---@env CLIENT
---@param modID string
---@param key string
---@param ...? any
---@return string
---* Returns the i18n string (values are optional)
---
function language:get(modID, key, ...) end
