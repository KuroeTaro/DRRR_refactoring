function draw_game_scene_main()
    -- 绘制场景固定物
    draw_game_scene_stage_static() -- alpha 2 draw calls

    -- 更新角色的图像位置
    draw_game_scene_char_LP_logic_graphic_pos_sync()
    draw_game_scene_char_RP_logic_graphic_pos_sync()

    -- 绘制角色阴影
    draw_game_scene_char_LP_shadow()
    draw_game_scene_char_RP_shadow()

    -- 绘制角色本体
    local non_UI_canvas = love.graphics.newCanvas(
        love.graphics.getWidth(),
        love.graphics.getHeight()
    )
    love.graphics.setCanvas(non_UI_canvas)
    draw_game_scene_char_LP() -- IZAYA 2 draw calls 3
    draw_game_scene_char_RP() -- IZAYA 2 draw calls 4
    love.graphics.setCanvas()

    love.graphics.draw(non_UI_canvas) -- 1 draw call 5

    -- 绘制上帝光
    draw_game_scene_stage_glow() -- 5 draw calls 10

    -- 绘制 动态 HUD
    draw_2d_image(obj_HUD_game_scene_background,image_HUD_game_scene_background) -- 1 draw call 11
    draw_2d_image(obj_HUD_game_scene_gauge,image_HUD_game_scene_gauge) -- 1 draw call 12
    
    -- 透过上帝光和HUD
    love.graphics.setColor(1,1,1,0.5)
    love.graphics.draw(non_UI_canvas) -- 1 draw call 13
    love.graphics.setColor(1,1,1,1)

    -- 绘制ease_in annoucer 和 HUD ease in
    draw_2d_image_table(obj_annoucer_game_scene_act_common,image_table_announcer_game_scene_act_common) -- 1 draw call 14
    draw_2d_image_table(obj_annoucer_game_scene_act_num,image_table_announcer_game_scene_act_number[ROUND_COUNTER]) -- 1 draw call 15
    draw_2d_image_table(obj_HUD_game_scene_ease_in,image_table_announcer_game_scene_HUD_ease_in) -- 1 draw call 16
    draw_2d_image_table(obj_annoucer_game_scene_lets_dance,image_table_announcer_game_scene_lets_dance) -- 1 draw call 17

    -- 绘制ease in black solid
    draw_solid(obj_UI_game_scene_black_solid)
    
end

function draw_game_scene_bars(bar_obj,char_obj)

end

function draw_game_scene_risk_bars(bar_obj,char_obj)

end

function draw_game_scene_overdrive_pie(bar_obj,char_obj)

end

function draw_game_scene_round_timer(timer_obj)

end

function draw_game_scene_round_win_marks()

end

function draw_game_scene_overdrive_timer(timer_obj,char_obj)

end