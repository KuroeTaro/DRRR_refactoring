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

    print_table(obj_HUD_game_scene_background_gauge)
    -- 绘制静态HUD
    draw_2d_image(obj_HUD_game_scene_background_gauge,image_HUD_game_scene_background_gauge) -- 1 draw call 11

    -- 绘制动态HUD
    local image_sprite_sheet = image_sprite_sheet_table_HUD_game_scene_common
    image_sprite_sheet["sprite_batch"]:clear()
    draw_game_scene_add_to_sprite_batch_bars(
        image_sprite_sheet,
        obj_HUD_game_scene_health_bar_LP,
        "HUD_health_bar",
        obj_char_game_scene_char_LP["health"][1]/obj_char_game_scene_char_LP["health"][2]
    )
    draw_game_scene_add_to_sprite_batch_bars(
        image_sprite_sheet,
        obj_HUD_game_scene_health_bar_RP,
        "HUD_health_bar",
        obj_char_game_scene_char_RP["health"][1]/obj_char_game_scene_char_RP["health"][2]
    )
    draw_game_scene_add_to_sprite_batch_bars(
        image_sprite_sheet,
        obj_HUD_game_scene_ability_bar_LP,
        "HUD_ability_bar",
        obj_char_game_scene_char_LP["ability"][1]/obj_char_game_scene_char_LP["ability"][2]
    )
    draw_game_scene_add_to_sprite_batch_bars(
        image_sprite_sheet,
        obj_HUD_game_scene_ability_bar_RP,
        "HUD_ability_bar",
        obj_char_game_scene_char_RP["ability"][1]/obj_char_game_scene_char_RP["ability"][2]
    )
    love.graphics.draw(image_sprite_sheet["sprite_batch"])
    
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


-- x y z opacity sx sy r f
function draw_game_scene_add_to_sprite_batch_bars(image_sprite_sheet,bar_obj,quad_name,percentage)
    local x = bar_obj[1]
    local y = bar_obj[2]
    local r = bar_obj[7]
    local sx = bar_obj[5]
    local sy = bar_obj[6]
    local opacity = bar_obj[4]

    local frames = image_sprite_sheet["frames"][quad_name]

    local quad = love.graphics.newQuad(
        frames[1],
        frames[2],
        frames[3]*percentage,
        frames[4],
        frames[5],
        frames[6]
    )
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, opacity)
    image_sprite_sheet["sprite_batch"]:add(quad, x, y, r, sx, sy)
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, 1)

end

function draw_game_scene_add_to_sprite_batch_risk_bars(image_sprite_sheet,bar_obj,quad_name,percentage)

end

function draw_game_scene_add_to_sprite_batch_overdrive_pie(image_sprite_sheet,bar_obj,quad_name,percentage)

end

function draw_game_scene_add_to_sprite_batch_round_timer(image_sprite_sheet,timer_obj,quad_name)

end

function draw_game_scene_add_to_sprite_batch_round_win_marks(image_sprite_sheet,mark_obj,quad_name)

end

function draw_game_scene_add_to_sprite_batch_overdrive_timer(image_sprite_sheet,timer_obj,quad_name,time)

end

function draw_game_scene_HUD_sprite_batch()

end