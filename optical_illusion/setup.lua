url = "https://raw.githubusercontent.com/TheTechnicBoy/FicsIt-Networks-Code/main/optical_illusion/main.lua"

local internet = computer.getPCIDevices(findClass("FINInternetCard"))[1]
local code, data = internet:request(url, "GET", ""):await()

if code ~= 200 or not data then
    print("ERROR! Unable to request file")
    computer.beep(1)
    return
end




max = 5






main = load(data)