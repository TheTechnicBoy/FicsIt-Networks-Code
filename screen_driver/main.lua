--setup components
gpu = computer.getPCIDevices(findClass("GPUT1"))[1]
Screen = computer.getPCIDevices(findClass("FINComputerScreen"))[1]
if not Screen then
    computer.beep(1)
    print("Could not find Screen")
end

--event listen
event.listen(gpu)


--screen-setup
gpu:bindScreen(ScreenComponent)
screenW, screenH = gpu:getSize()
gpu:fill(0, 0, screenW, screenH, " ") 
gpu:flush()



while true do

    Controller()

    for i,v in ipairs(Controller) do
         if i%2 == 0 then
         else
        print(i)
         print(v)
         gpu:setTect(50,i,v)
         end
    end


    e, s, x, y = event.pull()

    --e = event
    --s = sender
    --x = 1 parm
    --y = 2 parm

    if e == "OnMouseDown" then
        --print("Down")
    elseif e == "OnMouseUp" then
        --print("UP")
    elseif e == "OnMouseMove" then
        --print(x,y)
    end

    gpu:flush()

end