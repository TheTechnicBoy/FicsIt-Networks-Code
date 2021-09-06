mount = filesystem.loadFile("/mount_drive.lua")

if func then
	computer.beep(5)
	mount()
end
