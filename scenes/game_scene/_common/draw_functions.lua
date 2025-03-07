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

    -- 绘制静态HUD
    draw_2d_image(obj_HUD_game_scene_background_gauge,image_HUD_game_scene_background_gauge) -- 1 draw call 11

    -- 绘制动态HUD
    local image_sprite_sheet = image_sprite_sheet_table_HUD_game_scene_common
    image_sprite_sheet["sprite_batch"]:clear()
    draw_game_scene_add_to_sprite_batch_bars(
        obj_HUD_game_scene_health_bar_LP,
        image_sprite_sheet,
        "HUD_health_bar",
        obj_char_game_scene_char_LP["health"][1]/obj_char_game_scene_char_LP["health"][2]
    )
    draw_game_scene_add_to_sprite_batch_bars(
        obj_HUD_game_scene_health_bar_RP,
        image_sprite_sheet,
        "HUD_health_bar",
        obj_char_game_scene_char_RP["health"][1]/obj_char_game_scene_char_RP["health"][2]
    )
    draw_game_scene_add_to_sprite_batch_bars(
        obj_HUD_game_scene_health_bar_LP_fade,
        image_sprite_sheet,
        "HUD_health_bar",
        obj_char_game_scene_char_LP["health"][3]/obj_char_game_scene_char_LP["health"][2]
    )
    draw_game_scene_add_to_sprite_batch_bars(
        obj_HUD_game_scene_health_bar_RP_fade,
        image_sprite_sheet,
        "HUD_health_bar",
        obj_char_game_scene_char_RP["health"][3]/obj_char_game_scene_char_RP["health"][2]
    )
    draw_game_scene_add_to_sprite_batch_bars(
        obj_HUD_game_scene_ability_bar_LP,
        image_sprite_sheet,
        "HUD_ability_bar",
        obj_char_game_scene_char_LP["ability"][1]/obj_char_game_scene_char_LP["ability"][2]
    )
    draw_game_scene_add_to_sprite_batch_bars(
        obj_HUD_game_scene_ability_bar_RP,
        image_sprite_sheet,
        "HUD_ability_bar",
        obj_char_game_scene_char_RP["ability"][1]/obj_char_game_scene_char_RP["ability"][2]
    )
    draw_game_scene_add_to_sprite_batch_bars(
        obj_HUD_game_scene_heat_bar_LP,
        image_sprite_sheet,
        "HUD_heat_bar",
        obj_char_game_scene_char_LP["heat"][1]/obj_char_game_scene_char_LP["heat"][2]
    )
    draw_game_scene_add_to_sprite_batch_bars(
        obj_HUD_game_scene_heat_bar_RP,
        image_sprite_sheet,
        "HUD_heat_bar",
        obj_char_game_scene_char_RP["heat"][1]/obj_char_game_scene_char_RP["heat"][2]
    )
    draw_game_scene_add_to_sprite_batch_risk_bars(
        obj_HUD_game_scene_risk_LP,
        image_sprite_sheet,
        "HUD_risk_bar",
        obj_char_game_scene_char_LP["risk"][1]*3/obj_char_game_scene_char_LP["risk"][2]
    )
    draw_game_scene_add_to_sprite_batch_risk_bars(
        obj_HUD_game_scene_risk_RP,
        image_sprite_sheet,
        "HUD_risk_bar",
        obj_char_game_scene_char_RP["risk"][1]*3/obj_char_game_scene_char_RP["risk"][2]
    )
    draw_game_scene_add_to_sprite_batch_overdrive_pie(
        obj_HUD_game_scene_overdrive_pie_LP,
        image_sprite_sheet,
        obj_char_game_scene_char_LP["overdrive"][1]*6/obj_char_game_scene_char_LP["overdrive"][2]
    )
    draw_game_scene_add_to_sprite_batch_overdrive_pie(
        obj_HUD_game_scene_overdrive_pie_RP,
        image_sprite_sheet,
        obj_char_game_scene_char_RP["overdrive"][1]*6/obj_char_game_scene_char_RP["overdrive"][2]
    )
    draw_2d_image_sprite_batch(
        obj_HUD_game_scene_overdrive_text_LP,
        image_sprite_sheet,
        "HUD_overdrive_text"
    )
    draw_2d_image_sprite_batch(
        obj_HUD_game_scene_overdrive_text_RP,
        image_sprite_sheet,
        "HUD_overdrive_text"
    )
    draw_game_scene_add_to_sprite_batch_round_timer(
        obj_HUD_game_scene_timer,
        image_sprite_sheet
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
function draw_game_scene_add_to_sprite_batch_bars(obj,image_sprite_sheet,quad_name,percentage)
    local x = draw_resolution_correction(obj[1])
    local y = draw_resolution_correction(obj[2])
    local r = obj[7]
    local sx = draw_resolution_correction(obj[5])
    local sy = draw_resolution_correction(obj[6])
    local opacity = obj[4]

    local frame = image_sprite_sheet["frames"][quad_name]

    local quad = love.graphics.newQuad(
        frame[1],
        frame[2],
        frame[3]*percentage,
        frame[4],
        frame[5],
        frame[6]
    )
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, opacity)
    image_sprite_sheet["sprite_batch"]:add(quad, x, y, r, sx, sy)
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, 1)

end

