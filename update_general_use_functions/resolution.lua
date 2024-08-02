function aquire_current_res()
    local width, height, flags = love.window.getMode()
    if width < 1600 then res_partten = 0 
    elseif width < 1920 then res_partten = 1
    elseif width < 2560 then res_partten = 2
    elseif width < 3840 then res_partten = 3
    else res_partten = 4 end
end

function set_current_res()
    if res_partten == 0 then 
        love.window.setMode(1280,720,{})
        love.filesystem.write('resolution_config.lua','12800720')
    elseif res_partten == 1 then 
        love.window.setMode(1600,900,{})
        love.filesystem.write('resolution_config.lua','16000900')
    elseif res_partten == 2 then 
        love.window.setMode(1920,1080,{})
        love.filesystem.write('resolution_config.lua','19201080')
    elseif res_partten == 3 then 
        love.window.setMode(2560,1440,{})
        love.filesystem.write('resolution_config.lua','25601440')
    elseif res_partten == 4 then 
        love.window.setMode(3840,2160,{})
        love.filesystem.write('resolution_config.lua','38402160')
    end
end