---@meta

---
---console's entry class.
---
--- [Ias Wiki](https://github.com/MythicalRawr/ias_wiki/wiki)
---@class console
console = {}

---
---@ENV SHARED
---@param args string[]
---@return boolean, string
---|"If command was executed successfully"
---|"The error / success message"
---* Executes a console command programmatically
---
---```lua
-----my_command is the command to execute, true is a parameter
---console:execute({"my_command", "true"})
---```
---
function console:execute(args) end

---
---@ENV SHARED
---* Clears the console
---
function console:clear() end

---
---@ENV SHARED
---@param text string
---@param type? CONSOLE.LOG
---* Prints the text on the console
---
function console:print(text, type) end

---
---@ENV SHARED
---@param command string
---@param callback fun(args: string[]): success: boolean, msg: string "⚠️ The callback must return a boolean and a string (true or false if sucessfull, and the error / sucess message) ⚠️"
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
