function draw_char_select_scene_flash_in_0f_36f()
    draw_2d_image_table(
        obj_UI_char_select_scene_start_0f_110f,
        image_table_UI_char_select_scene_start_0_110f
    )
    love.graphics.setBlendMode("add")
    draw_2d_image_table(
        obj_UI_char_select_scene_movie_cover,
        image_table_UI_char_select_scene_movie_cover
    )
    love.graphics.setBlendMode("alpha")
    draw_solid(obj_UI_char_select_scene_black_solid)

end

function draw_char_select_scene_flash_in_36f_40f()
    draw_2d_image_table(
        obj_UI_char_select_scene_start_0f_110f,
        image_table_UI_char_select_scene_start_0_110f
    )
    love.graphics.setBlendMode("add")
    draw_2d_image_table(
        obj_UI_char_select_scene_movie_cover,
        image_table_UI_char_select_scene_movie_cover
    )
    love.graphics.setBlendMode("alpha")

end

function draw_char_select_scene_flash_in_40f_130f()
    draw_2d_image_table(
        obj_UI_char_select_scene_start_0f_110f,
        image_table_UI_char_select_scene_start_0_110f
    )
    draw_2d_image(
        obj_UI_char_select_scene_icon_select_L,
        image_table_UI_char_select_scene_char_icon_alpha[obj_UI_char_select_scene_icon_select_L[8]]
    )

    if GAME_MODE ~= 0 then
        draw_2d_image(
            obj_UI_char_select_scene_icon_select_R,
            image_table_UI_char_select_scene_char_icon_alpha[obj_UI_char_select_scene_icon_select_R[8]]
        )
    end
    draw_char_select_scene_char_select_LR(1)
    draw_char_select_scene_char_select_LR(2)

    draw_2d_image(
        obj_UI_char_select_scene_bar_mark_L,
        image_UI_char_select_scene_bar_mark
    )

    draw_2d_image(
        obj_UI_char_select_scene_bar_mark_R,
        image_UI_char_select_scene_bar_mark
    )

    draw_2d_image(
        obj_UI_char_select_scene_control_method_L,
        image_UI_char_select_scene_control_method_L
    )

    draw_2d_image(
        obj_UI_char_select_scene_control_method_R,
        image_UI_char_select_scene_control_method_R
    )

    draw_char_select_scene_timer(
        obj_UI_char_select_scene_timer,
        image_table_UI_char_select_scene_number
    )

    draw_char_select_scene_glow(obj_UI_char_select_scene_glow)

    love.graphics.setBlendMode("add")
    draw_2d_image(
        obj_UI_char_select_scene_ring,
        image_UI_char_select_scene_ring
    )
    draw_2d_image_table(
        obj_UI_char_select_scene_movie_cover,
        image_table_UI_char_select_scene_movie_cover
    )
    love.graphics.setBlendMode("alpha")

end

function draw_char_select_scene_main()
    draw_2d_image_table(
        obj_UI_char_select_scene_start_0f_110f,
        image_table_UI_char_select_scene_start_0_110f
    )
    draw_2d_image(
        obj_UI_char_select_scene_icon_select_L,
        image_table_UI_char_select_scene_char_icon_alpha[obj_UI_char_select_scene_icon_select_L[8]]
    )

    if GAME_MODE ~= 0 then
        draw_2d_image(
            obj_UI_char_select_scene_icon_select_R,
            image_table_UI_char_select_scene_char_icon_alpha[obj_UI_char_select_scene_icon_select_R[8]]
        )
    end

    draw_char_select_scene_char_select_LR(1)
    draw_char_select_scene_char_select_LR(2)

    draw_2d_image(
        obj_UI_char_select_scene_bar_mark_L,
        image_UI_char_select_scene_bar_mark
    )

    draw_2d_image(
        obj_UI_char_select_scene_bar_mark_R,
        image_UI_char_select_scene_bar_mark
    )

    draw_2d_image(
        obj_UI_char_select_scene_control_method_L,
        image_UI_char_select_scene_control_method_L
    )

    draw_2d_image(
        obj_UI_char_select_scene_control_method_R,
        image_UI_char_select_scene_control_method_R
    )

    draw_char_select_scene_timer(
        obj_UI_char_select_scene_timer,
        image_table_UI_char_select_scene_number
    )

    draw_char_select_scene_glow(obj_UI_char_select_scene_glow)

    love.graphics.setBlendMode("add")
    draw_2d_image(
        obj_UI_char_select_scene_ring,
        image_UI_char_select_scene_ring
    )
    draw_2d_image_table(
        obj_UI_char_select_scene_movie_cover,
        image_table_UI_char_select_scene_movie_cover
    )
    love.graphics.setBlendMode("alpha")

    draw_solid(obj_UI_char_select_scene_black_solid)

