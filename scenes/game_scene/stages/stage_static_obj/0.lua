function load_game_scene_static_obj()
    obj_stage_game_scene_lights = {}
    obj_stage_game_scene_lights[1] = {0, 0, 0, 0}    -- x y z 亮度
    -- obj_stage_game_scene_lights[1] = {0, 0, 0, 0} 可拓展 用于所有角色创建阴影使用

    obj_stage_game_scene_markLine425_left_side_coner = {-1950, 410, 300, 1, 1, 1, 0, 0}
    obj_stage_game_scene_markLine425_left_side_coner["width"] = 8
    obj_stage_game_scene_markLine425_left_side_coner["height"] = 425
    obj_stage_game_scene_markLine425_left_side_coner["FCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_left_side_coner["LCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_left_side_coner["LCD"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_left_side_coner["state"] = "default"

    obj_stage_game_scene_markLine425_right_side_coner = {1950, 410, 300, 1, 1, 1, 0, 0}
    obj_stage_game_scene_markLine425_right_side_coner["width"] = 8
    obj_stage_game_scene_markLine425_right_side_coner["height"] = 425
    obj_stage_game_scene_markLine425_right_side_coner["FCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_right_side_coner["LCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_right_side_coner["LCD"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_right_side_coner["state"] = "default"

    obj_stage_game_scene_markLine425_left_side_mid = {-1025, 410, 300, 1, 1, 1, 0, 0}
    obj_stage_game_scene_markLine425_left_side_mid["width"] = 8
    obj_stage_game_scene_markLine425_left_side_mid["height"] = 425
    obj_stage_game_scene_markLine425_left_side_mid["FCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_left_side_mid["LCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_left_side_mid["LCD"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_left_side_mid["state"] = "default"

    obj_stage_game_scene_markLine425_right_side_mid = {1025, 410, 300, 1, 1, 1, 0, 0}
    obj_stage_game_scene_markLine425_right_side_mid["width"] = 8
    obj_stage_game_scene_markLine425_right_side_mid["height"] = 425
    obj_stage_game_scene_markLine425_right_side_mid["FCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_right_side_mid["LCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_right_side_mid["LCD"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine425_right_side_mid["state"] = "default"

    obj_stage_game_scene_markLine950_mid = {0, 450, 400, 1, 1, 1, 0, 0}
    obj_stage_game_scene_markLine950_mid["width"] = 8
    obj_stage_game_scene_markLine950_mid["height"] = 950
    obj_stage_game_scene_markLine950_mid["FCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine950_mid["LCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine950_mid["LCD"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine950_mid["state"] = "default"

    obj_stage_game_scene_match_scene_ground = {0, 470, 200, 1, 3, 1, 0, 0}
    obj_stage_game_scene_match_scene_ground["width"] = 1600
    obj_stage_game_scene_match_scene_ground["height"] = 300
    obj_stage_game_scene_match_scene_ground["FCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_match_scene_ground["LCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_match_scene_ground["LCD"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_match_scene_ground["state"] = "default"

    obj_stage_game_scene_match_scene_stair = {0, 300, 300, 1, 3, 1, 0, 0}
    obj_stage_game_scene_match_scene_stair["width"] = 1600
    obj_stage_game_scene_match_scene_stair["height"] = 250
    obj_stage_game_scene_match_scene_stair["FCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_match_scene_stair["LCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_match_scene_stair["LCD"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_match_scene_stair["state"] = "default"

    obj_stage_game_scene_markLine950_left_side = {-1950, 150, 400, 1, 1, 1, 0, 0}
    obj_stage_game_scene_markLine950_left_side["width"] = 8
    obj_stage_game_scene_markLine950_left_side["height"] = 950
    obj_stage_game_scene_markLine950_left_side["FCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine950_left_side["LCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine950_left_side["LCD"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine950_left_side["state"] = "default"

    obj_stage_game_scene_markLine950_right_side = {1950, 150, 400, 1, 1, 1, 0, 0}
    obj_stage_game_scene_markLine950_right_side["width"] = 8
    obj_stage_game_scene_markLine950_right_side["height"] = 950
    obj_stage_game_scene_markLine950_right_side["FCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine950_right_side["LCT"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine950_right_side["LCD"] = {0,0,0,0,0,0,0}
    obj_stage_game_scene_markLine950_right_side["state"] = "default"

end

function draw_game_scene_static_obj()

end