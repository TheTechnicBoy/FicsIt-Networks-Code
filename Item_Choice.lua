local mcp = component.proxy(component.findComponent(findClass("MCP_2Point_C")))[1]
local pot = mcp:getXModule(1)
local dis = mcp:getXModule(0)
local min = 1
local max = 10

pot.max = max
pot.min = min

while true do
dis:setText("ITEM NAMEN")
 if pot.value == 1 then
  dis:setText("ITEM NAMEN")
 elseif pot.value == 2 then
  dis:setText("ITEM NAMEN")
 elseif pot.value == 3 then
  dis:setText("ITEM NAMEN")
 elseif pot.value == 4 then
  dis:setText("ITEM NAMEN")
 elseif pot.value == 5 then
  dis:setText("ITEM NAMEN")
 elseif pot.value == 6 then
  dis:setText("ITEM NAMEN")
 elseif pot.value == 7 then
   dis:setText("ITEM NAMEN")
 elseif pot.value == 8 then
  dis:setText("ITEM NAMEN")
 elseif pot.value == 9 then
  dis:setText("ITEM NAMEN")
 elseif pot.value == 10 then
  dis:setText("ITEM NAMEN")
 end
end
