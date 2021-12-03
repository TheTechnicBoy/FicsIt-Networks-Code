function requestFile(url, name, path)
  filesystem.createDir(path)
  print("Create Folder named [   " .. path .. "   ]")
  print("Requests file '" .. name .. "' from '" .. url .. "'")
  internet = computer.getPCIDevices(findClass("FINInternetCard"))[1]
  print("Write file '" .. name .. "'")
  local file = filesystem.open(path .. name, "w")
  local code, data = internet:request(url, "GET", ""):await()
  if code ~= 200 or not data then
    print("ERROR! Unable to request file '" .. name .. "' from '" .. url .. "'")
    return false
  end

  file:write(data)
  file:close()
end


function download(file, path)
  requestFile("https://raw.githubusercontent.com/TheTechnicBoy/FicsIt-Networks-Code/main/" .. file, "/" .. file, path)
end
