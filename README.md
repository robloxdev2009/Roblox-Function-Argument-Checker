# Roblox-Function-Argument-Checker
checks for all arguments for a function

This is module script can easily be called with :Check(). 

# It takes 3 arguments.

#1: The value you want to check

#2 The expected type for the value (boolean, function, number, etc)

#3 The argumment that is being checked.

Example function:

local function hi(name)
  local result, err = Checker:Check(name, "string", 1)
  assert(result, err)

  print("Hello, "..name.."!")
end

Example calls for function:

#1
hi(false)
output:
Argument #1 execpts a string, but boolean was given.

#2
hi("world")
output:
Hello, world!
