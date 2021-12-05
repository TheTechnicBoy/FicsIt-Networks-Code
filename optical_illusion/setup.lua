url = "https://raw.githubusercontent.com/TheTechnicBoy/FicsIt-Networks-Code/main/optical_illusion/main.lua"

local internet = computer.getPCIDevices(findClass("FINInternetCard"))[1]
local code, data = internet:request(url, "GET", ""):await()

if code ~= 200 or not data then
    print("ERROR! Unable to request file")
    computer.beep(1)
    return
end
main = load(data)  

max = 5           -- you can just put a different digit hear, higher =>  higher Resolution, lower => lower Resolution

main()