end







function draw_char_select_scene_timer(obj,image_table)
    draw_2d_image_table({obj[1],obj[2],nil,1,1,1,0,obj["time"][1]},image_table)
    draw_2d_image_table({obj[1]+13,obj[2],nil,1,1,1,0,obj["time"][2]},image_table)

end

function draw_char_select_scene_glow(obj,f_shader,r_shader)
    local x = draw_resolution_correction(obj[1])
    local y = draw_resolution_correction(obj[2])
    local sx = draw_resolution_correction(obj[5])
    local sy = draw_resolution_correction(obj[6])
    local opacity = obj[4]
    local r = obj[7]

    if opacity == 0 then
        return
    end

    local width = love.graphics.getWidth()
    local height = love.graphics.getHeight()

    local alpha_points = {}

    for i = 1,#obj["alpha_points"] do
        alpha_points[i] = draw_resolution_correction(obj["alpha_points"][i])
    end
    
    CANVAS = love.graphics.newCanvas(width,height)
    CANVAS_RADIAL_BLUR = love.graphics.newCanvas(width,height)
    CANVAS_ALPHA_COMP = love.graphics.newCanvas(width,height)
    CANVAS_ALPHA_ONLY = love.graphics.newCanvas(width,height)

    love.graphics.setCanvas(CANVAS_ALPHA_ONLY)
    love.graphics.polygon("fill", alpha_points)
    love.graphics.setCanvas()

    love.graphics.setCanvas(CANVAS)
    love.graphics.setShader(shader_char_select_scene_fractal_noise)
    shader_char_select_scene_fractal_noise:send("time", love.timer.getTime())
    love.graphics.rectangle("fill", 0, 0, width, height)
    love.graphics.setShader()
    love.graphics.setCanvas()

    love.graphics.setCanvas(CANVAS_RADIAL_BLUR)
    love.graphics.setShader(shader_char_select_scene_radial_blur)
    shader_char_select_scene_radial_blur:send(
        "start_coods", 
        {
            draw_resolution_correction(-230), 
            draw_resolution_correction(-120)
        }
    )
    shader_char_select_scene_radial_blur:send("input_screen_coords", { width, height })
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(CANVAS)
    love.graphics.setShader()
    love.graphics.setCanvas(CANVAS_RADIAL_BLUR)

    love.graphics.setCanvas(CANVAS_ALPHA_COMP)
    love.graphics.draw(CANVAS_RADIAL_BLUR)
    love.graphics.setBlendMode('multiply', 'premultiplied')
    love.graphics.draw(CANVAS_ALPHA_ONLY)
    love.graphics.setBlendMode('alpha', 'alphamultiply')
    love.graphics.setCanvas()

    love.graphics.setBlendMode("add")
    love.graphics.setColor(1, 1, 1, opacity)
    love.graphics.draw(CANVAS_ALPHA_COMP)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setBlendMode("alpha")

end

