function load_game_scene_common_obj()
    load_game_scene_obj_char_LP()
    load_game_scene_obj_char_RP()
    load_game_scene_stage()
    load_game_scene_announcer_HUD_obj()
    
end


function load_game_scene_common_anim()
    load_game_scene_anim_char_LP()
    load_game_scene_anim_char_RP()
    load_game_scene_announcer_HUD_anim()
    
end


function load_game_scene_common_audio()
    
end


function load_game_scene_common_shader()
    shader_game_scene_fractal_noise = love.graphics.newShader("shaders/game_fractal_noise.glsl")
    shader_game_scene_radial_blur = love.graphics.newShader("shaders/radial_blur.glsl")
    
    CANVAS = love.graphics.newCanvas(1600,900)
    CANVAS_RADIAL_BLUR = love.graphics.newCanvas(1600,900)
    CANVAS_ALPHA_COMP = love.graphics.newCanvas(1600,900)
    CANVAS_ALPHA_ONLY = love.graphics.newCanvas(1600,900)

end





function load_game_scene_announcer_HUD_obj()
    obj_update_flow_controller_game_scene_common = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_update_flow_controller_game_scene_common["FCT"] = {0,0,0,0,0,0,0,0}
    obj_update_flow_controller_game_scene_common["LCT"] = {0,0,0,0,0,0,0,0}
    obj_update_flow_controller_game_scene_common["LCD"] = {0,0,0,0,0,0,0,0}
    obj_update_flow_controller_game_scene_common["state"] = "before_ease_in"

    obj_UI_game_scene_black_solid = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_UI_game_scene_black_solid["FCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_game_scene_black_solid["LCT"] = {0,0,0,0,0,0,0,0}
    obj_UI_game_scene_black_solid["LCD"] = {0,0,0,0,0,0,0,0}
    obj_UI_game_scene_black_solid["state"] = "default"
    obj_UI_game_scene_black_solid["rgb"] = {7/255,19/255,31/255}

    obj_annoucer_game_scene_act_common = {0, 200, nil, 0, 1, 1, 0, 0}
    obj_annoucer_game_scene_act_common["FCT"] = {0,0,0,0,0,0,0,0}
    obj_annoucer_game_scene_act_common["LCT"] = {0,0,0,0,0,0,0,0}
    obj_annoucer_game_scene_act_common["LCD"] = {0,0,0,0,0,0,0,0}
    obj_annoucer_game_scene_act_common["state"] = "default"

    obj_annoucer_game_scene_act_num = {675, 400, nil, 0, 1, 1, 0, 0}
    obj_annoucer_game_scene_act_num["FCT"] = {0,0,0,0,0,0,0,0}
    obj_annoucer_game_scene_act_num["LCT"] = {0,0,0,0,0,0,0,0}
    obj_annoucer_game_scene_act_num["LCD"] = {0,0,0,0,0,0,0,0}
    obj_annoucer_game_scene_act_num["state"] = "default"

    obj_annoucer_game_scene_lets_dance = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_annoucer_game_scene_lets_dance["FCT"] = {0,0,0,0,0,0,0,0}
    obj_annoucer_game_scene_lets_dance["LCT"] = {0,0,0,0,0,0,0,0}
    obj_annoucer_game_scene_lets_dance["LCD"] = {0,0,0,0,0,0,0,0}
    obj_annoucer_game_scene_lets_dance["state"] = "default"

    obj_HUD_game_scene_ease_in = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_ease_in["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_ease_in["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_ease_in["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_ease_in["state"] = "default"

    obj_HUD_game_scene_timer = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_timer["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_timer["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_timer["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_timer["state"] = "default"

    obj_HUD_game_scene_win_marks_LP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_win_marks_LP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_win_marks_LP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_win_marks_LP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_win_marks_LP["state"] = "default"

    obj_HUD_game_scene_win_marks_RP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_win_marks_RP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_win_marks_RP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_win_marks_RP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_win_marks_RP["state"] = "default"

    obj_HUD_game_scene_match_point_LP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_match_point_LP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_LP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_LP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_LP["state"] = "default"

    obj_HUD_game_scene_match_point_RP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_match_point_RP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_RP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_RP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_RP["state"] = "default"

    obj_HUD_game_scene_health_bar_LP = {685, 65, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_health_bar_RP = {915, 65, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_health_bar_LP_fade = {685, 65, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_health_bar_RP_fade = {915, 65, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_heat_bar_LP = {678, 124, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_heat_bar_RP = {0, 124, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_ability_bar_LP = {670, 102, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_ability_bar_RP = {930, 102, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_pie_LP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_pie_RP = {0, 0, nil, 0, 1, 1, 0, 0}

    obj_HUD_game_scene_overdrive_text_LP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_text_LP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_LP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_LP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_LP["state"] = "default"

    obj_HUD_game_scene_overdrive_text_RP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_text_RP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_RP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_RP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_RP["state"] = "default"

    obj_HUD_game_scene_overdrive_timer_LP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_timer_LP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_LP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_LP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_LP["state"] = "default"

    obj_HUD_game_scene_overdrive_timer_RP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_timer_RP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_RP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_RP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_RP["state"] = "default"

    obj_HUD_game_scene_risk_LP = {255, 127, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_risk_RP = {1345, 127, nil, 0, 1, 1, 0, 0}

    obj_HUD_game_scene_positive_bouns_LP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_positive_bouns_LP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bouns_LP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bouns_LP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bouns_LP["state"] = "default"

    obj_HUD_game_scene_positive_bouns_RP = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_positive_bouns_RP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bouns_RP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bouns_RP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bouns_RP["state"] = "default"

    obj_HUD_game_scene_background_gauge = {0, 0, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_background_gauge["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_background_gauge["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_background_gauge["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_background_gauge["state"] = "default"


end

function load_game_scene_announcer_HUD_anim()
    anim_UI_point_linear_game_scene_solid_ease_in_opacity_0_1 = {}
    anim_UI_point_linear_game_scene_solid_ease_in_opacity_0_1[0] = {0, 5}
    anim_UI_point_linear_game_scene_solid_ease_in_opacity_0_1[5] = {1, 5}
    anim_UI_point_linear_game_scene_solid_ease_in_opacity_0_1["prop"] = 4
    anim_UI_point_linear_game_scene_solid_ease_in_opacity_0_1["length"] = 5
    anim_UI_point_linear_game_scene_solid_ease_in_opacity_0_1["loop"] = false
    anim_UI_point_linear_game_scene_solid_ease_in_opacity_0_1["fix_type"] = true

    anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0 = {}
    anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0[0] = {1, 5}
    anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0[5] = {0, 5}
    anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0["prop"] = 4
    anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0["length"] = 5
    anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0["loop"] = false
    anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0["fix_type"] = true


end