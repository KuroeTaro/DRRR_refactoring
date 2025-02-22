function load_disclaimer_and_logos_scene_obj()
    obj_UI_disclaimer_and_logos_scene_singular = {175, 125, nil, 0, 1, 1, 0, 0}
    obj_UI_disclaimer_and_logos_scene_singular["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_disclaimer_and_logos_scene_singular["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_disclaimer_and_logos_scene_singular["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_disclaimer_and_logos_scene_singular["state"] = "pre_disclaimer_ease_in"

end


function load_disclaimer_and_logos_scene_anim()
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_in_opacity_0_1 = {}
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_in_opacity_0_1[0] = {0, 5}
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_in_opacity_0_1[5] = {1, 5}
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_in_opacity_0_1["prop"] = 4
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_in_opacity_0_1["length"] = 5
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_in_opacity_0_1["loop"] = false
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_in_opacity_0_1["fix_type"] = true

    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_out_opacity_1_0 = {}
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_out_opacity_1_0[0] = {1, 5}
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_out_opacity_1_0[5] = {0, 5}
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_out_opacity_1_0["prop"] = 4
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_out_opacity_1_0["length"] = 5
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_out_opacity_1_0["loop"] = false
    anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_out_opacity_1_0["fix_type"] = true

end


-- function load_disclaimer_and_logos_scene_asset_audio()
    -- 本场景没有需要使用的音频素材
-- end




function unload_disclaimer_and_logos_scene_obj()
    for key in pairs(_G) do
        if key:sub(1, 33) == "obj_UI_disclaimer_and_logos_scene" 
        then -- 检查变量名是否以 "prefix_" 开头
            _G[key] = nil -- 删除该变量
        end
    end
    -- obj_UI_disclaimer_and_logos_scene_singular = nil
end


function unload_disclaimer_and_logos_scene_anim()
    for key in pairs(_G) do
        if key:sub(1, 47) == "anim_UI_point_linear_disclaimer_and_logos_scene" 
        then -- 检查变量名是否以 "prefix_" 开头
            _G[key] = nil -- 删除该变量
        end
    end
    -- anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_in_opacity_0_1 = nil
    -- anim_UI_point_linear_disclaimer_and_logos_scene_singular_ease_out_opacity_1_0 = nil
end


-- function unload_disclaimer_and_logos_scene_asset_audio()
    -- 本场景没有需要使用的音频素材
-- end


----------------------------------------------------------------------
-- 包含四个
-- obj
-- anim
-- image
-- audio
----------------------------------------------------------------------
-- image的加载和卸载声明在scene对应的load_function和其所在的文件内
----------------------------------------------------------------------
-- state_machine会作为功能直接包含在全局变量中 和main block sub block一样
-- 不进行场景内加载
----------------------------------------------------------------------
function unload_disclaimer_and_logos_scene_all()
    unload_disclaimer_and_logos_scene_obj()
    unload_disclaimer_and_logos_scene_anim()
    unload_disclaimer_and_logos_scene_image()

    -- 此场景不使用音频 没有创建也不运行此功能
    -- unload_disclaimer_and_logos_scene_asset_audio()

    unload_disclaimer_and_logos_scene_require()
    
end

function preset_disclaimer_and_logos_scene()
    -- 空功能用于填充标准化的load scene
end