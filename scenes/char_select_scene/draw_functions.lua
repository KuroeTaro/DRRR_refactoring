function draw_char_select_scene_general()
    -- general
    draw_2d_image_table(obj_UI_char_select_scene_noise_bg,image_table_UI_char_select_scene_BG_loop)
    draw_2d_image(obj_UI_char_select_scene_main_logo,image_UI_char_select_scene_main_logo)
    draw_2d_image(obj_UI_char_select_scene_breath_tag,image_UI_char_select_scene_breath_tag)
    draw_2d_image_table(obj_UI_char_select_scene_option_text,image_table_UI_char_select_scene_option_text)
    draw_2d_image(obj_UI_char_select_scene_console_dabo_trig,image_UI_char_select_scene_global_dabo_trig)
    draw_2d_image(obj_UI_char_select_scene_console_type_in_mark,image_UI_char_select_scene_global_type_in_mark)
    draw_2d_image_table(obj_UI_char_select_scene_down_console_text,image_table_UI_char_select_scene_down_console_text)
    draw_2d_image_table(obj_UI_char_select_scene_up_console_text,image_table_UI_char_select_scene_up_console_text)
    

    -- solid
    draw_solid(obj_UI_char_select_scene_solid_color)

end

