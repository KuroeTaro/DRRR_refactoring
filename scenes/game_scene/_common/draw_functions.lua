function draw_game_scene_main()
    -- 绘制场景固定物
    draw_game_scene_stage_static()

    -- 更新角色的图像位置
    draw_game_scene_char_LP_logic_graphic_pos_sync()
    draw_game_scene_char_RP_logic_graphic_pos_sync()

    -- 绘制角色阴影
    local shadow_cavans = love.graphics.newCanvas(
        love.graphics.getWidth(),
        love.graphics.getHeight()
    )
    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.setCanvas(shadow_cavans)
    draw_game_scene_char_LP_shadow(shadow_cavans)
    draw_game_scene_char_RP_shadow(shadow_cavans)
    love.graphics.setCanvas()
    love.graphics.setColor(1, 1, 1, 0.5)
    love.graphics.draw(shadow_cavans)
    love.graphics.setColor(1, 1, 1, 1)

    -- 绘制角色本体
    draw_game_scene_char_LP()
    draw_game_scene_char_RP()

    -- 绘制上帝光
    draw_game_scene_stage_glow()

    -- 绘制ease in black solid
    draw_solid(obj_UI_game_scene_black_solid)
    
end