---@meta

---
---ui's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class ui
ui = {}

---
---@env CLIENT
---@param uiType string "frame, group, button, progress_bar, input, inventory_slot, label, image, keypad, item_list"
---@param parent? UIBase
---@return UIBase
---* Creates a new ui base element.
---
function ui:create(uiType, parent) end

-------------------------------------------

---
---UIBase's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class UIBase
UIBase = {}
