function load_game_scene_char_obj(side)
    if side == "left" then
        obj_char_game_scene_char_LP = {-325, 103, 0, 1, 1, 1, 0, 0}
        obj_char_game_scene_char_LP["width"] = 400
        obj_char_game_scene_char_LP["height"] = 500
        obj_char_game_scene_char_LP["FCT"] = {0,0,0,0,0,0,0}
        obj_char_game_scene_char_LP["LCT"] = {0,0,0,0,0,0,0}
        obj_char_game_scene_char_LP["LCD"] = {0,0,0,0,0,0,0}
        obj_char_game_scene_char_LP["state"] = "default"
        obj_char_game_scene_char_LP["side"] = "left"
    else
        obj_char_game_scene_char_RP = {325, 103, 0, 1, -1, 1, 0, 0}
        obj_char_game_scene_char_RP["width"] = 400
        obj_char_game_scene_char_RP["height"] = 500
        obj_char_game_scene_char_RP["FCT"] = {0,0,0,0,0,0,0}
        obj_char_game_scene_char_RP["LCT"] = {0,0,0,0,0,0,0}
        obj_char_game_scene_char_RP["LCD"] = {0,0,0,0,0,0,0}
        obj_char_game_scene_char_RP["state"] = "default"
        obj_char_game_scene_char_RP["side"] = "right"
    end

end

function update_game_scene_char()

end

function draw_game_scene_char(stage_light_list)

end

function load_game_scene_char_anim()

end

function load_game_scene_char_audio()

end




