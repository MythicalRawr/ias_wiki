---@meta

---
---@class console
---* console's entry class.
---
console = {}

---
---@env SHARED
---@param args string[]
---@return boolean "If command was executed successfully"
---@return string "The error / success message"
---* Executes a console command programmatically
---
---```lua
-----my_command is the command to execute, true is a parameter
---console:execute({"my_command", "true"})
---```
---
function console:execute(args) end

---
---@env SHARED
---* Clears the console
---
function console:clear() end

---
---@env SHARED
---@param text string
---@param type? CONSOLE.LOG
---* Prints the text on the console
---
function console:print(text, type) end

---
---@env SHARED
---@param command string
---@param callback function "fun(args: string[]): success: boolean, msg: string"
---@param description? string
---@param flags? CONSOLE.FLAGS
---* Registers a new console command (the command id needs to be unique)
---
---```lua
---console:register("my_command", function(args)
---	if #args <= 1 then return false, "Missing arguments" end
---
---	console:print("Awesome " .. args[2], CONSOLE.LOG.DEBUG)
---	return true, ""
---end, "My command description", CONSOLE.FLAGS.CHEATS | CONSOLE.FLAGS.ADMIN) -- Admin only and requires cheats
---```
---
function console:register(command, callback, description, flags) end
