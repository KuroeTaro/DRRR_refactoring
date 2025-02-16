function draw_game_scene_flash_in()
    draw_game_scene_stage_static()

    draw_game_scene_char_LP_logic_graphic_pos_sync()
    draw_game_scene_char_RP_logic_graphic_pos_sync()

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

    draw_game_scene_char_LP()
    draw_game_scene_char_RP()

    draw_game_scene_stage_glow()
    
end