function load_game_scene_char_HUD_obj(side)
    obj_HUD_game_scene_announcer = {800, 450, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_announcer["width"] = 1600
    obj_HUD_game_scene_announcer["height"] = 500
    obj_HUD_game_scene_announcer["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_announcer["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_announcer["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_announcer["state"] = "default"
    
    obj_HUD_game_scene_positive_bonus_text_LP = {485, 45, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_positive_bonus_text_LP["width"] = 200
    obj_HUD_game_scene_positive_bonus_text_LP["height"] = 20
    obj_HUD_game_scene_positive_bonus_text_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bonus_text_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bonus_text_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bonus_text_LP["state"] = "default"
    
    obj_HUD_game_scene_positive_bonus_text_RP = {932, 45, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_positive_bonus_text_RP["width"] = 200
    obj_HUD_game_scene_positive_bonus_text_RP["height"] = 20
    obj_HUD_game_scene_positive_bonus_text_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bonus_text_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bonus_text_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_positive_bonus_text_RP["state"] = "default"
    
    obj_HUD_game_scene_round_counter_LP = {751, 116, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_round_counter_LP["width"] = 15
    obj_HUD_game_scene_round_counter_LP["height"] = 20
    obj_HUD_game_scene_round_counter_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_counter_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_counter_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_counter_LP["state"] = "default"
    
    obj_HUD_game_scene_round_counter_RP = {849, 116, nil, 1, -1, 1, 0, 0}
    obj_HUD_game_scene_round_counter_RP["width"] = 15
    obj_HUD_game_scene_round_counter_RP["height"] = 20
    obj_HUD_game_scene_round_counter_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_counter_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_counter_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_counter_RP["state"] = "default"
    
    obj_HUD_game_scene_round_timer_0 = {780, 85, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_round_timer_0["width"] = 20
    obj_HUD_game_scene_round_timer_0["height"] = 35
    obj_HUD_game_scene_round_timer_0["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_timer_0["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_timer_0["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_timer_0["state"] = "default"
    
    obj_HUD_game_scene_round_timer_1 = {803, 85, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_round_timer_1["width"] = 20
    obj_HUD_game_scene_round_timer_1["height"] = 35
    obj_HUD_game_scene_round_timer_1["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_timer_1["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_timer_1["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_round_timer_1["state"] = "default"
    
    obj_HUD_game_scene_match_point_indi_LP = {717, 85, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_match_point_indi_LP["width"] = 50
    obj_HUD_game_scene_match_point_indi_LP["height"] = 35
    obj_HUD_game_scene_match_point_indi_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_indi_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_indi_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_indi_LP["state"] = "default"
    
    obj_HUD_game_scene_match_point_indi_RP = {883, 85, nil, 1, -1, 1, 0, 0}
    obj_HUD_game_scene_match_point_indi_RP["width"] = 50
    obj_HUD_game_scene_match_point_indi_RP["height"] = 35
    obj_HUD_game_scene_match_point_indi_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_indi_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_indi_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_point_indi_RP["state"] = "default"
    
    obj_HUD_game_scene_health_bar_LP = {175, 65, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_health_bar_LP["width"] = 525
    obj_HUD_game_scene_health_bar_LP["height"] = 40
    obj_HUD_game_scene_health_bar_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_health_bar_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_health_bar_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_health_bar_LP["state"] = "default"
    
    obj_HUD_game_scene_health_bar_RP = {1425, 65, nil, 1, -1, 1, 0, 0}
    obj_HUD_game_scene_health_bar_RP["width"] = 525
    obj_HUD_game_scene_health_bar_RP["height"] = 40
    obj_HUD_game_scene_health_bar_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_health_bar_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_health_bar_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_health_bar_RP["state"] = "default"
    
    obj_HUD_game_scene_ability_bar_LP = {375, 102, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_ability_bar_LP["width"] = 305
    obj_HUD_game_scene_ability_bar_LP["height"] = 25
    obj_HUD_game_scene_ability_bar_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_ability_bar_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_ability_bar_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_ability_bar_LP["state"] = "default"
    
    obj_HUD_game_scene_ability_bar_RP = {1225, 102, nil, 1, -1, 1, 0, 0}
    obj_HUD_game_scene_ability_bar_RP["width"] = 305
    obj_HUD_game_scene_ability_bar_RP["height"] = 25
    obj_HUD_game_scene_ability_bar_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_ability_bar_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_ability_bar_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_ability_bar_RP["state"] = "default"
    
    obj_HUD_game_scene_heat_bar_LP = {295, 124, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_heat_bar_LP["width"] = 400
    obj_HUD_game_scene_heat_bar_LP["height"] = 20
    obj_HUD_game_scene_heat_bar_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_heat_bar_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_heat_bar_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_heat_bar_LP["state"] = "default"

    obj_HUD_game_scene_heat_bar_RP = {1305, 124, nil, 1, -1, 1, 0, 0}
    obj_HUD_game_scene_heat_bar_RP["width"] = 400
    obj_HUD_game_scene_heat_bar_RP["height"] = 20
    obj_HUD_game_scene_heat_bar_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_heat_bar_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_heat_bar_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_heat_bar_RP["state"] = "default"
    
    obj_HUD_game_scene_overdrive_text_bar_LP = {205, 102, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_text_bar_LP["width"] = 150
    obj_HUD_game_scene_overdrive_text_bar_LP["height"] = 20
    obj_HUD_game_scene_overdrive_text_bar_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_bar_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_bar_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_bar_LP["state"] = "default"
    
    obj_HUD_game_scene_overdrive_text_bar_RP = {1250, 102, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_text_bar_RP["width"] = 150
    obj_HUD_game_scene_overdrive_text_bar_RP["height"] = 20
    obj_HUD_game_scene_overdrive_text_bar_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_bar_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_bar_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_bar_RP["state"] = "default"
    
    obj_HUD_game_scene_overdrive_timer_LP = {1290, 149, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_timer_LP["width"] = 1600
    obj_HUD_game_scene_overdrive_timer_LP["height"] = 900
    obj_HUD_game_scene_overdrive_timer_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_LP["state"] = "default"
    
    obj_HUD_game_scene_overdrive_timer_RP = {192, 149, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_timer_RP["width"] = 1600
    obj_HUD_game_scene_overdrive_timer_RP["height"] = 900
    obj_HUD_game_scene_overdrive_timer_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_RP["state"] = "default"
    
    obj_HUD_game_scene_risk_bar_LP = {195, 127, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_risk_bar_LP["width"] = 80
    obj_HUD_game_scene_risk_bar_LP["height"] = 23
    obj_HUD_game_scene_risk_bar_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_risk_bar_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_risk_bar_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_risk_bar_LP["state"] = "default"
    
    obj_HUD_game_scene_risk_bar_RP = {1405, 127, nil, 1, -1, 1, 0, 0}
    obj_HUD_game_scene_risk_bar_RP["width"] = 80
    obj_HUD_game_scene_risk_bar_RP["height"] = 23
    obj_HUD_game_scene_risk_bar_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_risk_bar_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_risk_bar_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_risk_bar_RP["state"] = "default"
    
    obj_HUD_game_scene_OD_bar_LP = {131, 75, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_OD_bar_LP["width"] = 60
    obj_HUD_game_scene_OD_bar_LP["height"] = 60
    obj_HUD_game_scene_OD_bar_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_OD_bar_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_OD_bar_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_OD_bar_LP["state"] = "default"
    
    obj_HUD_game_scene_OD_bar_RP = {1469, 75, nil, 1, -1, 1, 0, 0}
    obj_HUD_game_scene_OD_bar_RP["width"] = 60
    obj_HUD_game_scene_OD_bar_RP["height"] = 60
    obj_HUD_game_scene_OD_bar_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_OD_bar_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_OD_bar_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_OD_bar_RP["state"] = "default"
    
    obj_HUD_game_scene_status_LP = {9, 135, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_status_LP["width"] = 160
    obj_HUD_game_scene_status_LP["height"] = 70
    obj_HUD_game_scene_status_LP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_status_LP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_status_LP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_status_LP["state"] = "default"
    
    obj_HUD_game_scene_status_RP = {1431, 137, nil, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_status_RP["width"] = 160
    obj_HUD_game_scene_status_RP["height"] = 70
    obj_HUD_game_scene_status_RP["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_status_RP["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_status_RP["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_status_RP["state"] = "default"
    
    obj_HUD_game_scene_HUD_upper = {0, 0, nil, 0.75, 1, 1, 0, 0}
    obj_HUD_game_scene_HUD_upper["width"] = 1600
    obj_HUD_game_scene_HUD_upper["height"] = 280
    obj_HUD_game_scene_HUD_upper["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_HUD_upper["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_HUD_upper["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_HUD_upper["state"] = "default"
    
    obj_HUD_game_scene_OD_overlay_shutter = {0, 30, 0, 0.65, 1, 1, 0, 0}
    obj_HUD_game_scene_OD_overlay_shutter["width"] = 5120
    obj_HUD_game_scene_OD_overlay_shutter["height"] = 1800
    obj_HUD_game_scene_OD_overlay_shutter["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_OD_overlay_shutter["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_OD_overlay_shutter["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_OD_overlay_shutter["state"] = "default"
    
    obj_HUD_game_scene_match_scene_glow = {0, 30, 0, 1, 1, 1, 0, 0}
    obj_HUD_game_scene_match_scene_glow["width"] = 5120
    obj_HUD_game_scene_match_scene_glow["height"] = 1800
    obj_HUD_game_scene_match_scene_glow["FCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_scene_glow["LCT"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_scene_glow["LCD"] = {0,0,0,0,0,0,0}
    obj_HUD_game_scene_match_scene_glow["state"] = "default"

end

function update_game_scene_special_HUD(side)

end

function draw_game_scene_special_HUD(side)

end

function load_game_scene_special_HUD_anim()

end

function load_game_scene_special_HUD_audio()

end