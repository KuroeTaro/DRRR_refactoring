function read_volume_config()
    BGM_volume = nil
    SFX_volume = nil
    local chunk = love.filesystem.load( 'audio_config.lua' ) 
    if chunk then 
        chunk()
        if BGM_volume == nil then 
            BGM_volume = 5
            SFX_volume = 5
        end
    else 
        BGM_volume = 5
        SFX_volume = 5
        write_volume_config()
    end
end

function write_volume_config()
    local chunk = 
    [[ BGM_volume = ]]..BGM_volume.."\n"..
    [[ SFX_volume = ]]..SFX_volume..[[ ]]

    love.filesystem.write('audio_config.lua',chunk)
end

-- function update_BGM_volume(src)
--     src:setVolume(BGM_volume/10)
-- end
-- function update_SFX_volume(src)
--     src:setVolume(SFX_volume/10)
-- end

function update_BGM_volume(obj)
    obj["audio"]:setVolume(obj[1]*BGM_volume/10)
end
function update_SFX_volume(obj)
    obj["audio"]:setVolume(obj[1]*SFX_volume/10)
end
function play_obj_audio(obj)
    love.audio.stop(obj["audio"])
    love.audio.play(obj["audio"])
end