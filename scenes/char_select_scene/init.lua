function load_char_select_scene_obj()
    -- 覆盖黑色前景
    obj_UI_char_select_scene_black_solid = {0, 0, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_black_solid["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_black_solid["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_black_solid["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_black_solid["state"] = "default"
    obj_UI_char_select_scene_black_solid["rgb"] = {7/255,19/255,31/255}
    
    -- 覆盖电影噪点
    obj_UI_char_select_scene_movie_cover = {0, 0, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_movie_cover["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_movie_cover["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_movie_cover["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_movie_cover["state"] = "default"

    obj_UI_char_select_scene_start_0f_110f = {0, 0, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_start_0f_110f["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_start_0f_110f["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_start_0f_110f["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_start_0f_110f["state"] = "default"

    -- 光环
    obj_UI_char_select_scene_ring = {0, 0, nil, 0.75, 1, 1, 0, 0}
    obj_UI_char_select_scene_ring["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_ring["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_ring["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_ring["state"] = "default"
    
    obj_UI_char_select_scene_glow = {0, 0, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_glow["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_glow["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_glow["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_glow["state"] = "default"
    obj_UI_char_select_scene_glow["alpha_points"] = {0,0, 0,262, 384,900, 1600,900, 1600,149, 587,0}
    obj_UI_char_select_scene_glow["alpha_points"]["LCT"] = {0,0, 0,0, 0,0, 0,0, 0,0, 0,0}
    obj_UI_char_select_scene_glow["alpha_points"]["LCD"] = {0,0, 0,0, 0,0, 0,0, 0,0, 0,0}
    
    obj_UI_char_select_scene_bar_mark_L = {55, 509, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_bar_mark_L["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_L["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_L["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_L["state"] = "idle"
    
    obj_UI_char_select_scene_bar_mark_R = {1545, 739, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_bar_mark_R["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_R["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_R["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_bar_mark_R["state"] = "idle"
    
    obj_UI_char_select_scene_control_method_L = {90, 470, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_control_method_L["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_L["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_L["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_L["state"] = "default"
    
    obj_UI_char_select_scene_control_method_R = {1236, 700, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_control_method_R["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_R["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_R["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_control_method_R["state"] = "default"

    obj_UI_char_select_scene_timer = {1321, 815, nil, 0, 1, 1, 0, 0}
    obj_UI_char_select_scene_timer["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_timer["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_timer["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_timer["state"] = "default"
    obj_UI_char_select_scene_timer["time"] = {6,0,60}
    
    obj_UI_char_select_scene_char_select_left = {-33, 110, nil, 0, 1, 1, 0, 4}
    obj_UI_char_select_scene_char_select_left["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left["select_state"] = "idle"
    obj_UI_char_select_scene_char_select_left["ease_state"] = "ease_in"
    
    obj_UI_char_select_scene_char_select_left_char = {-200, -52, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_char_select_left_char["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_char["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_char["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_char["state"] = "default"
    
    obj_UI_char_select_scene_char_select_left_text = {375, -179, nil, 1, 1, 1, 0.192, 0}
    obj_UI_char_select_scene_char_select_left_text["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_text["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_text["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_left_text["state"] = "default"
    
    obj_UI_char_select_scene_char_select_right = {-25, 335, nil, 0, 1, 1, 0, 5}
    obj_UI_char_select_scene_char_select_right["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right["select_state"] = "idle"
    obj_UI_char_select_scene_char_select_right["ease_state"] = "ease_in"
    
    obj_UI_char_select_scene_char_select_right_char = {610, -12, nil, 1, 1, 1, 0, 0}
    obj_UI_char_select_scene_char_select_right_char["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_char["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_char["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_char["state"] = "default"
    
    obj_UI_char_select_scene_char_select_right_text = {1291, -36, nil, 1, 1, 1, 0.436, 0}
    obj_UI_char_select_scene_char_select_right_text["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_text["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_text["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_char_select_right_text["state"] = "default"
    
    obj_UI_char_select_scene_icon_select_L = {603, 349, nil, 0, 1, 1, 0, 4}
    obj_UI_char_select_scene_icon_select_L["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_L["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_L["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_L["state"] = "default"
    
    obj_UI_char_select_scene_icon_select_R = {760, 166, nil, 0, 1, 1, 0, 5}
    obj_UI_char_select_scene_icon_select_R["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_R["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_R["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_char_select_scene_icon_select_R["state"] = "default"

end


function load_char_select_scene_anim()
    -- black solid 闪出
    anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity = {}
    anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity[0] = {1, 2}
    anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity[2] = {0.55, 6}
    anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity[6] = {0.22, 10}
    anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity[10] = {0.07, 15}
    anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity[15] = {0, 15}
    anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity["prop"] = 4
    anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity["length"] = 15
    anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity["loop"] = false
    anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity["fix_type"] = true

    --glow opacity anim
    anim_UI_point_linear_char_select_scene_glow_opacity = {}
    anim_UI_point_linear_char_select_scene_glow_opacity[0] = {1.00, 2}
    anim_UI_point_linear_char_select_scene_glow_opacity[2] = {0.82, 5}
    anim_UI_point_linear_char_select_scene_glow_opacity[5] = {0.70, 10}
    anim_UI_point_linear_char_select_scene_glow_opacity[10] = {0.62, 20}
    anim_UI_point_linear_char_select_scene_glow_opacity[20] = {0.54, 30}
    anim_UI_point_linear_char_select_scene_glow_opacity[30] = {0.50, 30}
    anim_UI_point_linear_char_select_scene_glow_opacity["prop"] = 4
    anim_UI_point_linear_char_select_scene_glow_opacity["length"] = 30
    anim_UI_point_linear_char_select_scene_glow_opacity["loop"] = false
    anim_UI_point_linear_char_select_scene_glow_opacity["fix_type"] = true

    --glow alpha anim
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x = {}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x[0] = {587, 2}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x[2] = {530, 5}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x[5] = {490, 10}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x[10] = {451, 15}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x[15] = {427, 20}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x[20] = {411, 25}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x[25] = {401, 30}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x[30] = {394, 40}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x[40] = {390, 40}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x["prop"] = 11
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x["length"] = 40
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x["loop"] = false
    anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x["fix_type"] = true

    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y = {}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y[0] = {149, 2}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y[2] = {175, 5}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y[5] = {193, 10}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y[10] = {209, 15}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y[15] = {220, 20}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y[20] = {227, 25}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y[25] = {231, 30}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y[30] = {234, 40}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y[40] = {237, 40}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y["prop"] = 10
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y["length"] = 40
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y["loop"] = false
    anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y["fix_type"] = true

    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x = {}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x[0] = {384, 2}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x[2] = {411, 5}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x[5] = {433, 10}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x[10] = {453, 15}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x[15] = {465, 20}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x[20] = {473, 25}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x[25] = {478, 30}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x[30] = {482, 40}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x[40] = {484, 40}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x["prop"] = 5
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x["length"] = 40
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x["loop"] = false
    anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x["fix_type"] = true

    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y = {}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y[0] = {262, 2}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y[2] = {247, 5}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y[5] = {236, 10}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y[10] = {226, 15}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y[15] = {219, 20}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y[20] = {215, 25}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y[25] = {212, 30}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y[30] = {211, 40}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y[40] = {210, 40}
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y["prop"] = 4
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y["length"] = 40
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y["loop"] = false
    anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y["fix_type"] = true

    anim_UI_point_linear_char_select_scene_icon_select_ease_in_opacity_0_0p5 = {}
    anim_UI_point_linear_char_select_scene_icon_select_ease_in_opacity_0_0p5[0] = {0, 5}
    anim_UI_point_linear_char_select_scene_icon_select_ease_in_opacity_0_0p5[5] = {0.5, 5}
    anim_UI_point_linear_char_select_scene_icon_select_ease_in_opacity_0_0p5["prop"] = 4
    anim_UI_point_linear_char_select_scene_icon_select_ease_in_opacity_0_0p5["length"] = 5
    anim_UI_point_linear_char_select_scene_icon_select_ease_in_opacity_0_0p5["loop"] = false
    anim_UI_point_linear_char_select_scene_icon_select_ease_in_opacity_0_0p5["fix_type"] = true

    anim_UI_point_linear_char_select_scene_icon_select_ease_out_opacity_0p5_0 = {}
    anim_UI_point_linear_char_select_scene_icon_select_ease_out_opacity_0p5_0[0] = {0.5, 5}
    anim_UI_point_linear_char_select_scene_icon_select_ease_out_opacity_0p5_0[5] = {0, 5}
    anim_UI_point_linear_char_select_scene_icon_select_ease_out_opacity_0p5_0["prop"] = 4
    anim_UI_point_linear_char_select_scene_icon_select_ease_out_opacity_0p5_0["length"] = 5
    anim_UI_point_linear_char_select_scene_icon_select_ease_out_opacity_0p5_0["loop"] = false
    anim_UI_point_linear_char_select_scene_icon_select_ease_out_opacity_0p5_0["fix_type"] = true

    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1 = {}
    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1[0] = {0, 1}
    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1[1] = {0.60, 2}
    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1[2] = {0.83, 3}
    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1[3] = {0.93, 4}
    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1[4] = {0.99, 5}
    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1[5] = {1, 5}
    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1["prop"] = 4
    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1["length"] = 5
    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_ease_in_opacity_0_1["fix_type"] = true

    anim_UI_point_linear_char_select_scene_char_select_unselecting_ease_in_opacity_0p25_1 = {}
    anim_UI_point_linear_char_select_scene_char_select_unselecting_ease_in_opacity_0p25_1[0] = {0.25, 3}
    anim_UI_point_linear_char_select_scene_char_select_unselecting_ease_in_opacity_0p25_1[3] = {0.75, 6}
    anim_UI_point_linear_char_select_scene_char_select_unselecting_ease_in_opacity_0p25_1[6] = {0.90, 9}
    anim_UI_point_linear_char_select_scene_char_select_unselecting_ease_in_opacity_0p25_1[9] = {0.95, 15}
    anim_UI_point_linear_char_select_scene_char_select_unselecting_ease_in_opacity_0p25_1[15] = {1, 15}
    anim_UI_point_linear_char_select_scene_char_select_unselecting_ease_in_opacity_0p25_1["prop"] = 4
    anim_UI_point_linear_char_select_scene_char_select_unselecting_ease_in_opacity_0p25_1["length"] = 15
    anim_UI_point_linear_char_select_scene_char_select_unselecting_ease_in_opacity_0p25_1["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_unselecting_ease_in_opacity_0p25_1["fix_type"] = true

    anim_UI_point_linear_char_select_scene_char_select_selecting_ease_out_opacity_1_0p25 = {}
    anim_UI_point_linear_char_select_scene_char_select_selecting_ease_out_opacity_1_0p25[0] = {1, 3}
    anim_UI_point_linear_char_select_scene_char_select_selecting_ease_out_opacity_1_0p25[3] = {0.50, 6}
    anim_UI_point_linear_char_select_scene_char_select_selecting_ease_out_opacity_1_0p25[6] = {0.35, 9}
    anim_UI_point_linear_char_select_scene_char_select_selecting_ease_out_opacity_1_0p25[9] = {0.30, 15}
    anim_UI_point_linear_char_select_scene_char_select_selecting_ease_out_opacity_1_0p25[15] = {0.25, 15}
    anim_UI_point_linear_char_select_scene_char_select_selecting_ease_out_opacity_1_0p25["prop"] = 4
    anim_UI_point_linear_char_select_scene_char_select_selecting_ease_out_opacity_1_0p25["length"] = 15
    anim_UI_point_linear_char_select_scene_char_select_selecting_ease_out_opacity_1_0p25["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_selecting_ease_out_opacity_1_0p25["fix_type"] = true

    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x = {}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[0] = {0, 1}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[1] = {-25.40, 2}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[2] = {-31.60, 3}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[3] = {-35.40, 5}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[5] = {-40.20, 10}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[10] = {-46.70, 20}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[20] = {-52.60, 30}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[30] = {-55.40, 40}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[40] = {-57.10, 50}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[50] = {-58.20, 60}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[60] = {-58.90, 70}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[70] = {-59.40, 80}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[80] = {-59.70, 90}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[90] = {-59.90, 100}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[100] = {-60, 110}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[110] = {-60, 120}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x[120] = {-60, 120}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x["prop"] = 1
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x["length"] = 120
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_char_ease_in_x["fix_type"] = false

    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x = {}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x[0] = {-60.00, 1}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x[1] = {-61.00, 2}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x[2] = {-64.75, 3}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x[3] = {-74.80, 4}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x[4] = {-98.00, 5}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x[5] = {-150.00, 5}
    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x["prop"] = 1
    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x["length"] = 5
    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_char_ease_out_x["fix_type"] = false

    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x = {}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[0] = {0.00, 1}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[1] = {-97.50, 2}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[2] = {-120.70, 3}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[3] = {-134.90, 5}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[5] = {-153.00, 10}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[10] = {-177.20, 20}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[20] = {-199.10, 30}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[30] = {-209.80, 40}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[40] = {-216.00, 50}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[50] = {-219.90, 60}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[60] = {-222.40, 70}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[70] = {-224.00, 80}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[80] = {-225.00, 90}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[90] = {-225.70, 100}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[100] = {-226.10, 110}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[110] = {-226.20, 120}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x[120] = {-226.30, 120}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x["prop"] = 1
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x["length"] = 120
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_text_ease_in_x["fix_type"] = false

    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x = {}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x[0] = {-226.30, 1}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x[1] = {-231.00, 2}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x[2] = {-240.00, 3}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x[3] = {-268.00, 4}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x[4] = {-326.00, 5}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x[5] = {-423.00, 5}
    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x["prop"] = 1
    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x["length"] = 5
    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_text_ease_out_x["fix_type"] = false

    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_ease_out_opacity_1_0 = {}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_ease_out_opacity_1_0[0] = {1, 3}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_ease_out_opacity_1_0[3] = {0.50, 6}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_ease_out_opacity_1_0[6] = {0.25, 9}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_ease_out_opacity_1_0[9] = {0.10, 15}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_ease_out_opacity_1_0[15] = {0.0, 15}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_ease_out_opacity_1_0["prop"] = 4
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_ease_out_opacity_1_0["length"] = 15
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_ease_out_opacity_1_0["loop"] = false
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_ease_out_opacity_1_0["fix_type"] = true

    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_ease_in_opacity_0_1 = {}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_ease_in_opacity_0_1[0] = {0, 3}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_ease_in_opacity_0_1[3] = {0.50, 6}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_ease_in_opacity_0_1[6] = {0.75, 9}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_ease_in_opacity_0_1[9] = {0.90, 15}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_ease_in_opacity_0_1[15] = {1, 15}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_ease_in_opacity_0_1["prop"] = 4
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_ease_in_opacity_0_1["length"] = 15
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_ease_in_opacity_0_1["loop"] = false
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_ease_in_opacity_0_1["fix_type"] = true

    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_ease_out_opacity_1_0 = {}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_ease_out_opacity_1_0[0] = {1, 1}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_ease_out_opacity_1_0[1] = {0.50, 2}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_ease_out_opacity_1_0[2] = {0.25, 3}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_ease_out_opacity_1_0[3] = {0.1, 5}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_ease_out_opacity_1_0[5] = {0, 5}
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_ease_out_opacity_1_0["prop"] = 4
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_ease_out_opacity_1_0["length"] = 5
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_ease_out_opacity_1_0["loop"] = false
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_ease_out_opacity_1_0["fix_type"] = true

    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5 = {}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[0] = {0.25, 1}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[1] = {0.67, 2}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[2] = {0.87, 3}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[3] = {0.95, 5}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[5] = {1.00, 10}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[10] = {0.99, 15}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[15] = {0.97, 20}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[20] = {0.93, 25}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[25] = {0.89, 30}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[30] = {0.84, 35}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[35] = {0.78, 40}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[40] = {0.72, 45}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[45] = {0.66, 50}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[50] = {0.61, 55}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[55] = {0.57, 60}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[60] = {0.53, 65}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[65] = {0.51, 70}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5[70] = {0.50, 70}
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5["prop"] = 4
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5["length"] = 70
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5["loop"] = false
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5["fix_type"] = true

    anim_UI_point_linear_char_select_scene_bar_mark_up_y = {}
    anim_UI_point_linear_char_select_scene_bar_mark_up_y[0] = {0, 1}
    anim_UI_point_linear_char_select_scene_bar_mark_up_y[1] = {-6, 4}
    anim_UI_point_linear_char_select_scene_bar_mark_up_y[4] = {0, 4}
    anim_UI_point_linear_char_select_scene_bar_mark_up_y["prop"] = 2
    anim_UI_point_linear_char_select_scene_bar_mark_up_y["length"] = 4
    anim_UI_point_linear_char_select_scene_bar_mark_up_y["loop"] = false
    anim_UI_point_linear_char_select_scene_bar_mark_up_y["fix_type"] = false

    anim_UI_point_linear_char_select_scene_bar_mark_down_y = {}
    anim_UI_point_linear_char_select_scene_bar_mark_down_y[0] = {0, 1}
    anim_UI_point_linear_char_select_scene_bar_mark_down_y[1] = {6, 4}
    anim_UI_point_linear_char_select_scene_bar_mark_down_y[4] = {0, 4}
    anim_UI_point_linear_char_select_scene_bar_mark_down_y["prop"] = 2
    anim_UI_point_linear_char_select_scene_bar_mark_down_y["length"] = 4
    anim_UI_point_linear_char_select_scene_bar_mark_down_y["loop"] = false
    anim_UI_point_linear_char_select_scene_bar_mark_down_y["fix_type"] = false

    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out = {}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out[0] = {0.00, 2}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out[2] = {0.01, 4}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out[4] = {0.03, 6}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out[6] = {0.07, 8}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out[8] = {0.13, 10}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out[10] = {0.23, 12}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out[12] = {0.39, 13}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out[13] = {0.52, 14}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out[14] = {0.70, 15}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out[15] = {1.00, 15}
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out["prop"] = 4
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out["length"] = 15
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out["loop"] = false
    anim_UI_point_linear_char_select_scene_black_solid_scene_ease_out["fix_type"] = false

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

    audio_SFX_char_select_scene_ease_out = {1}
    audio_SFX_char_select_scene_ease_out["LCT"] = {0}
    audio_SFX_char_select_scene_ease_out["LCD"] = {0}
    audio_SFX_char_select_scene_ease_out["audio"] = love.audio.newSource("asset/char_select_scene/audio/ease_out.mp3","static")

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
    update_SFX_VOLUME(audio_SFX_char_select_scene_ease_out)
    update_SFX_VOLUME(audio_SFX_char_select_scene_lock_SFX_L)
    update_SFX_VOLUME(audio_SFX_char_select_scene_lock_SFX_R)
    update_SFX_VOLUME(audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit)
    update_SFX_VOLUME(audio_SFX_char_select_scene_to_main_L)
    update_SFX_VOLUME(audio_SFX_char_select_scene_to_main_R)
    update_SFX_VOLUME(audio_SFX_char_select_scene_to_sub_L)
    update_SFX_VOLUME(audio_SFX_char_select_scene_to_sub_R)

    -- audio anim
    anim_UI_point_linear_char_select_scene_audio_ease_out_1_0_volume_1 = {}
    anim_UI_point_linear_char_select_scene_audio_ease_out_1_0_volume_1[0] = {1, 40}
    anim_UI_point_linear_char_select_scene_audio_ease_out_1_0_volume_1[40] = {0, 40}
    anim_UI_point_linear_char_select_scene_audio_ease_out_1_0_volume_1["prop"] = 1
    anim_UI_point_linear_char_select_scene_audio_ease_out_1_0_volume_1["length"] = 40
    anim_UI_point_linear_char_select_scene_audio_ease_out_1_0_volume_1["loop"] = false
    anim_UI_point_linear_char_select_scene_audio_ease_out_1_0_volume_1["fix_type"] = true

end

function load_char_select_scene_shader()
    shader_char_select_scene_fractal_noise = love.graphics.newShader("shaders/char_select_fractal_noise.glsl")
    shader_char_select_scene_radial_blur = love.graphics.newShader("shaders/radial_blur.glsl")

    CANVAS = love.graphics.newCanvas(1600,900)
    CANVAS_RADIAL_BLUR = love.graphics.newCanvas(1600,900)
    CANVAS_ALPHA_COMP = love.graphics.newCanvas(1600,900)
    CANVAS_ALPHA_ONLY = love.graphics.newCanvas(1600,900)

end


function unload_char_select_scene_obj()
    for key in pairs(_G) do
        if key:sub(1, 24) == "obj_UI_char_select_scene" 
        then -- 检查变量名是否以 "prefix_" 开头
            _G[key] = nil -- 删除该变量
        end
    end

end


function unload_char_select_scene_anim()
    for key in pairs(_G) do
        if key:sub(1, 38) == "anim_UI_point_linear_char_select_scene"
        then -- 检查变量名是否以 "prefix_" 开头
            _G[key] = nil -- 删除该变量
        end
    end

end


function unload_char_select_scene_audio()
    for key in pairs(_G) do
        if key:sub(1, 27) == "audio_SFX_char_select_scene"
        or key:sub(1, 27) == "audio_BGM_char_select_scene"
        then -- 检查变量名是否以 "prefix_" 开头
            _G[key] = nil -- 删除该变量
        end
    end
    
end

function unload_char_select_scene_shader()
    for key in pairs(_G) do
        if key:sub(1, 24) == "shader_char_select_scene"
        then -- 检查变量名是否以 "prefix_" 开头
            _G[key] = nil -- 删除该变量
        end
    end

    CANVAS = nil
    CANVAS_RADIAL_BLUR = nil
    CANVAS_ALPHA_COMP = nil
    CANVAS_ALPHA_ONLY = nil

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
    unload_char_select_scene_shader()
    unload_char_select_scene_require()

end

function preset_char_select_scene()
    init_point_linear_anim_with(obj_UI_char_select_scene_black_solid,anim_UI_point_linear_char_select_scene_black_solid_ease_out_opacity)
    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_start_0f_110f(obj_UI_char_select_scene_start_0f_110f)
    play_obj_audio(audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit)
    play_obj_audio(audio_SFX_char_select_scene_start_SFX_1)

end