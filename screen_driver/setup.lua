url = "https://raw.githubusercontent.com/TheTechnicBoy/FicsIt-Networks-Code/main/screen_driver/main.lua"

local internet = computer.getPCIDevices(findClass("FINInternetCard"))[1]
local code, data = internet:request(url, "GET", ""):await()

if code ~= 200 or not data then
    print("ERROR! Unable to request file")
    computer.beep(1)
    return
end

main = load(data)



function objects()
    
    Controller = {}

    Controller[1] = "Name"
    Controller[2] = "ID"
    Controller[3] = "Name"
    Controller[4] = "ID"
    --etc.


end



main()