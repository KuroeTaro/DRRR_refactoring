function set_pause()
    if love.keyboard.isDown("f1") then 
        DEBUG_PAUSE = true
    end
    if love.keyboard.isDown("f2") then 
        DEBUG_PAUSE = false
    end
end

function set_show_hitbox()
    if love.keyboard.isDown("f3") then 
        DEBUG_HITBOX_SHOWS = true
    end
    if love.keyboard.isDown("f4") then 
        DEBUG_HITBOX_SHOWS = false
    end
end