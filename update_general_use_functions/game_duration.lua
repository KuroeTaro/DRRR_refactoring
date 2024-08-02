function game_duration_read_save()
    GAME_DURATION = nil
    local chunk = love.filesystem.load( 'game_duration_record.lua' ) 
    if chunk then 
        chunk()
        if GAME_DURATION == nil then 
            GAME_DURATION = {0,0,0,0,0,0}
            write_game_duration_record()
        end
    else 
        GAME_DURATION = {0,0,0,0,0,0}
        write_game_duration_record()
    end
end

function write_game_duration_record()
    local chunk = "{" .. table.concat(GAME_DURATION, ", ") .. "}"
    love.filesystem.write('game_duration_record.lua',chunk)
end

function record_game_duration()
    if FRAMES_DRAWN >= 60 then 
        FRAMES_DRAWN = 0
        GAME_DURATION[6] = GAME_DURATION[6] + 1 -- 秒
    end 
    if GAME_DURATION[6] >= 10 then 
        GAME_DURATION[6] = 0
        GAME_DURATION[5] = GAME_DURATION[5] + 1 -- 10秒
    end
    if GAME_DURATION[5] >= 6 then 
        GAME_DURATION[5] = 0
        GAME_DURATION[4] = GAME_DURATION[4] + 1 -- 分
    end
    if GAME_DURATION[4] >= 10 then 
        GAME_DURATION[4] = 0
        GAME_DURATION[3] = GAME_DURATION[3] + 1 -- 10分
    end
    if GAME_DURATION[3] >= 6 then 
        GAME_DURATION[3] = 0
        GAME_DURATION[2] = GAME_DURATION[2] + 1 -- 时
    end
    if GAME_DURATION[2] >= 10 then 
        GAME_DURATION[2] = 0
        GAME_DURATION[1] = GAME_DURATION[1] + 1 -- 10时
    end
    if GAME_DURATION[1] >= 10 then 
        GAME_DURATION[1] = 0
        GAME_DURATION[2] = 0
        GAME_DURATION[3] = 0
        GAME_DURATION[4] = 0
        GAME_DURATION[5] = 0
        GAME_DURATION[6] = 0
    end
end