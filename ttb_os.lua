filesystem.initFileSystem("/dev")
local drive = ""
for _,f in pairs(filesystem.childs("/dev")) do
	if not (f == "serial") then
		drive = f
		break
	end
end
if drive:len() < 1 then
	print("ERROR! Unable to find filesystem to install on! Please insert a drive or floppy!")
	computer.beep(0.2)
	return
end
filesystem.mount("/dev/" .. drive, "/")



function requestFile(url, name, path)
  filesystem.createDir(path)
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

function folder(Name)
  local path = filesystem.path("/",Name)
  filesystem.createDir(path)
end

download("var.lua","/Functions/")
download("download.lua","/Functions/")
download("RSS.lua","/Functions/")
download("folder.lua","/Functions/")
download("color.lua","/Functions/")
download("load_function.lua","/")


folder("VAR")
folder("Functions")



internet = computer.getPCIDevices(findClass("FINInternetCard"))[1]

code, data = internet:request("https://raw.githubusercontent.com/TheTechnicBoy/FicsIt-Networks-Code/main/boot_loader.lua", "GET", ""):await()
if code ~= 200 or not data then
	print("ERROR! Failed to request EEPROM BIOS from")
	computer.beep(0.2)
	return
end


print("YOU HAVE TO CLOSE THE WINDOW with-in 5sec till the high beeps!")
for i=1, 5, 1 do
	event.pull(1)
	print(i .. "...")
	computer.beep(0.7)
end


computer.setEEPROM(data)

