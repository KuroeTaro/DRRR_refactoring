-- 只有load场景使用init前缀 
-- 其他场景有load和unload配套使用

function init_load_scene_objects()
    -- 场景object
    -- x y z opacity sx sy r f
    UI_load_scene_loading_text = {1350, 800, nil, 0, 1, 1, 0, 0}
    UI_load_scene_loading_text["width"] = 100
    UI_load_scene_loading_text["height"] = 20
    UI_load_scene_loading_text["FCT"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_loading_text["LCT"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_loading_text["LCD"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_loading_text["state"] = "flash_in"

    UI_load_scene_loading_text["debug_executed_FCT"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_loading_text["debug_executed_LCT"] = {0,0,0,0,0,0,0,0}

    UI_load_scene_type_in_mark = {1460, 798, nil, 0, 1, 1, 0, 0}
    UI_load_scene_type_in_mark["width"] = 5
    UI_load_scene_type_in_mark["height"] = 20
    UI_load_scene_type_in_mark["FCT"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_type_in_mark["LCT"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_type_in_mark["LCD"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_type_in_mark["state"] = "flash_in"

    UI_load_scene_type_in_mark["debug_executed_FCT"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_type_in_mark["debug_executed_LCT"] = {0,0,0,0,0,0,0,0}

    UI_load_scene_dabo_trig = {1280, 800, nil, 0, 1, 1, 0, 0}
    UI_load_scene_dabo_trig["width"] = 36
    UI_load_scene_dabo_trig["height"] = 16
    UI_load_scene_dabo_trig["FCT"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_dabo_trig["LCT"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_dabo_trig["LCD"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_dabo_trig["state"] = "flash_in"

    UI_load_scene_dabo_trig["debug_executed_FCT"] = {0,0,0,0,0,0,0,0}
    UI_load_scene_dabo_trig["debug_executed_LCT"] = {0,0,0,0,0,0,0,0}

end


function init_load_scene_anim()
    -- x y z opacity sx sy r f
    -- 1 2 3 4       5  6  7 8
    anim_UI_load_scene_loading_text_flash_in_opacity = {}
    anim_UI_load_scene_loading_text_flash_in_opacity[4] = 1
    anim_UI_load_scene_loading_text_flash_in_opacity["prop"] = 4
    anim_UI_load_scene_loading_text_flash_in_opacity["length"] = 4
    anim_UI_load_scene_loading_text_flash_in_opacity["loop"] = false

    anim_UI_load_scene_loading_text_flash_out_x = {}
    anim_UI_load_scene_loading_text_flash_out_x[1] = 1320
    anim_UI_load_scene_loading_text_flash_out_x[3] = 1360
    anim_UI_load_scene_loading_text_flash_out_x["prop"] = 1
    anim_UI_load_scene_loading_text_flash_out_x["length"] = 3
    anim_UI_load_scene_loading_text_flash_out_x["loop"] = false

    anim_UI_load_scene_loading_text_flash_out_opacity = {}
    anim_UI_load_scene_loading_text_flash_out_opacity[5] = 0
    anim_UI_load_scene_loading_text_flash_out_opacity["prop"] = 4
    anim_UI_load_scene_loading_text_flash_out_opacity["length"] = 5
    anim_UI_load_scene_loading_text_flash_out_opacity["loop"] = false

    anim_UI_load_scene_type_in_mark_flash_in_opacity = {}
    anim_UI_load_scene_type_in_mark_flash_in_opacity[4] = 1
    anim_UI_load_scene_type_in_mark_flash_in_opacity["prop"] = 4
    anim_UI_load_scene_type_in_mark_flash_in_opacity["length"] = 4
    anim_UI_load_scene_type_in_mark_flash_in_opacity["loop"] = false

    anim_UI_load_scene_type_in_mark_blink_opacity = {}
    anim_UI_load_scene_type_in_mark_blink_opacity[10] = 0
    anim_UI_load_scene_type_in_mark_blink_opacity[20] = 1
    anim_UI_load_scene_type_in_mark_blink_opacity["prop"] = 4
    anim_UI_load_scene_type_in_mark_blink_opacity["length"] = 20
    anim_UI_load_scene_type_in_mark_blink_opacity["loop"] = true

    anim_UI_load_scene_dabo_trig_flash_in_x = {}
    anim_UI_load_scene_dabo_trig_flash_in_x[2] = 1250
    anim_UI_load_scene_dabo_trig_flash_in_x[4] = 1300
    anim_UI_load_scene_dabo_trig_flash_in_x["prop"] = 1
    anim_UI_load_scene_dabo_trig_flash_in_x["length"] = 4
    anim_UI_load_scene_dabo_trig_flash_in_x["loop"] = false

    anim_UI_load_scene_dabo_trig_flash_out_x = {}
    anim_UI_load_scene_dabo_trig_flash_out_x[1] = 1280
    anim_UI_load_scene_dabo_trig_flash_out_x[3] = 1305
    anim_UI_load_scene_dabo_trig_flash_out_x["prop"] = 1
    anim_UI_load_scene_dabo_trig_flash_out_x["length"] = 3
    anim_UI_load_scene_dabo_trig_flash_out_x["loop"] = false

    anim_UI_load_scene_dabo_trig_flash_out_opacity = {}
    anim_UI_load_scene_dabo_trig_flash_out_opacity[5] = 0
    anim_UI_load_scene_dabo_trig_flash_out_opacity["prop"] = 4
    anim_UI_load_scene_dabo_trig_flash_out_opacity["length"] = 5
    anim_UI_load_scene_dabo_trig_flash_out_opacity["loop"] = false

end


function init_load_scene_asset_image()
    dabo_trig_image = love.graphics.newImage("asset/load_scene/dabo_trig.dds")
    loading_text_image = love.graphics.newImage("asset/load_scene/loading_text.dds")
    type_in_mark_image = love.graphics.newImage("asset/load_scene/type_in_mark.dds")
end


function init_load_scene_asset_audio()
    end_load_audio = love.audio.newSource("asset/load_scene/end_load.mp3","static")
    loading_audio = love.audio.newSource("asset/load_scene/loading.mp3","static")
    start_load_audio = love.audio.newSource("asset/load_scene/start_load.mp3","static")
    update_SFX_volume(end_load_audio)
    update_SFX_volume(loading_audio)
    update_SFX_volume(start_load_audio)
end