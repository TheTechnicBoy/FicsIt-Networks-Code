function var(var, value)
  local path = filesystem.path("/","VAR")
  filesystem.createDir(path)
  local file = filesystem.open(var .. ".ttb", "w")
  file:write(var .. " = " .. value)
  file:close()
end
