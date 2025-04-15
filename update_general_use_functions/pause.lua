function set_pause()
    if love.keyboard.isDown("f1") then 
        DEBUG_PAUSE = true
    end
    if love.keyboard.isDown("f2") then 
        DEBUG_PAUSE = false
    end
end