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
function console:execute(args)
end

---
---@env SHARED
---* Clears the console
---
function console:clear()
end

---
---@env SHARED
---@param text string
---@param type? CONSOLE.LOG "Default: CONSOLE.LOG.DEBUG"
---* Prints the text on the console
---
function console:print(text, type)
end

---
---@env SHARED
---@param command string
---@param callback function "fun(args: string[], userID: number): success: boolean, msg: string"
---@param description? string ""
---@param flags? CONSOLE.FLAGS ""
---@hint @warning "Console commands should be registered on the MOD:init() function"
---@hint @warning "The command id needs to be unique"
---* Registers a new console command
---
---```lua
---console:registerMethod("my_command", function(args, userID)
---	if #args <= 1 then return false, "Missing arguments" end
---
---	console:print("Awesome " .. args[2], CONSOLE.LOG.DEBUG)
---	return true, "OK!"
---end, "My command description", CONSOLE.FLAGS.CHEATS | CONSOLE.FLAGS.ADMIN) -- Admin only and requires cheats enabled
---```
---
function console:registerMethod(command, callback, description, flags)
end

---
---@env SHARED
---@param command string
---@param var number|string|boolean
---@param description? string "Default: ''"
---@param flags? CONSOLE.FLAGS "Default: ''"
---@hint @warning "Console commands should be registered on the MOD:init() function"
---@hint @warning "The command id needs to be unique"
---* Registers a new console command
---
---```lua
---local myVar = false
---console:registerVariable("my_command", myVar, "My command description", CONSOLE.FLAGS.CHEATS | CONSOLE.FLAGS.ADMIN) -- Admin only and requires cheats enabled
---```
---
function console:registerVariable(command, var, description, flags)
end
