function deletefilesystem()
print("The Filesystem will be removed in 5-sec till the high beeps!")
for i=1, 5, 1 do
	event.pull(1)
	print(i .. "...")
	computer.beep(0.7)
end
internet = computer.getPCIDevices(findClass("FINInternetCard"))[1]

code, data = internet:request("https://raw.githubusercontent.com/TheTechnicBoy/FicsIt-Networks-Code/main/del.lua", "GET", ""):await()
if code ~= 200 or not data then
	print("ERROR! Failed to request EEPROM BIOS from")
	computer.beep(0.2)
	return
end

computer.setEEPROM(data)
end
