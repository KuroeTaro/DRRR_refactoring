function draw_game_scene_main()
    -- 绘制场景固定物
    draw_game_scene_stage_static()

    -- 更新角色的图像位置
    draw_game_scene_char_LP_logic_graphic_pos_sync()
    draw_game_scene_char_RP_logic_graphic_pos_sync()

    -- 绘制角色阴影
    draw_game_scene_char_LP_shadow()
    draw_game_scene_char_RP_shadow()

    -- 绘制角色本体
    draw_game_scene_char_LP()
    draw_game_scene_char_RP()

    -- 绘制上帝光
    draw_game_scene_stage_glow()

    -- 绘制ease_in annoucer 和 HUD ease in
    draw_2d_image_table(obj_annoucer_game_scene_act_common,image_table_announcer_game_scene_act_common)
    draw_2d_image_table(obj_annoucer_game_scene_act_num,image_table_announcer_game_scene_act_number[ROUND_COUNTER])
    draw_2d_image_table(obj_HUD_game_scene_ease_in,image_table_announcer_game_scene_HUD_ease_in)
    draw_2d_image_table(obj_annoucer_game_scene_lets_dance,image_table_announcer_game_scene_lets_dance)

    -- 绘制 动态 HUD
    draw_2d_image(obj_HUD_game_scene_background,image_HUD_game_scene_background)
    draw_2d_image(obj_HUD_game_scene_gauge,image_HUD_game_scene_gauge)

    -- 绘制ease in black solid
    draw_solid(obj_UI_game_scene_black_solid)
    
end