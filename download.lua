function requestFile(url, path)
  print("Requests file '" .. path .. "' from '" .. url .. "'")
  internet = computer.getPCIDevices(findClass("FINInternetCard"))[1]
  print("Write file '" .. path .. "'")
  local file = filesystem.open(path, "w")
  local code, data = internet:request(url, "GET", ""):await()
  if code ~= 200 or not data then
    print("ERROR! Unable to request file '" .. path .. "' from '" .. url .. "'")
    return false
  end

  file:write(data)
  file:close()
end


function download(file, author)
  requestFile("https://raw.githubusercontent.com/".. author .. "/FicsIt-Networks-Code/main/" .. file, "/" .. file)
end
