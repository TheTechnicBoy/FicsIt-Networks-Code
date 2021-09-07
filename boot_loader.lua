mount = filesystem.loadFile("/mount_drive.lua")

if mount then
	computer.beep(5)
	mount()
end
