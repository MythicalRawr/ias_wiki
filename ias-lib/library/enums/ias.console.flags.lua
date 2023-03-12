---@meta

---
---@enum CONSOLE.FLAGS
---@env SHARED
---@field CONSOLE.FLAGS.CHEATS number
---@field CONSOLE.FLAGS.ADMIN number
---@field CONSOLE.FLAGS.DEVELOPER number
---@field CONSOLE.FLAGS.CLIENT.VALIDATE number
---@field CONSOLE.FLAGS.SERVER.REPLICATE number
CONSOLE.FLAGS = {
    CHEATS = 2,
    ADMIN = 4,
    DEVELOPER = 8, -- Internal
    CLIENT = {
        VALIDATE = 10
    },
    SERVER = {
        REPLICATE = 12
    },
}
