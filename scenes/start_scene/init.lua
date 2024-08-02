function load_start_scene_objects()

end


function load_start_scene_anim()

end


function load_start_scene_asset_audio()

end




function unload_start_scene_objects()

end


function unload_start_scene_anim()

end


function unload_start_scene_asset_audio()
    
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
    unload_start_scene_objects()
    unload_start_scene_anim()
    unload_start_scene_image()
    unload_start_scene_asset_audio()
end

function start_scene_preset_animator()
    init_point_liner_anim_with(UI_start_scene_mid_obj,anim_start_scene_general_flash_in)
end