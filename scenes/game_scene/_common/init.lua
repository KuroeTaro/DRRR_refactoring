function load_game_scene_common_obj()
    load_game_scene_obj_char_LP()
    load_game_scene_obj_char_RP()
    load_game_scene_obj_stage()
    load_game_scene_announcer_HUD_obj()
    if 	CHAR_SELECT_LR["L"] == CHAR_SELECT_LR["R"] then
        obj_char_game_scene_char_RP["contrast"] = -1
        obj_char_game_scene_char_RP["brightness"] = 0.9
        obj_char_game_scene_char_RP["brightness_const"] = 0.9
        obj_char_game_scene_char_RP["brightness_overdrive_const"] = 1.1
    end
    
end


function load_game_scene_common_anim()
    load_game_scene_anim_char_LP()
    load_game_scene_anim_char_RP()
    load_game_scene_anim_stage()
    load_game_scene_announcer_HUD_anim()
    
end

function load_game_scene_hurtbox_shadowbox_data()
    load_game_scene_hurtbox_shadowbox_data_LP()
    load_game_scene_hurtbox_shadowbox_data_RP()
    
end


function load_game_scene_common_audio()
    audio_SFX_game_scene_annoucer_ease_in = {1}
    audio_SFX_game_scene_annoucer_ease_in["LCT"] = {0}
    audio_SFX_game_scene_annoucer_ease_in["LCD"] = {0}
    audio_SFX_game_scene_annoucer_ease_in["audio"] = love.audio.newSource("asset/game_scene/common/audio/annoucer_ease_in.mp3","static")

    audio_SFX_game_scene_overdrive = {1}
    audio_SFX_game_scene_overdrive["LCT"] = {0}
    audio_SFX_game_scene_overdrive["LCD"] = {0}
    audio_SFX_game_scene_overdrive["audio"] = love.audio.newSource("asset/game_scene/common/audio/overdrive.mp3","static")


    update_SFX_VOLUME(audio_SFX_game_scene_annoucer_ease_in)
    update_SFX_VOLUME(audio_SFX_game_scene_overdrive)

end


function load_game_scene_common_shader()
    shader_game_scene_fractal_noise = love.graphics.newShader("shaders/game_fractal_noise.glsl")
    shader_game_scene_radial_blur = love.graphics.newShader("shaders/radial_blur.glsl")
    shader_game_scene_brightness_contrast = love.graphics.newShader("shaders/brightness_contrast.glsl")
    shader_game_scene_bc7_alpha_fix = love.graphics.newShader("shaders/bc7_alpha_fix.glsl")
    shader_game_scene_gaussian_blur = love.graphics.newShader("shaders/gaussian_blur.glsl")
    shader_game_scene_gaussian_blur:send("Directions", 16)
    shader_game_scene_gaussian_blur:send("Quality", 5)
    shader_game_scene_gaussian_blur:send("Size", 8)
    shader_game_scene_gaussian_blur:send("resolution", {love.graphics.getWidth(), love.graphics.getHeight()})
    shader_game_scene_character_blur = love.graphics.newShader("shaders/character_blur.glsl")
    shader_game_scene_character_blur:send("radius", 1.0 / 1000.0) -- 模糊强度，基于画布分辨率
    shader_game_scene_character_blur:send("alpha", 0.5) -- 透明度
    
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

    obj_HUD_game_scene_timer = {780, 85, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_timer["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_timer["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_timer["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_timer["state"] = "default"

    obj_HUD_game_scene_health_bar_LP = {685, 65, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_health_bar_RP = {915, 65, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_health_bar_LP_fade = {685, 65, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_health_bar_RP_fade = {915, 65, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_heat_bar_LP = {678, 124, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_heat_bar_RP = {922, 124, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_ability_bar_LP = {670, 102, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_ability_bar_RP = {930, 102, nil, 0, 1, 1, 0, 0}

    obj_HUD_game_scene_overdrive_pie_LP = {131, 75, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_pie_RP = {1469, 75, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_win_marks_LP = {750, 115, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_win_marks_RP = {850, 115, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_match_point_LP = {717, 85, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_match_point_RP = {883, 85, nil, 0, -1, 1, 0, 0}
    obj_HUD_game_scene_risk_LP = {255, 127, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_risk_RP = {1345, 127, nil, 0, -1, 1, 0, 0}

    obj_HUD_game_scene_overdrive_text_LP = {205, 102, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_text_LP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_LP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_LP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_LP["state"] = "default"

    obj_HUD_game_scene_overdrive_text_RP = {1250, 102, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_text_RP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_RP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_RP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_text_RP["state"] = "default"

    obj_HUD_game_scene_overdrive_timer_LP = {192, 149, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_timer_LP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_LP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_LP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_LP["state"] = "default"

    obj_HUD_game_scene_overdrive_timer_RP = {1290, 149, nil, 0, 1, 1, 0, 0}
    obj_HUD_game_scene_overdrive_timer_RP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_RP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_RP["LCD"] = {0,0,0,0,0,0,0,0}
    obj_HUD_game_scene_overdrive_timer_RP["state"] = "default"

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

    anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1 = {}
    anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1[0] = {0, 10}
    anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1[10] = {1, 10}
    anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1["prop"] = 4
    anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1["length"] = 10
    anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1["loop"] = false
    anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1["fix_type"] = true

    anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0 = {}
    anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0[0] = {1, 10}
    anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0[10] = {0, 10}
    anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0["prop"] = 4
    anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0["length"] = 10
    anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0["loop"] = false
    anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0["fix_type"] = true

    anim_char_point_linear_overdrive_brightness_ease_in = {}
    anim_char_point_linear_overdrive_brightness_ease_in[0] = {0, 32}
    anim_char_point_linear_overdrive_brightness_ease_in[32] = {0.2, 32}
    anim_char_point_linear_overdrive_brightness_ease_in["prop"] = "brightness"
    anim_char_point_linear_overdrive_brightness_ease_in["length"] = 32
    anim_char_point_linear_overdrive_brightness_ease_in["loop"] = false
    anim_char_point_linear_overdrive_brightness_ease_in["fix_type"] = false

    anim_char_point_linear_overdrive_brightness_ease_out = {}
    anim_char_point_linear_overdrive_brightness_ease_out[0] = {0.2, 10}
    anim_char_point_linear_overdrive_brightness_ease_out[10] = {0, 10}
    anim_char_point_linear_overdrive_brightness_ease_out["prop"] = "brightness"
    anim_char_point_linear_overdrive_brightness_ease_out["length"] = 10
    anim_char_point_linear_overdrive_brightness_ease_out["loop"] = false
    anim_char_point_linear_overdrive_brightness_ease_out["fix_type"] = false

end