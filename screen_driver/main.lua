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


    gpu:fill(0, 0, screenW, screenH, " ") 
    gpu:setText(47, 0, "Objects")
    gpu:fill(40, 1, 20, 1, "-" )
    objects()

    for i,v in ipairs(Controller) do
        if i%2 == 0 then
        else

            gpu:setText(50,i+2,v)
            
        end
    end

    gpu:flush()


   


    e, s, x, y = event.pull()

    --e = event
    --s = sender
    --x = 1 parm
    --y = 2 parm

    if e == "OnMouseDown" then
        --print(x,y)
        if x == 50 then
            object  = y - 2
            id      = y - 1

            print(objects[object])
            print(objects[id])
        end
    end

    gpu:flush()

end