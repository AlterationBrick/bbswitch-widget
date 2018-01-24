function getState()
	local file = io.open("/proc/acpi/bbswitch", "r")
	local str = file:read()
	file:close()
	str = string.match(str, "%a+")
	return " NV "..str
end
