---@meta

---
---@type boolean
---@hint @info "For SHARED code, just don't check for SERVER or CLIENT"
---* Returns true if the current code is running on the SERVER
---
---[IasWiki](https://github.com/MythicalRawr/ias_wiki/wiki/global)
---
_G.SERVER = false

---
---@type boolean
---@hint @info "For SHARED code, just don't check for SERVER or CLIENT"
---* Returns true if the current code is running on the CLIENT
---
---[IasWiki](https://github.com/MythicalRawr/ias_wiki/wiki/global)
---
_G.CLIENT = false


---
---@type number
---* Returns the TPS of the game
_G.GAME_TPS = nil

---
---@type number
---* Returns simulation steps
_G.PHYS_VEL_STEPS = nil

---
---@type number
---* Returns simulation steps
_G.PHYS_POS_STEPS = nil

---
---@type number
---* Returns max physics velocity
_G.PHYS_MAX_VEL = nil

---
---@type number
---* Returns default angular damping
_G.PHYS_DEFAULT_ANG_DAMPING = nil

---
---@type number
---* Returns default linear damping
_G.PHYS_DEFAULT_LINEAR_DAMPING = nil

---
---@type number
---* Returns space angular damping
_G.PHYS_SPACE_ANG_DAMPING = nil

---
---@type number
---* Returns space linear damping
_G.PHYS_SPACE_LINEAR_DAMPING = nil

---
---@type number
---* Returns player angular damping
_G.PHYS_PLY_ANG_DAMPING = nil

---
---@type number
---* Returns player I DONT KNOW HOW TO FUCKING SPELL THAT damping
_G.PHYS_PLY_LINEAR_DAMPING = nil

---
---@type number
---* Returns the amount of inventory slots for the player
_G.PLAYER_STARTING_INVENTORY = nil

---
---@type number
---* Returns the default selected player slot
_G.PLAYER_INVENTORY_DEFAULT_SELECT = nil

---
---@type number
---* Returns the starting distance of light falloff
_G.PLAYER_LIGHT_FALLOFF_START = nil

---
---@type number
---* Returns the end of distance of light falloff
_G.PLAYER_LIGHT_FALLOFF_END = nil

---
---@type number
---* Returns the luminace of the place
_G.PLAYER_LIGHT_LUMINANCE = nil

---
---@type number
---* Returns the maximum camera offset
_G.PLAYER_MAX_CAM_OFFSET = nil

---
---@type number
---* Returns maximum clicking distance
_G.PLAYER_MAX_CLICKING_DISTANCE = nil

---
---@type number
---* Returns the minimum grabbing distance for the player
_G.PLAYER_MIN_GRAB_DISTANCE = nil

---
---@type number
---* Returns the maximum grabbing distance for the player
_G.PLAYER_MAX_GRAB_DISTANCE = nil

---
---@type number
---* Returns the max walking speed of the player
_G.PLAYER_SPEED = nil

---
---@type number
---* Returns the max running speed of the player
_G.PLAYER_RUN_SPEED = nil

---
---@type number
---* Returns the speed multiplier of noclip upon the player speed
_G.PLAYER_NOCLIP_MULT = nil

---
---@type number
---* Returns the amount of time it takes for a entity to be faded away
_G.PLAYER_MEMORY_DEGRADATION_TIME = nil

---
---@type number
---* Returns the max health of the player
_G.PLAYER_MAX_HEALTH = nil

---
---@type number
---* Returns the size of the oxygen tank of the player
_G.PLAYER_MAX_OXYGEN = nil

---
---@type number
---* Returns the amount of damage the player gets while suffocating
_G.PLAYER_DAMAGE_NO_OXYGEN_MULT = nil

---
---@type number
---* Returns the amount of damage the player gets while on fire
_G.PLAYER_DAMAGE_FIRE_MULT = nil

---
---@type number
---* Returns the size of the input buffer
_G.PREDICTION_INPUT_BUFFER = nil

---
---@type number
---* Returns the max amount of redundant inputs
_G.PREDICTION_MAX_RENDUNDANT_INPUTS = nil

---
---@type number
---* Returns the update rate towards the server<->client
_G.PREDICTION_UPDATE_RATE = nil

---
---@type number
---* Returns the buffer size of prediction snapshots
_G.PREDICTION_SERVER_SNAPSHOT_BUFFER_SIZE = nil

---
---@type number
---* Returns bitwise mask for snapshots
_G.PREDICTION_SERVER_SNAPSHOT_BUFFER_MASK = nil

---
---@type number
---* Returns client command list buffer
_G.PREDICTION_CLIENT_CMD_BUFFER_SIZE = nil

---
---@type number
---* Returns client command mask
_G.PREDICTION_CLIENT_CMD_BUFFER_MASK = nil

---
---@type number
---* Returns client snapshot queue size
_G.PREDICTION_CLIENT_SNAPSHOT_QUEUE_BUFFER = nil

---
---@type number
---* Returns the size of one tile in meters
_G.TILE_METERS = nil

---
---@type number
---* Returns the max amount of tiles on the X and Y axis used for grids
_G.MAX_BUILDING_TILES_W_H = nil

---
---@type number
---* Returns max amount of sound instances playing at the same time per sound
_G.MAX_SOUND_INSTANCES = nil

---
---@type number
---* Returns the PSI of one atmosphere unit, which should correspond to the normal PSI on earth above sea level
_G.ATMOS_ATMOSPHERE = nil

---
---@type number
---* Returns the minimum amount of difference needed for gas to flow to another tile
_G.ATMOS_EQUALIZE_OFFSET = nil

---
---@type number
---* Returns the amount of PSI needed to yeet objects across the room
_G.ATMOS_PSI_PUSH_NEEDED = nil

---
---@type number
---* Returns the amount of force per PSI that gets applied to objects
_G.ATMOS_PSI_PUSH_FORCE = nil

---
---@type number
---* Returns the circular range of objects that get yeeted around on enough PSI from the center of the tile that is being pushed from
_G.ATMOS_PSI_PUSH_RANGE = nil

---
---@type number
---* Returns the mixing divider of ATMOS
_G.ATMOS_MIX_DIVIDER = nil

---
---@type number
---* Returns the minimum amount of mixing on a gas per tick
_G.ATMOS_MIX_MINIMUM = nil

---
---@type number
---* Returns the minimum amount of oxygen PSI needed for a player to breath
_G.ATMOS_PLY_OXYGEN_MINIMUM_PSI = nil

---
---@type number
---* Returns the scaling for oxygen units in a tank and oxygen gas per PSI
_G.ATMOS_PLY_OXYGEN_SCALE = nil

---
---@type number
---* Returns the amount of fire that persists every tick, remainer gets converted to CO2
_G.ATMOS_GAS_FIRE_BURN_RATE = nil

---
---@type number
---* Returns the minimum amount of fire needed to stay burning
_G.ATMOS_GAS_FIRE_MINIMUM_FUEL = nil

---
---@type number
---* Returns the max amount of oxygen to burn to CO2 and more fire
_G.ATMOS_GAS_FIRE_MAX_CONSUME = nil

---
---@type number
---* Returns the minimum round amount for gasses
_G.ATMOS_GAS_MINIMUM_AMOUNT_ROUND = nil

---
---@env CLIENT
---@return Player
---* Returns the local player if exists
---
---[IasWiki](https://github.com/MythicalRawr/ias_wiki/wiki/global)
---
LocalPlayer = function() end

---
---@env SHARED
---@return number
---* Returns the epoch unix time in milliseconds (from 1/1/1970)... until 2038, then we are all doomed.
---
curtime = function() end

---
---@env CLIENT
---@return Vector
---* Returns the local player last mouse position
---
getMousePos = function() end

---
---@env SHARED
---@param tbl table
---* Pretty prints the given table
---
printTable = function(tbl) end

---
---@env SHARED
---@param el any
---@return boolean
---* Returns true if its a number
---
isNumber = function(el) end

---
---@env SHARED
---@param el any
---@return boolean
---* Returns true if its a table
---
isTable = function(el) end

---
---@env SHARED
---@param el any
---@return boolean
---* Returns true if its a string
---
isString = function(el) end