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

---
---@env CLIENT
---@return number
---* Returns the width of the game window
---
function ui:width() end

---
---@env CLIENT
---@return number
---* Returns the height of the game window
---
function ui:height() end

---
---@env CLIENT
---@param id string "Unique popup id"
---@param title string "The popup title"
---@param message string "The popup message"
---@param type? UI_POPUP_TYPE "The popup type (Default: GENERIC)"
---@return Frame
---* Creates a popup and returns it's frame
---
function ui:createPopup(id, title, message, type) end

-------------------------------------------

---
---UIBase's entry class.
---
---@class UIBase
UIBase = {}
