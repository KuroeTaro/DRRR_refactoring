function load_char_select_scene_obj()  

end


function load_char_select_anim()

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

function load_char_select_scene_shader()
    shader_char_select_scene_fractal_noise = love.graphics.newShader("shaders/char_select_fractal_noise.glsl")
    shader_char_select_scene_radial_blur = love.graphics.newShader("shaders/radial_blur.glsl")

    canvas = love.graphics.newCanvas(1600,900)
    canvas_radial_blur = love.graphics.newCanvas(1600,900)
    canvas_alpha_comp = love.graphics.newCanvas(1600,900)
    alpha = love.graphics.newCanvas(1600,900)

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
    obj_UI_char_select_scene_char_select_left_char = nil
    obj_UI_char_select_scene_char_select_left_text = nil
    obj_UI_char_select_scene_char_select_right = nil
    obj_UI_char_select_scene_char_select_right_char = nil
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

end


function unload_char_select_scene_anim()
    anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity = nil
    anim_UI_frame_select_scene_first_ring_f = nil
    anim_UI_point_linear_char_select_scene_white_solid_flash_out_opacity = nil
    anim_UI_point_linear_char_select_scene_second_glow_opacity = nil
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x = nil
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y = nil
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x = nil
    anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y = nil
    anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1 = nil
    anim_UI_point_linear_char_select_scene_icon_image_flash_in_x = nil
    anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p1 = nil
    anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0p1_0 = nil
    anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1 = nil
    anim_UI_point_linear_char_select_scene_char_select_unselecting_flash_in_opacity_0p25_1 = nil
    anim_UI_point_linear_char_select_scene_char_select_selecting_flash_out_opacity_1_0p25 = nil
    anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x = nil
    anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x = nil
    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x = nil
    anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x = nil
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_flash_out_opacity_1_0 = nil
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_flash_in_opacity_0_1 = nil
    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0 = nil
    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5 = nil
    anim_UI_point_linear_char_select_scene_bar_mark_up_y = nil
    anim_UI_point_linear_char_select_scene_bar_mark_down_y = nil
    anim_UI_point_linear_char_select_scene_black_solid_scene_flash_out = nil

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

function unload_char_select_scene_shader()
    shader_char_select_scene_fractal_noise = nil
    shader_char_select_scene_radial_blur = nil

    canvas = nil
    canvas_radial_blur = nil
    canvas_alpha_comp = nil
    alpha = nil

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

end

function preset_char_select_scene()
    init_point_linear_anim_with(obj_UI_char_select_scene_black_solid,anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity)
    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    init_frame_anim_with(obj_UI_char_select_scene_first_ring,anim_UI_frame_select_scene_first_ring_f)
    play_obj_audio(audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit)
    play_obj_audio(audio_SFX_char_select_scene_start_SFX_1)

end