function load_char_select_scene_obj()
    -- 覆盖黑色前景
    obj_UI_char_select_scene_black_solid = {0, 0, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_black_solid["width"] = 1600
    obj_UI_char_select_scene_black_solid["height"] = 900
    obj_UI_char_select_scene_black_solid["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_black_solid["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_black_solid["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_black_solid["state"] = "default"
    obj_UI_char_select_scene_black_solid["rgb"] = {7/255,19/255,31/255}
    
    -- 覆盖电影噪点
    obj_UI_char_select_scene_movie_cover = {0, 0, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_movie_cover["width"] = 1600
    obj_UI_char_select_scene_movie_cover["height"] = 900
    obj_UI_char_select_scene_movie_cover["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_movie_cover["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_movie_cover["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_movie_cover["state"] = "default"
    
    -- 第一光环
    obj_UI_char_select_scene_first_ring = {0, 0, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_first_ring["width"] = 1600
    obj_UI_char_select_scene_first_ring["height"] = 900
    obj_UI_char_select_scene_first_ring["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_first_ring["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_first_ring["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_first_ring["state"] = "default"
    
    -- 覆盖白色前景
    obj_UI_char_select_scene_white_solid = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_white_solid["width"] = 1600
    obj_UI_char_select_scene_white_solid["height"] = 900
    obj_UI_char_select_scene_white_solid["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_white_solid["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_white_solid["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_white_solid["state"] = "default"
    obj_UI_char_select_scene_white_solid["rgb"] = {1,1,1}

    -- 第一光环
    obj_UI_char_select_scene_second_ring = {0, 0, nil, 0.75, 1, 1, 0, 0}
    obj_UI_char_select_scene_second_ring["width"] = 1600
    obj_UI_char_select_scene_second_ring["height"] = 900
    obj_UI_char_select_scene_second_ring["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_second_ring["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_second_ring["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_second_ring["state"] = "default"
    
    obj_UI_char_select_scene_second_glow = {0, 0, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_second_glow["width"] = 1600
    obj_UI_char_select_scene_second_glow["height"] = 900
    obj_UI_char_select_scene_second_glow["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_second_glow["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_second_glow["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_second_glow["state"] = "default"
    obj_UI_char_select_scene_second_glow["alpha_points"] = {0,0, 0,262, 384,900, 1600,900, 1600,149, 587,0}
    obj_UI_char_select_scene_second_glow["alpha_points"]["LCT"] = {0,0, 0,0, 0,0, 0,0, 0,0, 0,0}
    obj_UI_char_select_scene_second_glow["alpha_points"]["LCD"] = {0,0, 0,0, 0,0, 0,0, 0,0, 0,0}
    
    obj_UI_char_select_scene_bar_mark_L = {55, 509, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_bar_mark_L["width"] = 15
    obj_UI_char_select_scene_bar_mark_L["height"] = 22
    obj_UI_char_select_scene_bar_mark_L["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_L["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_L["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_L["state"] = "default"
    
    obj_UI_char_select_scene_bar_mark_R = {1545, 739, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_bar_mark_R["width"] = 15
    obj_UI_char_select_scene_bar_mark_R["height"] = 22
    obj_UI_char_select_scene_bar_mark_R["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_R["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_R["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_R["state"] = "default"
    
    obj_UI_char_select_scene_control_method_L = {90, 470, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_control_method_L["width"] = 300
    obj_UI_char_select_scene_control_method_L["height"] = 80
    obj_UI_char_select_scene_control_method_L["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_L["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_L["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_L["state"] = "default"
    
    obj_UI_char_select_scene_control_method_R = {1236, 700, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_control_method_R["width"] = 300
    obj_UI_char_select_scene_control_method_R["height"] = 80
    obj_UI_char_select_scene_control_method_R["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_R["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_R["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_R["state"] = "default"

    obj_UI_char_select_scene_timer = {1321, 815, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_timer["width"] = 20
    obj_UI_char_select_scene_timer["height"] = 20
    obj_UI_char_select_scene_timer["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_timer["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_timer["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_timer["state"] = "default"
    obj_UI_char_select_scene_timer["time"] = {9,9,60}
    
    obj_UI_char_select_scene_char_select_left = {-33, 110, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_char_select_left["width"] = 1650
    obj_UI_char_select_scene_char_select_left["height"] = 455
    obj_UI_char_select_scene_char_select_left["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left["state"] = "default"
    
    obj_UI_char_select_scene_char_select_left_image = {-200, -52, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_char_select_left_image["width"] = 1650
    obj_UI_char_select_scene_char_select_left_image["height"] = 455
    obj_UI_char_select_scene_char_select_left_image["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_image["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_image["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_image["state"] = "default"
    
    obj_UI_char_select_scene_char_select_left_text = {375, -179, nil, 0, 1, 1, 0.192, 0}
    obj_UI_char_select_scene_char_select_left_text["width"] = 1650
    obj_UI_char_select_scene_char_select_left_text["height"] = 455
    obj_UI_char_select_scene_char_select_left_text["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_text["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_text["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_text["state"] = "default"
    
    obj_UI_char_select_scene_char_select_right = {-25, 335, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_char_select_right["width"] = 1650
    obj_UI_char_select_scene_char_select_right["height"] = 455
    obj_UI_char_select_scene_char_select_right["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right["state"] = "default"
    
    obj_UI_char_select_scene_char_select_right_image = {610, -12, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_char_select_right_image["width"] = 1650
    obj_UI_char_select_scene_char_select_right_image["height"] = 455
    obj_UI_char_select_scene_char_select_right_image["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_image["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_image["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_image["state"] = "default"
    
    obj_UI_char_select_scene_char_select_right_text = {1291, -36, nil, 0, 1, 1, 0.436, 0}
    obj_UI_char_select_scene_char_select_right_text["width"] = 1650
    obj_UI_char_select_scene_char_select_right_text["height"] = 455
    obj_UI_char_select_scene_char_select_right_text["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_text["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_text["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_text["state"] = "default"
    
    obj_UI_char_select_scene_char_select_bg = {0, 0, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_char_select_bg["width"] = 1600
    obj_UI_char_select_scene_char_select_bg["height"] = 900
    obj_UI_char_select_scene_char_select_bg["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_bg["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_bg["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_bg["state"] = "default"
    
    obj_UI_char_select_scene_icon_select_L = {603, 349, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_icon_select_L["width"] = 260
    obj_UI_char_select_scene_icon_select_L["height"] = 380
    obj_UI_char_select_scene_icon_select_L["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_L["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_L["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_L["state"] = "default"
    
    obj_UI_char_select_scene_icon_select_R = {760, 166, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_icon_select_R["width"] = 260
    obj_UI_char_select_scene_icon_select_R["height"] = 400
    obj_UI_char_select_scene_icon_select_R["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_R["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_R["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_R["state"] = "default"
    
    obj_UI_char_select_scene_icon_ERIKAWK3 = {-6, 566, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_icon_ERIKAWK3["width"] = 340
    obj_UI_char_select_scene_icon_ERIKAWK3["height"] = 220
    obj_UI_char_select_scene_icon_ERIKAWK3["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_ERIKAWK3["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_ERIKAWK3["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_ERIKAWK3["state"] = "default"
    obj_UI_char_select_scene_icon_ERIKAWK3["image_x"] = 0
    
    obj_UI_char_select_scene_icon_KTC = {192, 570, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_icon_KTC["width"] = 340
    obj_UI_char_select_scene_icon_KTC["height"] = 220
    obj_UI_char_select_scene_icon_KTC["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_KTC["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_KTC["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_KTC["state"] = "default"
    obj_UI_char_select_scene_icon_KTC["image_x"] = 0
    
    obj_UI_char_select_scene_icon_ANRI = {405, 512, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_icon_ANRI["width"] = 280
    obj_UI_char_select_scene_icon_ANRI["height"] = 280
    obj_UI_char_select_scene_icon_ANRI["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_ANRI["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_ANRI["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_ANRI["state"] = "default"
    obj_UI_char_select_scene_icon_ANRI["image_x"] = 0
    
    obj_UI_char_select_scene_icon_IZY = {603, 349, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_icon_IZY["width"] = 260
    obj_UI_char_select_scene_icon_IZY["height"] = 380
    obj_UI_char_select_scene_icon_IZY["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_IZY["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_IZY["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_IZY["state"] = "default"
    obj_UI_char_select_scene_icon_IZY["image_x"] = 0
    
    obj_UI_char_select_scene_icon_SZO = {760, 166, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_icon_SZO["width"] = 260
    obj_UI_char_select_scene_icon_SZO["height"] = 400
    obj_UI_char_select_scene_icon_SZO["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_SZO["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_SZO["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_SZO["state"] = "default"
    obj_UI_char_select_scene_icon_SZO["image_x"] = 0
    
    obj_UI_char_select_scene_icon_CKG = {921, 120, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_icon_CKG["width"] = 280
    obj_UI_char_select_scene_icon_CKG["height"] = 280
    obj_UI_char_select_scene_icon_CKG["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_CKG["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_CKG["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_CKG["state"] = "default"
    obj_UI_char_select_scene_icon_CKG["image_x"] = 0
    
    obj_UI_char_select_scene_icon_SHINRA = {1116, 122, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_icon_SHINRA["width"] = 340
    obj_UI_char_select_scene_icon_SHINRA["height"] = 220
    obj_UI_char_select_scene_icon_SHINRA["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_SHINRA["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_SHINRA["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_SHINRA["state"] = "default"
    obj_UI_char_select_scene_icon_SHINRA["image_x"] = 0
    
    obj_UI_char_select_scene_icon_SRT = {1327, 121, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_icon_SRT["width"] = 340
    obj_UI_char_select_scene_icon_SRT["height"] = 220
    obj_UI_char_select_scene_icon_SRT["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_SRT["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_SRT["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_SRT["state"] = "default"
    obj_UI_char_select_scene_icon_SRT["image_x"] = 0
    
    obj_UI_char_select_solid_bg = {0, 0, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_solid_bg["width"] = 1600
    obj_UI_char_select_solid_bg["height"] = 900
    obj_UI_char_select_solid_bg["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_solid_bg["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_solid_bg["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_solid_bg["state"] = "default"  
    obj_UI_char_select_solid_bg["rgb"] = {7/255,19/255,31/255}

end


function load_char_select_anim()
    -- black solid 闪出
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity = {}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity[0] = {1, 2}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity[2] = {0.55, 6}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity[6] = {0.22, 10}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity[10] = {0.07, 15}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity[15] = {0, 15}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity["prop"] = 4
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity["length"] = 15
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity["loop"] = false
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity["fix_type"] = true

    -- first ring
    anim_UI_frame_select_scene_first_ring_f = {}
    anim_UI_frame_select_scene_first_ring_f[0] = 0
    anim_UI_frame_select_scene_first_ring_f[2] = 1
    anim_UI_frame_select_scene_first_ring_f[4] = 2
    anim_UI_frame_select_scene_first_ring_f[6] = 3
    anim_UI_frame_select_scene_first_ring_f[8] = 4
    anim_UI_frame_select_scene_first_ring_f[10] = 5
    anim_UI_frame_select_scene_first_ring_f[12] = 6
    anim_UI_frame_select_scene_first_ring_f[14] = 7
    anim_UI_frame_select_scene_first_ring_f[16] = 8
    anim_UI_frame_select_scene_first_ring_f[18] = 9
    anim_UI_frame_select_scene_first_ring_f[20] = 10
    anim_UI_frame_select_scene_first_ring_f[22] = 11
    anim_UI_frame_select_scene_first_ring_f[24] = 12
    anim_UI_frame_select_scene_first_ring_f[26] = 13
    anim_UI_frame_select_scene_first_ring_f[28] = 14
    anim_UI_frame_select_scene_first_ring_f[30] = 15
    anim_UI_frame_select_scene_first_ring_f[32] = 16
    anim_UI_frame_select_scene_first_ring_f[34] = 17
    anim_UI_frame_select_scene_first_ring_f["prop"] = 8
    anim_UI_frame_select_scene_first_ring_f["length"] = 34
    anim_UI_frame_select_scene_first_ring_f["loop"] = false
    anim_UI_frame_select_scene_first_ring_f["fix_type"] = true

    -- while solid
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity = {}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity[0] = {1, 2}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity[2] = {0.6, 6}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity[6] = {0.2, 10}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity[10] = {0.05, 15}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity[15] = {0, 15}
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity["prop"] = 4
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity["length"] = 15
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity["loop"] = false
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity["fix_type"] = true

    --glow opacity anim
    anim_UI_point_linear_char_select_scene_second_glow_opacity = {}
    anim_UI_point_linear_char_select_scene_second_glow_opacity[0] = {1.00, 2}
    anim_UI_point_linear_char_select_scene_second_glow_opacity[2] = {0.82, 5}
    anim_UI_point_linear_char_select_scene_second_glow_opacity[5] = {0.70, 10}
    anim_UI_point_linear_char_select_scene_second_glow_opacity[10] = {0.62, 20}
    anim_UI_point_linear_char_select_scene_second_glow_opacity[20] = {0.54, 30}
    anim_UI_point_linear_char_select_scene_second_glow_opacity[30] = {0.50, 30}
    anim_UI_point_linear_char_select_scene_second_glow_opacity["prop"] = 4
    anim_UI_point_linear_char_select_scene_second_glow_opacity["length"] = 30
    anim_UI_point_linear_char_select_scene_second_glow_opacity["loop"] = false
    anim_UI_point_linear_char_select_scene_second_glow_opacity["fix_type"] = true

    --glow alpha anim
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x = {}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x[0] = {587, 2}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x[2] = {530, 5}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x[5] = {490, 10}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x[10] = {451, 15}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x[15] = {427, 20}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x[20] = {411, 25}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x[25] = {401, 30}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x[30] = {394, 40}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x[40] = {390, 40}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x["prop"] = 11
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x["length"] = 40
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x["loop"] = false
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x["fix_type"] = true

    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y = {}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y[0] = {149, 2}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y[2] = {175, 5}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y[5] = {193, 10}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y[10] = {209, 15}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y[15] = {220, 20}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y[20] = {227, 25}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y[25] = {231, 30}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y[30] = {234, 40}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y[40] = {237, 40}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y["prop"] = 10
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y["length"] = 40
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y["loop"] = false
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y["fix_type"] = true

    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x = {}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x[0] = {384, 2}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x[2] = {411, 5}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x[5] = {433, 10}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x[10] = {453, 15}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x[15] = {465, 20}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x[20] = {473, 25}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x[25] = {478, 30}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x[30] = {482, 40}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x[40] = {484, 40}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x["prop"] = 5
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x["length"] = 40
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x["loop"] = false
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x["fix_type"] = true

    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y = {}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y[0] = {262, 2}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y[2] = {247, 5}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y[5] = {236, 10}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y[10] = {226, 15}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y[15] = {219, 20}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y[20] = {215, 25}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y[25] = {212, 30}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y[30] = {211, 40}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y[40] = {210, 40}
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y["prop"] = 4
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y["length"] = 40
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y["loop"] = false
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y["fix_type"] = true

    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1 = {}
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1[0] = {0, 2}
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1[2] = {0.27, 4}
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1[4] = {0.47, 7}
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1[7] = {0.65, 10}
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1[10] = {0.77, 15}
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1[15] = {0.89, 20}
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1[20] = {0.96, 30}
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1[30] = {1, 30}
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1["prop"] = 4
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1["length"] = 30
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1["loop"] = false
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1["fix_type"] = true

    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x = {}
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x[0] = {0, 1}
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x[1] = {-2, 3}
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x[3] = {-4.30, 5}
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x[5] = {-5.60, 10}
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x[10] = {-7.70, 15}
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x[15] = {-8.90, 20}
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x[20] = {-9.60, 25}
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x[25] = {-9.90, 30}
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x[30] = {-10, 30}
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x["prop"] = "image_x"
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x["length"] = 30
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x["loop"] = false
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x["fix_type"] = false

    anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_1 = {}
    anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_1[0] = {0, 5}
    anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_1[5] = {1, 5}
    anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_1["prop"] = 1
    anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_1["length"] = 5
    anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_1["loop"] = false
    anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_1["fix_type"] = false

    anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0_1 = {}
    anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0_1[0] = {1, 5}
    anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0_1[5] = {0, 5}
    anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0_1["prop"] = 1
    anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0_1["length"] = 5
    anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0_1["loop"] = false
    anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0_1["fix_type"] = false

    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1 = {}
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1[0] = {0, 1}
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1[1] = {0.60, 2}
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1[2] = {0.83, 3}
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1[3] = {0.93, 4}
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1[4] = {0.99, 5}
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1[5] = {1, 5}
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1["prop"] = 4
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1["length"] = 5
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1["fix_type"] = true

    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x = {}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[0] = {0, 1}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[1] = {-25.40, 2}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[2] = {-31.60, 3}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[3] = {-35.40, 5}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[5] = {-40.20, 10}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[10] = {-46.70, 20}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[20] = {-52.60, 30}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[30] = {-55.40, 40}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[40] = {-57.10, 50}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[50] = {-58.20, 60}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[60] = {-58.90, 70}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[70] = {-59.40, 80}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[80] = {-59.70, 90}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[90] = {-59.90, 100}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[100] = {-60, 110}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[110] = {-60, 120}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x[120] = {-60, 120}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x["prop"] = 1
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x["length"] = 120
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_image_flash_in_x["fix_type"] = false

    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x = {}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x[0] = {-60.00, 1}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x[1] = {-61.00, 2}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x[2] = {-64.75, 3}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x[3] = {-74.80, 4}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x[4] = {-98.00, 5}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x[5] = {-150.00, 5}
    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x["prop"] = 1
    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x["length"] = 5
    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_image_flash_out_x["fix_type"] = false

    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x = {}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[0] = {0.00, 1}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[1] = {-97.50, 2}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[2] = {-120.70, 3}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[3] = {-134.90, 5}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[5] = {-153.00, 10}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[10] = {-177.20, 20}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[20] = {-199.10, 30}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[30] = {-209.80, 40}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[40] = {-216.00, 50}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[50] = {-219.90, 60}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[60] = {-222.40, 70}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[70] = {-224.00, 80}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[80] = {-225.00, 90}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[90] = {-225.70, 100}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[100] = {-226.10, 110}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[110] = {-226.20, 120}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x[120] = {-226.30, 120}
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x["prop"] = 1
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x["length"] = 120
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x["fix_type"] = false

end


function load_char_select_scene_audio()
    -- scene audio
    audio_SFX_char_select_scene_start_SFX_1 = {1}
    audio_SFX_char_select_scene_start_SFX_1["LCT"] = {0}
    audio_SFX_char_select_scene_start_SFX_1["LCD"] = {0}
    audio_SFX_char_select_scene_start_SFX_1["audio"] = love.audio.newSource("asset/char_select_scene/audio/start_SFX_1.mp3","static")

    audio_SFX_char_select_scene_start_SFX_2 = {1}
    audio_SFX_char_select_scene_start_SFX_2["LCT"] = {0}
    audio_SFX_char_select_scene_start_SFX_2["LCD"] = {0}
    audio_SFX_char_select_scene_start_SFX_2["audio"] = love.audio.newSource("asset/char_select_scene/audio/start_SFX_2.mp3","static")

    audio_SFX_char_select_scene_click_L = {1}
    audio_SFX_char_select_scene_click_L["LCT"] = {0}
    audio_SFX_char_select_scene_click_L["LCD"] = {0}
    audio_SFX_char_select_scene_click_L["audio"] = love.audio.newSource("asset/char_select_scene/audio/click_L.mp3","static")

    audio_SFX_char_select_scene_click_R = {1}
    audio_SFX_char_select_scene_click_R["LCT"] = {0}
    audio_SFX_char_select_scene_click_R["LCD"] = {0}
    audio_SFX_char_select_scene_click_R["audio"] = love.audio.newSource("asset/char_select_scene/audio/click_R.mp3","static")

    audio_SFX_char_select_scene_flash_out = {1}
    audio_SFX_char_select_scene_flash_out["LCT"] = {0}
    audio_SFX_char_select_scene_flash_out["LCD"] = {0}
    audio_SFX_char_select_scene_flash_out["audio"] = love.audio.newSource("asset/char_select_scene/audio/flash_out.mp3","static")

    audio_SFX_char_select_scene_lock_SFX_L = {1}
    audio_SFX_char_select_scene_lock_SFX_L["LCT"] = {0}
    audio_SFX_char_select_scene_lock_SFX_L["LCD"] = {0}
    audio_SFX_char_select_scene_lock_SFX_L["audio"] = love.audio.newSource("asset/char_select_scene/audio/lock_SFX_L.mp3","static")

    audio_SFX_char_select_scene_lock_SFX_R = {1}
    audio_SFX_char_select_scene_lock_SFX_R["LCT"] = {0}
    audio_SFX_char_select_scene_lock_SFX_R["LCD"] = {0}
    audio_SFX_char_select_scene_lock_SFX_R["audio"] = love.audio.newSource("asset/char_select_scene/audio/lock_SFX_R.mp3","static")

    audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit = {1}
    audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit["LCT"] = {0}
    audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit["LCD"] = {0}
    audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit["audio"] = love.audio.newSource("asset/char_select_scene/audio/psychedelic_Parade_Re_Edit.mp3","stream")

    audio_SFX_char_select_scene_to_main_L = {1}
    audio_SFX_char_select_scene_to_main_L["LCT"] = {0}
    audio_SFX_char_select_scene_to_main_L["LCD"] = {0}
    audio_SFX_char_select_scene_to_main_L["audio"] = love.audio.newSource("asset/char_select_scene/audio/to_main_L.mp3","static")

    audio_SFX_char_select_scene_to_main_R = {1}
    audio_SFX_char_select_scene_to_main_R["LCT"] = {0}
    audio_SFX_char_select_scene_to_main_R["LCD"] = {0}
    audio_SFX_char_select_scene_to_main_R["audio"] = love.audio.newSource("asset/char_select_scene/audio/to_main_R.mp3","static")

    audio_SFX_char_select_scene_to_sub_L = {1}
    audio_SFX_char_select_scene_to_sub_L["LCT"] = {0}
    audio_SFX_char_select_scene_to_sub_L["LCD"] = {0}
    audio_SFX_char_select_scene_to_sub_L["audio"] = love.audio.newSource("asset/char_select_scene/audio/to_sub_L.mp3","static")

    audio_SFX_char_select_scene_to_sub_R = {1}
    audio_SFX_char_select_scene_to_sub_R["LCT"] = {0}
    audio_SFX_char_select_scene_to_sub_R["LCD"] = {0}
    audio_SFX_char_select_scene_to_sub_R["audio"] = love.audio.newSource("asset/char_select_scene/audio/to_sub_R.mp3","static")


    update_SFX_VOLUME(audio_SFX_char_select_scene_start_SFX_1)
    update_SFX_VOLUME(audio_SFX_char_select_scene_start_SFX_2)
    update_SFX_VOLUME(audio_SFX_char_select_scene_click_L)
    update_SFX_VOLUME(audio_SFX_char_select_scene_click_R)
    update_SFX_VOLUME(audio_SFX_char_select_scene_flash_out)
    update_SFX_VOLUME(audio_SFX_char_select_scene_lock_SFX_L)
    update_SFX_VOLUME(audio_SFX_char_select_scene_lock_SFX_R)
    update_SFX_VOLUME(audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit)
    update_SFX_VOLUME(audio_SFX_char_select_scene_to_main_L)
    update_SFX_VOLUME(audio_SFX_char_select_scene_to_main_R)
    update_SFX_VOLUME(audio_SFX_char_select_scene_to_sub_L)
    update_SFX_VOLUME(audio_SFX_char_select_scene_to_sub_R)

    -- audio anim
    anim_UI_point_linear_char_select_scene_audio_flash_in_0_1_volume = {}
    anim_UI_point_linear_char_select_scene_audio_flash_in_0_1_volume[0] = {0, 5}
    anim_UI_point_linear_char_select_scene_audio_flash_in_0_1_volume[5] = {1, 5}
    anim_UI_point_linear_char_select_scene_audio_flash_in_0_1_volume["prop"] = 1
    anim_UI_point_linear_char_select_scene_audio_flash_in_0_1_volume["length"] = 5
    anim_UI_point_linear_char_select_scene_audio_flash_in_0_1_volume["loop"] = false
    anim_UI_point_linear_char_select_scene_audio_flash_in_0_1_volume["fix_type"] = true

    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_0 = {}
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_0[0] = {1, 5}
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_0[5] = {0, 5}
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_0["prop"] = 1
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_0["length"] = 5
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_0["loop"] = false
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_0["fix_type"] = true

    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1 = {}
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1[0] = {1, 40}
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1[40] = {0, 40}
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1["prop"] = 1
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1["length"] = 40
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1["loop"] = false
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1["fix_type"] = true

end




function unload_char_select_scene_obj()
    obj_UI_char_select_scene_black_solid = nil
    obj_UI_char_select_scene_movie_cover = nil
    obj_UI_char_select_scene_first_ring = nil
    obj_UI_char_select_scene_white_solid = nil
    obj_UI_char_select_scene_second_ring = nil
    obj_UI_char_select_scene_second_glow = nil
    obj_UI_char_select_scene_bar_mark_L = nil
    obj_UI_char_select_scene_bar_mark_R = nil
    obj_UI_char_select_scene_control_method_L = nil
    obj_UI_char_select_scene_control_method_R = nil
    obj_UI_char_select_scene_char_select_left = nil
    obj_UI_char_select_scene_char_select_left_image = nil
    obj_UI_char_select_scene_char_select_left_text = nil
    obj_UI_char_select_scene_char_select_right = nil
    obj_UI_char_select_scene_char_select_right_image = nil
    obj_UI_char_select_scene_char_select_right_text = nil
    obj_UI_char_select_scene_char_select_bg = nil
    obj_UI_char_select_scene_icon_select_L = nil
    obj_UI_char_select_scene_icon_select_R = nil
    obj_UI_char_select_scene_icon_ERIKAWK3 = nil
    obj_UI_char_select_scene_icon_KTC = nil
    obj_UI_char_select_scene_icon_ANRI = nil
    obj_UI_char_select_scene_icon_IZY = nil
    obj_UI_char_select_scene_icon_SZO = nil
    obj_UI_char_select_scene_icon_CKG = nil
    obj_UI_char_select_scene_icon_SHINRA = nil
    obj_UI_char_select_scene_icon_SRT = nil
    obj_UI_char_select_solid_bg = nil

end


function unload_char_select_scene_anim()

end


function unload_char_select_scene_audio()
    audio_SFX_char_select_scene_start_SFX_1 = nil
    audio_SFX_char_select_scene_start_SFX_2 = nil
    audio_SFX_char_select_scene_click_L = nil
    audio_SFX_char_select_scene_click_R = nil
    audio_SFX_char_select_scene_flash_out = nil
    audio_SFX_char_select_scene_lock_SFX_L = nil
    audio_SFX_char_select_scene_lock_SFX_R = nil
    audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit = nil
    audio_SFX_char_select_scene_to_main_L = nil
    audio_SFX_char_select_scene_to_main_R = nil
    audio_SFX_char_select_scene_to_sub_L = nil
    audio_SFX_char_select_scene_to_sub_R = nil

    anim_UI_point_linear_char_select_scene_audio_flash_in_0_1_volume = nil
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_0 = nil
    anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1 = nil
    
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
function unload_char_select_scene_all()
    unload_char_select_scene_obj()
    unload_char_select_scene_anim()
    unload_char_select_scene_image()
    unload_char_select_scene_audio()

end

function preset_char_select_scene()
    init_point_linear_anim_with(obj_UI_char_select_scene_black_solid,anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity)
    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    init_frame_anim_with(obj_UI_char_select_scene_first_ring,anim_UI_frame_select_scene_first_ring_f)
    play_obj_audio(audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit)
    play_obj_audio(audio_SFX_char_select_scene_start_SFX_1)

end