Roblox Function Argument Checker

A simple module for validating function arguments in Roblox Lua.

How it works

The module exposes a :Check() function that takes three parameters:

1. The value to check  
2. The expected type as a string
3. The argument index (used for error messages)

It returns two values:
- true if the value matches the type, otherwise false
- An error message if the check fails

Example:

local Checker = require(game:GetService("ReplicatedStorage").Checker)

local function hi(name)
	local result, err = Checker:Check(name, "string", 1)
	assert(result, err)

	print("hello " .. name .. "!")
end

-- Example usage:

hi(false)
-- Output:
-- Argument #1 expects a string, but boolean was given.

hi("world")
-- Output:
-- Hello, world!

Notes

- Helps avoid repetitive argument checks in functions.
- Can be reused across multiple modules and systems.
- Doesn't throw errors automatically - use with assert() or handle how you want.
