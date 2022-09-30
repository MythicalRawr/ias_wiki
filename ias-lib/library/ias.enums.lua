---@meta

---
---@class CONSOLE
---@field FLAGS table
---@field LOG table
_G.CONSOLE = {
	FLAGS = {},
	LOG = {}
}

---
---@enum CONSOLE.FLAGS
---@field CHEATS number
---@field ADMIN number
---@field DEVELOPER number
---
_G.CONSOLE.FLAGS = {
	CHEATS = 1,
	ADMIN = 2,

	DEVELOPER = 3 -- Internal
}

---
---@enum CONSOLE.LOG
---@field DEBUG number
---@field WARNING number
---@field ERROR number
---
_G.CONSOLE.LOG = {
	DEBUG = 3,
	WARNING = 4,
	ERROR = 5
}

-----------------

---
---@enum COMPONENTS
---@field TILE number
---
_G.COMPONENTS = {
	TILE = 1
}

---
---@enum USE
---@field NONE number
---@field SIMPLE number
---@field MENU number
---
_G.USE = {
	NONE = 0,
	SIMPLE = 1,
	MENU = 2
}

-----------------

---
---@enum GAS
---@field NONE number
---@field OXYGEN number
---@field STEAM number
---@field CO2 number
---@field NITROGEN number
---
_G.GAS = {
	NONE = 0,
	OXYGEN = 1,
	STEAM = 2,
	CO2 = 3,
	NITROGEN = 4
}

-----------------

---
---@enum FREEZE
---@field MOVEMENT number
---@field ROTATION number
---
_G.FREEZE = {
	MOVEMENT = 1,
	ROTATION = 2,
}

-----------------

---
---@enum ITEM_RARITY
---@field COMMON number
---@field RARE number
---@field EPIC number
---@field LEGENDARY number
---
_G.ITEM_RARITY = {
	COMMON = 0,
	RARE = 1,
	EPIC = 2,
	LEGENDARY = 3
}

-----------------

---
---@enum PHYSICS
---@field STATIC number
---@field DYNAMIC number
---@field TRIGGER number
---@field KINEMATIC number
---
_G.PHYSICS = {
	STATIC = 1,
	DYNAMIC = 2,
	TRIGGER = 3,
	KINEMATIC = 4
}

-----------------

---
---@enum WIRE
---@field POWER number
---@field IO number
---
_G.WIRE = {
	POWER = 1,
	IO = 2
}

-----------------

---
---@enum INPUT
---
_G.INPUT = {
	KEY = {
		SPACE = 32,
		APOSTROPHE = 39, -- '
		COMMA = 44, -- ,
		MINUS = 45, -- -
		PERIOD = 46, -- .
		SLASH = 47, -- /
		KEY_0 = 48,
		KEY_1 = 49,
		KEY_2 = 50,
		KEY_3 = 51,
		KEY_4 = 52,
		KEY_5 = 53,
		KEY_6 = 54,
		KEY_7 = 55,
		KEY_8 = 56,
		KEY_9 = 57,
		SEMICOLON = 59, -- ;
		EQUAL = 61, -- =
		A = 65,
		B = 66,
		C = 67,
		D = 68,
		E = 69,
		F = 70,
		G = 71,
		H = 72,
		I = 73,
		J = 74,
		K = 75,
		L = 76,
		M = 77,
		N = 78,
		O = 79,
		P = 80,
		Q = 81,
		R = 82,
		S = 83,
		T = 84,
		U = 85,
		V = 86,
		W = 87,
		X = 88,
		Y = 89,
		Z = 90,
		LEFT_BRACKET = 91, -- [
		BACKSLASH = 92, -- \
		RIGHT_BRACKET = 93, -- ]
		GRAVE_ACCENT = 96, -- `

		-- Function keys
		ESCAPE = 256,
		ENTER = 257,
		TAB = 258,
		BACKSPACE = 259,
		INSERT = 260,
		DELETE = 261,
		RIGHT = 262,
		LEFT = 263,
		DOWN = 264,
		UP = 265,
		PAGE_UP = 266,
		PAGE_DOWN = 267,
		HOME = 268,
		END = 269,
		CAPS_LOCK = 280,
		SCROLL_LOCK = 281,
		NUM_LOCK = 282,
		PRINT_SCREEN = 283,
		PAUSE = 284,
		F1 = 290,
		F2 = 291,
		F3 = 292,
		F4 = 293,
		F5 = 294,
		F6 = 295,
		F7 = 296,
		F8 = 297,
		F9 = 298,
		F10 = 299,
		F11 = 300,
		F12 = 301,
		F13 = 302,
		F14 = 303,
		F15 = 304,
		F16 = 305,
		F17 = 306,
		F18 = 307,
		F19 = 308,
		F20 = 309,
		F21 = 310,
		F22 = 311,
		F23 = 312,
		F24 = 313,
		F25 = 314,
		KP_0 = 320,
		KP_1 = 321,
		KP_2 = 322,
		KP_3 = 323,
		KP_4 = 324,
		KP_5 = 325,
		KP_6 = 326,
		KP_7 = 327,
		KP_8 = 328,
		KP_9 = 329,
		KP_DECIMAL = 330,
		KP_DIVIDE = 331,
		KP_MULTIPLY = 332,
		KP_SUBTRACT = 333,
		KP_ADD = 334,
		KP_ENTER = 335,
		KP_EQUAL = 336,
		LEFT_SHIFT = 340,
		LEFT_CONTROL = 341,
		LEFT_ALT = 342,
		LEFT_SUPER = 343,
		RIGHT_SHIFT = 344,
		RIGHT_CONTROL = 345,
		RIGHT_ALT = 346,
		RIGHT_SUPER = 347,
		MENU = 348,
		LAST = 348
	},
	MOUSE = {
		BUTTON_1 = 0,
		BUTTON_2 = 1,
		BUTTON_3 = 2,
		BUTTON_4 = 3,
		BUTTON_5 = 4,
		BUTTON_6 = 5,
		BUTTON_7 = 6,
		BUTTON_8 = 7,
		BUTTON_LAST = 7,
		BUTTON_LEFT = 0,
		BUTTON_RIGHT = 1,
		BUTTON_MIDDLE = 2
	}
}
