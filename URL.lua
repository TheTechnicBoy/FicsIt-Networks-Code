local script = "URL"



print("Load internet...")
event.pull(1)
internet = computer.getPCIDevices(findClass("FINInternetCard"))[1]
if not internet then
	print("ERROR! No internet-card found! Please install a internet card!")
	computer.beep(0.2)
	return
end
print("Successfully Loaded Internet")
event.pull(1)
print("Finding Script...")
event.pull(1)
code, data = internet:request(script, "GET", ""):await()
if code ~= 200 then
	print("ERROR! Failed to load script from '" .. script .. "'")
	computer.beep(0.2)
	return
end
func = load(data)
print("Successfully Found Script")
event.pull(1)
print("Load scripts...")
while true do
func()
end
