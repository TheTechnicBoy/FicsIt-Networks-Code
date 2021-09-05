Item = {
 "A",
 "B",
 "C",
 "D",
 "E",
 "F",
 "G",
 "H",
 "I",
 "J",
 "K",
 "L"
}
local max = #Item

local mcp = component.proxy(component.findComponent(findClass("MCP_2Point_C")))[1]
local pot = mcp:getXModule(0)
local dis = mcp:getXModule(1)

pot.max = max
pot.min = 1
pot.value = 1


while true do
dis:setText(Item[pot.value])
end
