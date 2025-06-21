function set_pause()
    local switch = 
    {
        ["Released"] = function()
            if love.keyboard.isDown("f1") then 
                DEBUG_PAUSE_STATE = "Pressing"
            end
        end,
        ["Releasing"] = function()
            if love.keyboard.isDown("f1") then 
                DEBUG_PAUSE_STATE = "Pressing"
            else
                DEBUG_PAUSE_STATE = "Released"
            end
        end,
        ["Pressing"] = function()
            if DEBUG_PAUSE == false then 
                DEBUG_PAUSE = true
            elseif DEBUG_PAUSE == true then 
                DEBUG_PAUSE = false
            end
            if love.keyboard.isDown("f1") then 
                DEBUG_PAUSE_STATE = "Holding"
            else
                DEBUG_PAUSE_STATE = "Releasing"
            end
        end,
        ["Holding"] = function()
            if not love.keyboard.isDown("f1") then 
                DEBUG_PAUSE_STATE = "Releasing"
            end
        end
    }
    local this_function = switch[DEBUG_PAUSE_STATE]
    if this_function then this_function() end
end

function set_show_hitbox()
    local switch = 
    {
        ["Released"] = function()
            if love.keyboard.isDown("f2") then 
                DEBUG_HITBOX_SHOWS_STATE = "Pressing"
            end
        end,
        ["Releasing"] = function()
            if love.keyboard.isDown("f2") then 
                DEBUG_HITBOX_SHOWS_STATE = "Pressing"
            else
                DEBUG_HITBOX_SHOWS_STATE = "Released"
            end
        end,
        ["Pressing"] = function()
            if DEBUG_HITBOX_SHOWS == false then 
                DEBUG_HITBOX_SHOWS = true
            elseif DEBUG_HITBOX_SHOWS == true then 
                DEBUG_HITBOX_SHOWS = false
            end
            if love.keyboard.isDown("f2") then 
                DEBUG_HITBOX_SHOWS_STATE = "Holding"
            else
                DEBUG_HITBOX_SHOWS_STATE = "Releasing"
            end
        end,
        ["Holding"] = function()
            if not love.keyboard.isDown("f2") then 
                DEBUG_HITBOX_SHOWS_STATE = "Releasing"
            end
        end
    }
    local this_function = switch[DEBUG_HITBOX_SHOWS_STATE]
    if this_function then this_function() end
end