---@meta

---
---@class ui
---* ui's entry class.
---
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
---@class UIBase
UIBase = {}