function draw_game_scene_add_to_sprite_batch_risk_bars(obj,image_sprite_sheet,quad_name,risk_value)
    local x = draw_resolution_correction(obj[1])
    local y = draw_resolution_correction(obj[2])
    local r = obj[7]
    local sx = draw_resolution_correction(obj[5])
    local sy = draw_resolution_correction(obj[6])
    local opacity = obj[4]

    local x_offset = draw_resolution_correction(obj[1])

    local frame = image_sprite_sheet["frames"][quad_name]

    local quad = love.graphics.newQuad(
        frame[1],
        frame[2],
        frame[3],
        frame[4],
        frame[5],
        frame[6]
    )
    local offset_counter = 0
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, opacity)
    for i = 1,3,1 do 
        if risk_value >= 1 then
            image_sprite_sheet["sprite_batch"]:add(quad, x-offset_counter*30*sx, y, r, sx, sy)
            risk_value = risk_value - 1
            offset_counter = offset_counter + 1
        else
            image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, risk_value*opacity)
            image_sprite_sheet["sprite_batch"]:add(quad, x-offset_counter*30*sx, y, r, sx, sy)
            break
        end
    end
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, 1)

end

function draw_game_scene_add_to_sprite_batch_overdrive_pie(obj,image_sprite_sheet,overdrive_value)
    local x = draw_resolution_correction(obj[1])
    local y = draw_resolution_correction(obj[2])
    local r = obj[7]
    local sx = draw_resolution_correction(obj[5])
    local sy = draw_resolution_correction(obj[6])
    local opacity = obj[4]

    local quad_name_table = {
        "HUD_OD_pie_0",
        "HUD_OD_pie_1",
        "HUD_OD_pie_2",
        "HUD_OD_pie_3",
        "HUD_OD_pie_4",
        "HUD_OD_pie_5"
    }
    local frames = {}
    for i = 1,6,1 do
        frames[i] = image_sprite_sheet["frames"][quad_name_table[i]]
    end
    local quads = {}
    for i = 1,6,1 do
        quads[i] = love.graphics.newQuad(
            frames[i][1],
            frames[i][2],
            frames[i][3],
            frames[i][4],
            frames[i][5],
            frames[i][6]
        )
    end

    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, opacity)
    for i = 1,6,1 do 
        if overdrive_value >= 1 then
            image_sprite_sheet["sprite_batch"]:add(quads[i], x, y, r, sx, sy)
            overdrive_value = overdrive_value - 1
        else
            image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, overdrive_value*opacity)
            image_sprite_sheet["sprite_batch"]:add(quads[i], x, y, r, sx, sy)
            break
        end
    end
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, 1)

end

function draw_game_scene_add_to_sprite_batch_round_timer(obj,image_sprite_sheet)
    local x = draw_resolution_correction(obj[1])
    local y = draw_resolution_correction(obj[2])
    local r = obj[7]
    local sx = draw_resolution_correction(obj[5])
    local sy = draw_resolution_correction(obj[6])
    local opacity = obj[4]

    local quad_name_table = {
        "HUD_nums_0",
        "HUD_nums_1",
        "HUD_nums_2",
        "HUD_nums_3",
        "HUD_nums_4",
        "HUD_nums_5",
        "HUD_nums_6",
        "HUD_nums_7",
        "HUD_nums_8",
        "HUD_nums_9"
    }
    local frames = {}
    for i = 1,10,1 do
        frames[i] = image_sprite_sheet["frames"][quad_name_table[i]]
    end
    local quads = {}
    for i = 1,10,1 do
        quads[i] = love.graphics.newQuad(
            frames[i][1],
            frames[i][2],
            frames[i][3],
            frames[i][4],
            frames[i][5],
            frames[i][6]
        )
    end
    local digits = {}
    digits[1] = (ROUND_TIMER - ROUND_TIMER%600)/600
    digits[2] = (ROUND_TIMER - ROUND_TIMER%60)/60-digits[1]*10
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, opacity)
    for i = 1,2,1 do 
        image_sprite_sheet["sprite_batch"]:add(
            quads[digits[i]+1], 
            x+draw_resolution_correction((i-1)*23),
            y, 
            r, 
            sx, 
            sy
        )
    end
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, 1)

end

function draw_game_scene_add_to_sprite_batch_round_win_marks(obj,image_sprite_sheet,quad_name)
    local x = draw_resolution_correction(obj[1])
    local y = draw_resolution_correction(obj[2])
    local r = obj[7]
    local sx = draw_resolution_correction(obj[5])
    local sy = draw_resolution_correction(obj[6])
    local opacity = obj[4]

    local x_offset = draw_resolution_correction(obj[1])

    local frame = image_sprite_sheet["frames"][quad_name]

    local quad = love.graphics.newQuad(
        frame[1],
        frame[2],
        frame[3],
        frame[4],
        frame[5],
        frame[6]
    )
    local offset_counter = 0
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, opacity)
    for i = 1,3,1 do 
        if risk_value >= 1 then
            image_sprite_sheet["sprite_batch"]:add(quad, x-offset_counter*30*sx, y, r, sx, sy)
            risk_value = risk_value - 1
            offset_counter = offset_counter + 1
        else
            image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, risk_value*opacity)
            image_sprite_sheet["sprite_batch"]:add(quad, x-offset_counter*30*sx, y, r, sx, sy)
            break
        end
    end
    image_sprite_sheet["sprite_batch"]:setColor(1, 1, 1, 1)

end

function draw_game_scene_add_to_sprite_batch_overdrive_timer(obj,image_sprite_sheet,quad_name,time)

end