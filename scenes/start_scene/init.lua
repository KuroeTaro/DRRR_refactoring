function load_start_scene_obj()

end


function load_start_scene_anim()

end


function load_start_scene_audio()
    SFX_start_scene_click_audio = love.audio.newSource("asset/start_scene/audio/click.mp3","static")
    SFX_start_scene_scene_out_audio = love.audio.newSource("asset/start_scene/audio/scene_out.mp3","static")
    SFX_start_scene_to_main_audio = love.audio.newSource("asset/start_scene/audio/to_main.mp3","static")
    SFX_start_scene_to_sub_audio = love.audio.newSource("asset/start_scene/audio/to_sub.mp3","static")

    BGM_start_scene_FTR_high_audio = love.audio.newSource("asset/start_scene/audio/FTR_high.mp3","stream")
    BGM_start_scene_FTR_low_audio = love.audio.newSource("asset/start_scene/audio/FTR_low.mp3","stream")

    update_SFX_volume(SFX_start_scene_click_audio)
    update_SFX_volume(SFX_start_scene_scene_out_audio)
    update_SFX_volume(SFX_start_scene_to_main_audio)
    update_SFX_volume(SFX_start_scene_to_sub_audio)

    update_BGM_volume(BGM_start_scene_FTR_high_audio)
    update_BGM_volume(BGM_start_scene_FTR_low_audio)

end




function unload_start_scene_obj()

end


function unload_start_scene_anim()

end


function unload_start_scene_audio()
    
end


----------------------------------------------------------------------
-- 包含四个
-- object
-- anim
-- image
-- audio
----------------------------------------------------------------------
-- image的加载和卸载声明在scene对应的load_function和其所在的文件内
----------------------------------------------------------------------
-- state_machine会作为功能直接包含在全局变量中 和main block sub block一样
-- 不进行场景内加载
----------------------------------------------------------------------
function disclaimer_logos_scene_unload_function()
    unload_start_scene_obj()
    unload_start_scene_anim()
    unload_start_scene_image()
    unload_start_scene_asset_audio()
end

function start_scene_preset_animator()
    init_point_liner_anim_with(UI_start_scene_mid_obj,anim_start_scene_general_flash_in)
end