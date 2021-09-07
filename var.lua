function var(var, value)
  local file = filesystem.open(var .. ".ttb", "w")
  file:write(var .. " = " .. value)
  file:close()
end