function draw_char_select_scene_char_select_LR(id)
    if id == 1 then
        local x = draw_resolution_correction(obj_UI_char_select_scene_char_select_left[1])
        local y = draw_resolution_correction(obj_UI_char_select_scene_char_select_left[2])
        local sx = draw_resolution_correction(obj_UI_char_select_scene_char_select_left[5])
        local sy = draw_resolution_correction(obj_UI_char_select_scene_char_select_left[6])
        local f = obj_UI_char_select_scene_char_select_left[8]
        local opacity = obj_UI_char_select_scene_char_select_left[4]
        local w = obj_UI_char_select_scene_char_select_left["width"]
        local h = obj_UI_char_select_scene_char_select_left["height"]

        if opacity == 0 then
            return
        end

        CANVAS= love.graphics.newCanvas(w,h)
        love.graphics.setCanvas(CANVAS)
        love.graphics.clear(24/255, 30/255, 39/255, 1)
        love.graphics.draw(
            image_table_UI_char_select_scene_char_select_text_left[f],
            obj_UI_char_select_scene_char_select_left_text[1],
            obj_UI_char_select_scene_char_select_left_text[2],
            obj_UI_char_select_scene_char_select_left_text[7],
            obj_UI_char_select_scene_char_select_left_text[3],
            obj_UI_char_select_scene_char_select_left_text[4]
        )
        love.graphics.draw(
            image_table_UI_char_select_scene_char_select_char[f],
            obj_UI_char_select_scene_char_select_left_char[1],
            obj_UI_char_select_scene_char_select_left_char[2],
            obj_UI_char_select_scene_char_select_left_char[7],
            obj_UI_char_select_scene_char_select_left_char[3],
            obj_UI_char_select_scene_char_select_left_char[4]
        )
        love.graphics.setBlendMode('multiply', 'premultiplied')
        love.graphics.draw(image_UI_char_select_scene_char_select_left_alpha,0,0,0,1,1)
        love.graphics.setBlendMode('alpha', 'alphamultiply')
        love.graphics.setCanvas()
        
        love.graphics.setColor(1, 1, 1, opacity)
        love.graphics.draw(CANVAS,x,y,0,sx,sy)
        love.graphics.setColor(1, 1, 1, 1)

    elseif id == 2 then
        local x = draw_resolution_correction(obj_UI_char_select_scene_char_select_right[1])
        local y = draw_resolution_correction(obj_UI_char_select_scene_char_select_right[2])
        local sx = draw_resolution_correction(obj_UI_char_select_scene_char_select_right[5])
        local sy = draw_resolution_correction(obj_UI_char_select_scene_char_select_right[6])
        local f = obj_UI_char_select_scene_char_select_right[8]
        local opacity = obj_UI_char_select_scene_char_select_right[4]
        local w = obj_UI_char_select_scene_char_select_right["width"]
        local h = obj_UI_char_select_scene_char_select_right["height"]

        if opacity == 0 then
            return
        end

        CANVAS= love.graphics.newCanvas(w,h)
        love.graphics.setCanvas(CANVAS)
        love.graphics.clear(24/255, 30/255, 39/255, 1)
        love.graphics.draw(
            image_table_UI_char_select_scene_char_select_text_right[f],
            obj_UI_char_select_scene_char_select_right_text[1],
            obj_UI_char_select_scene_char_select_right_text[2],
            obj_UI_char_select_scene_char_select_right_text[7],
            obj_UI_char_select_scene_char_select_right_text[3],
            obj_UI_char_select_scene_char_select_right_text[4]
        )
        love.graphics.draw(
            image_table_UI_char_select_scene_char_select_char[f],
            obj_UI_char_select_scene_char_select_right_char[1],
            obj_UI_char_select_scene_char_select_right_char[2],
            obj_UI_char_select_scene_char_select_right_char[7],
            obj_UI_char_select_scene_char_select_right_char[3],
            obj_UI_char_select_scene_char_select_right_char[4]
        )
        love.graphics.setBlendMode('multiply', 'premultiplied')
        love.graphics.draw(image_UI_char_select_scene_char_select_right_alpha,0,0,0,1,1)
        love.graphics.setBlendMode('alpha', 'alphamultiply')
        love.graphics.setCanvas()
        
        love.graphics.setColor(1, 1, 1, opacity)
        love.graphics.draw(CANVAS,x,y,0,sx,sy)
        love.graphics.setColor(1, 1, 1, 1)
        
    end
end