function load_disclaimer_and_logo_scene_obj()
    obj_UI_disclaimer_and_logo_scene_singular = {175, 125, nil, 0, 1, 1, 0, 0}
    obj_UI_disclaimer_and_logo_scene_singular["width"] = nil
    obj_UI_disclaimer_and_logo_scene_singular["height"] = nil
    obj_UI_disclaimer_and_logo_scene_singular["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_disclaimer_and_logo_scene_singular["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_disclaimer_and_logo_scene_singular["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_disclaimer_and_logo_scene_singular["state"] = "pre_disclaimer_flash_in"

    obj_UI_disclaimer_and_logo_scene_singular["debug_executed_FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_disclaimer_and_logo_scene_singular["debug_executed_LCT"] = {0,0,0,0,0,0,0,0}
end


function load_disclaimer_and_logo_scene_anim()
    anim_disclaimer_and_logo_scene_general_flash_in = {}
    anim_disclaimer_and_logo_scene_general_flash_in[0] = {0, 5}
    anim_disclaimer_and_logo_scene_general_flash_in[5] = {1, 5}
    anim_disclaimer_and_logo_scene_general_flash_in["prop"] = 4
    anim_disclaimer_and_logo_scene_general_flash_in["length"] = 5
    anim_disclaimer_and_logo_scene_general_flash_in["loop"] = false

    anim_disclaimer_and_logo_scene_general_flash_out = {}
    anim_disclaimer_and_logo_scene_general_flash_out[0] = {1, 5}
    anim_disclaimer_and_logo_scene_general_flash_out[5] = {0, 5}
    anim_disclaimer_and_logo_scene_general_flash_out["prop"] = 4
    anim_disclaimer_and_logo_scene_general_flash_out["length"] = 5
    anim_disclaimer_and_logo_scene_general_flash_out["loop"] = false
end


-- function load_disclaimer_and_logo_scene_asset_audio()
    -- 本场景没有需要使用的音频素材
-- end




function unload_disclaimer_and_logo_scene_obj()
    obj_UI_disclaimer_and_logo_scene_singular = nil
end


function unload_disclaimer_and_logo_scene_anim()
    anim_disclaimer_and_logo_scene_general_flash_in = nil
    anim_disclaimer_and_logo_scene_general_flash_out = nil
end


-- function unload_disclaimer_and_logo_scene_asset_audio()
    -- 本场景没有需要使用的音频素材
-- end


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
function disclaimer_and_logos_scene_unload_function()
    unload_disclaimer_and_logo_scene_obj()
    unload_disclaimer_and_logo_scene_anim()
    unload_disclaimer_and_logo_scene_image()

    -- 此场景不使用音频 没有创建也不运行此功能
    -- unload_disclaimer_and_logo_scene_asset_audio()
end

function disclaimer_and_logo_scene_preset_animator()
    init_point_liner_anim_with(obj_UI_disclaimer_and_logo_scene_singular,anim_disclaimer_and_logo_scene_general_flash_in)
end