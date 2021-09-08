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



  func_var = filesystem.loadFile("var.lua")
  func_var()

  func_file = filesystem.loadFile("download.lua")
  func_file()

  func_RSS = filesystem.loadFile("RSS.lua")
  func_RSS()

  func_Folder = filesystem.loadFile("folder.lua")
  func_Folder()
