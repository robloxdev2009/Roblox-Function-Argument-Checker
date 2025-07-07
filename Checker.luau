local Checker = {}

local errormsg = "Argument #%d execpts a %s, but %s was given."

function Checker:Check(value:any, Type:string, arg:number)
	if value == nil or Type == nil or arg == nil then
		return false, string.format(errormsg, arg or -1, Type or "unknown", typeof(value) or "unknown")
	end
	
	if typeof(value) ~= Type then
		return false, string.format(errormsg, arg, Type, typeof(value))
	else
		return true
	end
end

return Checker
