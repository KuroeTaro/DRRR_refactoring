function draw_start_scene_general()
    draw_2d_image_table(obj_UI_start_scene_noise_bg,image_table_UI_start_scene_BG_loop)
    draw_2d_image(obj_UI_start_scene_main_logo,image_UI_start_scene_main_logo)
    draw_2d_image(obj_UI_start_scene_breath_tag,image_UI_start_scene_breath_tag)
    draw_2d_image_table(obj_UI_start_scene_option_text,image_table_UI_start_scene_option_text)
    draw_2d_image(obj_UI_start_scene_console_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image(obj_UI_start_scene_console_type_in_mark,image_UI_start_scene_global_type_in_mark)
    draw_2d_image_table(obj_UI_start_scene_down_console_text,image_table_UI_start_scene_down_console_text)
    draw_2d_image_table(obj_UI_start_scene_up_console_text,image_table_UI_start_scene_up_console_text)
    draw_solid(obj_UI_start_scene_solid_color)

end

function draw_start_scene_config_sub_scene()
    draw_2d_image_table(obj_UI_start_scene_noise_bg,image_table_UI_start_scene_BG_loop)
    draw_2d_image(obj_UI_start_scene_main_logo,image_UI_start_scene_main_logo)
    draw_2d_image(obj_UI_start_scene_breath_tag,image_UI_start_scene_breath_tag)
    draw_2d_image_table(obj_UI_start_scene_option_text,image_table_UI_start_scene_option_text)
    draw_2d_image(obj_UI_start_scene_console_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image(obj_UI_start_scene_console_type_in_mark,image_UI_start_scene_global_type_in_mark)
    draw_2d_image_table(obj_UI_start_scene_down_console_text,image_table_UI_start_scene_down_console_text)
    draw_2d_image_table(obj_UI_start_scene_up_console_text,image_table_UI_start_scene_up_console_text)
    
    
    draw_2d_image(obj_UI_start_scene_shutter,image_UI_start_scene_shutter)
    draw_2d_image(obj_UI_start_scene_config_menu_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image(obj_UI_start_scene_config_menu_text,image_UI_start_scene_config_menu_text)
    

    draw_solid(obj_UI_start_scene_solid_color)


end

function draw_start_scene_config_audio_sub_scene()
    draw_2d_image_table(obj_UI_start_scene_noise_bg,image_table_UI_start_scene_BG_loop)
    draw_2d_image(obj_UI_start_scene_main_logo,image_UI_start_scene_main_logo)
    draw_2d_image(obj_UI_start_scene_breath_tag,image_UI_start_scene_breath_tag)
    draw_2d_image_table(obj_UI_start_scene_option_text,image_table_UI_start_scene_option_text)
    draw_2d_image(obj_UI_start_scene_console_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image(obj_UI_start_scene_console_type_in_mark,image_UI_start_scene_global_type_in_mark)
    draw_2d_image_table(obj_UI_start_scene_down_console_text,image_table_UI_start_scene_down_console_text)
    draw_2d_image_table(obj_UI_start_scene_up_console_text,image_table_UI_start_scene_up_console_text)
    
    
    draw_2d_image(obj_UI_start_scene_shutter,image_UI_start_scene_shutter)
    draw_2d_image(obj_UI_start_scene_config_menu_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image(obj_UI_start_scene_config_menu_text,image_UI_start_scene_config_menu_text)


    draw_2d_image(obj_UI_start_scene_config_audio_bar_mark,image_UI_start_scene_bar_mark)
    draw_2d_image(obj_UI_start_scene_config_audio_BGM_bar_gauge,image_UI_start_scene_config_audio_bar)
    draw_2d_image(obj_UI_start_scene_config_audio_SFX_bar_gauge,image_UI_start_scene_config_audio_bar)
    draw_start_scene_sp_audio_bar_alpha(
        obj_UI_start_scene_config_audio_BGM_bar_light,
        obj_UI_start_scene_config_audio_BGM_bar_alpha,
        image_UI_start_scene_config_audio_bar
    )
    draw_start_scene_sp_audio_bar_alpha(
        obj_UI_start_scene_config_audio_SFX_bar_light,
        obj_UI_start_scene_config_audio_SFX_bar_alpha,
        image_UI_start_scene_config_audio_bar
    )
    draw_2d_image(obj_UI_start_scene_config_audio_text,image_UI_start_scene_config_audio_text)
    

    draw_solid(obj_UI_start_scene_solid_color)

end

function draw_start_scene_config_controller_sub_scene()
    draw_2d_image_table(obj_UI_start_scene_noise_bg,image_table_UI_start_scene_BG_loop)
    draw_2d_image(obj_UI_start_scene_main_logo,image_UI_start_scene_main_logo)
    draw_2d_image(obj_UI_start_scene_breath_tag,image_UI_start_scene_breath_tag)
    draw_2d_image_table(obj_UI_start_scene_option_text,image_table_UI_start_scene_option_text)
    draw_2d_image(obj_UI_start_scene_console_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image(obj_UI_start_scene_console_type_in_mark,image_UI_start_scene_global_type_in_mark)
    draw_2d_image_table(obj_UI_start_scene_down_console_text,image_table_UI_start_scene_down_console_text)
    draw_2d_image_table(obj_UI_start_scene_up_console_text,image_table_UI_start_scene_up_console_text)
    
    
    draw_2d_image(obj_UI_start_scene_shutter,image_UI_start_scene_shutter)
    draw_2d_image(obj_UI_start_scene_config_menu_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image(obj_UI_start_scene_config_menu_text,image_UI_start_scene_config_menu_text)


    draw_2d_image(obj_UI_start_scene_config_controller_bar_mark_1P,image_UI_start_scene_bar_mark)
    draw_2d_image(obj_UI_start_scene_config_controller_bar_mark_2P,image_UI_start_scene_bar_mark)
    draw_2d_image(obj_UI_start_scene_config_controller_indi_text,image_UI_start_scene_controller_indi_text)
    
    
    draw_solid(obj_UI_start_scene_solid_color)

end

function draw_start_scene_config_resolution_sub_scene()
    draw_2d_image_table(obj_UI_start_scene_noise_bg,image_table_UI_start_scene_BG_loop)
    draw_2d_image(obj_UI_start_scene_main_logo,image_UI_start_scene_main_logo)
    draw_2d_image(obj_UI_start_scene_breath_tag,image_UI_start_scene_breath_tag)
    draw_2d_image_table(obj_UI_start_scene_option_text,image_table_UI_start_scene_option_text)
    draw_2d_image(obj_UI_start_scene_console_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image(obj_UI_start_scene_console_type_in_mark,image_UI_start_scene_global_type_in_mark)
    draw_2d_image_table(obj_UI_start_scene_down_console_text,image_table_UI_start_scene_down_console_text)
    draw_2d_image_table(obj_UI_start_scene_up_console_text,image_table_UI_start_scene_up_console_text)
    
    
    draw_2d_image(obj_UI_start_scene_shutter,image_UI_start_scene_shutter)
    draw_2d_image(obj_UI_start_scene_config_menu_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image(obj_UI_start_scene_config_menu_text,image_UI_start_scene_config_menu_text)


    draw_2d_image(obj_UI_start_scene_config_resolution_bar_mark,image_UI_start_scene_bar_mark)
    draw_2d_image_table(obj_UI_start_scene_config_resolution_w_x_h,image_table_UI_start_scene_resolution_text)
    draw_2d_image(obj_UI_start_scene_config_resolution_select_res_text,image_UI_start_scene_select_res_text)
    
    
    draw_solid(obj_UI_start_scene_solid_color)

end

function draw_start_scene_record_sub_scene()
    draw_2d_image_table(obj_UI_start_scene_noise_bg,image_table_UI_start_scene_BG_loop)
    draw_2d_image(obj_UI_start_scene_main_logo,image_UI_start_scene_main_logo)
    draw_2d_image(obj_UI_start_scene_breath_tag,image_UI_start_scene_breath_tag)
    draw_2d_image_table(obj_UI_start_scene_option_text,image_table_UI_start_scene_option_text)
    draw_2d_image(obj_UI_start_scene_console_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image(obj_UI_start_scene_console_type_in_mark,image_UI_start_scene_global_type_in_mark)
    draw_2d_image_table(obj_UI_start_scene_down_console_text,image_table_UI_start_scene_down_console_text)
    draw_2d_image_table(obj_UI_start_scene_up_console_text,image_table_UI_start_scene_up_console_text)
    

    draw_2d_image(obj_UI_start_scene_shutter,image_UI_start_scene_shutter)
    draw_start_scene_sp_record_100h_plus_time_indi(obj_UI_start_scene_record_100h_plus_time_indi)
    draw_2d_image(obj_UI_start_scene_record_dabo_trig,image_UI_start_scene_global_dabo_trig)
    draw_2d_image_table(obj_UI_start_scene_record_num_5,image_table_UI_start_scene_game_duration_number)
    draw_2d_image_table(obj_UI_start_scene_record_num_4,image_table_UI_start_scene_game_duration_number)
    draw_2d_image_table(obj_UI_start_scene_record_num_3,image_table_UI_start_scene_game_duration_number)
    draw_2d_image_table(obj_UI_start_scene_record_num_2,image_table_UI_start_scene_game_duration_number)
    draw_2d_image_table(obj_UI_start_scene_record_num_1,image_table_UI_start_scene_game_duration_number)
    draw_2d_image_table(obj_UI_start_scene_record_num_0,image_table_UI_start_scene_game_duration_number)
    draw_2d_image(obj_UI_start_scene_record_game_duration_text,image_UI_start_scene_game_duration_text)
    
    
    draw_solid(obj_UI_start_scene_solid_color)

end

function draw_start_scene_sp_audio_bar_alpha(obj_light,obj_alpha,image)

end

function draw_start_scene_sp_record_100h_plus_time_indi(obj)

end