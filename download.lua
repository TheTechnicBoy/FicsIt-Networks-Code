function requestFile(url, name, path)
  folder(path)
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


function download(file, author, path)
  requestFile("https://raw.githubusercontent.com/".. author .. "/FicsIt-Networks-Code/main/" .. file, "/" .. file, path)
end
