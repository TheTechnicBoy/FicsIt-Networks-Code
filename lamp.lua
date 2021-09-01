local switch = component.proxy(component.findComponent(findClass("Build_PowerSwitch_C")))[1]
local panel = component.proxy(component.findComponent(findClass("MCP_1Point_Center_C")))[1]
local s = panel:getYModule(0)
print("Script: Lamp.lua , was loaded successfully")

while true do
   if s.state == true then
   switch.isSwitchOn = true
   else
   switch.isSwitchOn = false
   end
end
