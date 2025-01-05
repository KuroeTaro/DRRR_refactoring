function draw_char_select_scene_flash_in_0f_36f()
    love.graphics.setBlendMode("add")
    draw_2d_image_table(
        obj_UI_char_select_scene_movie_cover,
        image_table_UI_char_select_scene_movie_cover
    )
    draw_2d_image_table(
        obj_UI_char_select_scene_first_ring,
        image_table_UI_char_select_scene_first_ring
    )
    love.graphics.setBlendMode("alpha")
    draw_solid(obj_UI_char_select_scene_black_solid)

end

function draw_char_select_scene_flash_in_36f_40f()
    draw_solid(obj_UI_char_select_scene_white_solid)

end

function draw_char_select_scene_flash_in_40f_2s10f()

    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_SRT,
        image_table_UI_char_select_scene_char_icon_image[8],
        image_table_UI_char_select_scene_char_icon_alpha[8]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_SHINRA,
        image_table_UI_char_select_scene_char_icon_image[7],
        image_table_UI_char_select_scene_char_icon_alpha[7]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_CKG,
        image_table_UI_char_select_scene_char_icon_image[6],
        image_table_UI_char_select_scene_char_icon_alpha[6]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_SZO,
        image_table_UI_char_select_scene_char_icon_image[5],
        image_table_UI_char_select_scene_char_icon_alpha[5]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_IZY,
        image_table_UI_char_select_scene_char_icon_image[4],
        image_table_UI_char_select_scene_char_icon_alpha[4]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_ANRI,
        image_table_UI_char_select_scene_char_icon_image[3],
        image_table_UI_char_select_scene_char_icon_alpha[3]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_KTC,
        image_table_UI_char_select_scene_char_icon_image[2],
        image_table_UI_char_select_scene_char_icon_alpha[2]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_ERIKAWK3,
        image_table_UI_char_select_scene_char_icon_image[1],
        image_table_UI_char_select_scene_char_icon_alpha[1]
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

    draw_2d_image(
        obj_UI_char_select_scene_char_select_bg,
        image_UI_char_select_scene_char_select_bg
    )

    draw_char_select_scene_char_select_LR(1)
    if GAME_MODE ~= 0 then
        draw_char_select_scene_char_select_LR(2)
    else
        draw_char_select_scene_char_select_LR(0)
    end

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

    draw_char_select_timer(
        obj_UI_char_select_scene_timer,
        image_table_UI_char_select_scene_number
    )

    draw_char_select_scene_second_glow(obj_UI_char_select_scene_second_glow)

    love.graphics.setBlendMode("add")
    draw_2d_image(
        obj_UI_char_select_scene_second_ring,
        image_UI_char_select_scene_second_ring
    )
    draw_2d_image_table(
        obj_UI_char_select_scene_movie_cover,
        image_table_UI_char_select_scene_movie_cover
    )
    love.graphics.setBlendMode("alpha")

    draw_solid(obj_UI_char_select_scene_white_solid)

end

function draw_char_select_scene_main()

    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_SRT,
        image_table_UI_char_select_scene_char_icon_image[8],
        image_table_UI_char_select_scene_char_icon_alpha[8]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_SHINRA,
        image_table_UI_char_select_scene_char_icon_image[7],
        image_table_UI_char_select_scene_char_icon_alpha[7]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_CKG,
        image_table_UI_char_select_scene_char_icon_image[6],
        image_table_UI_char_select_scene_char_icon_alpha[6]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_SZO,
        image_table_UI_char_select_scene_char_icon_image[5],
        image_table_UI_char_select_scene_char_icon_alpha[5]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_IZY,
        image_table_UI_char_select_scene_char_icon_image[4],
        image_table_UI_char_select_scene_char_icon_alpha[4]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_ANRI,
        image_table_UI_char_select_scene_char_icon_image[3],
        image_table_UI_char_select_scene_char_icon_alpha[3]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_KTC,
        image_table_UI_char_select_scene_char_icon_image[2],
        image_table_UI_char_select_scene_char_icon_alpha[2]
    )
    draw_char_select_scene_char_icon(
        obj_UI_char_select_scene_icon_ERIKAWK3,
        image_table_UI_char_select_scene_char_icon_image[1],
        image_table_UI_char_select_scene_char_icon_alpha[1]
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

    draw_2d_image(
        obj_UI_char_select_scene_char_select_bg,
        image_UI_char_select_scene_char_select_bg
    )

    draw_char_select_scene_char_select_LR(1)
    if GAME_MODE ~= 0 then
        draw_char_select_scene_char_select_LR(2)
    else
        draw_char_select_scene_char_select_LR(0)
    end

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

    draw_char_select_timer(
        obj_UI_char_select_scene_timer,
        image_table_UI_char_select_scene_number
    )

    draw_char_select_scene_second_glow(obj_UI_char_select_scene_second_glow)

    love.graphics.setBlendMode("add")
    draw_2d_image(
        obj_UI_char_select_scene_second_ring,
        image_UI_char_select_scene_second_ring
    )
    draw_2d_image_table(
        obj_UI_char_select_scene_movie_cover,
        image_table_UI_char_select_scene_movie_cover
    )
    love.graphics.setBlendMode("alpha")

    draw_solid(obj_UI_char_select_scene_black_solid)

end







function draw_char_select_timer(obj,image_table)
    draw_2d_image_table({obj[1],obj[2],nil,1,1,1,0,obj["time"][1]},image_table)
    draw_2d_image_table({obj[1]+13,obj[2],nil,1,1,1,0,obj["time"][2]},image_table)

end

function draw_char_select_scene_second_glow(obj,f_shader,r_shader)
    local x = resolution_correction(obj[1])
    local y = resolution_correction(obj[2])
    local sx = resolution_correction(obj[5])
    local sy = resolution_correction(obj[6])
    local opacity = obj[4]
    local r = obj[7]
    canvas = love.graphics.newCanvas(1600,900)
    canvas_radial_blur = love.graphics.newCanvas(1600,900)
    canvas_alpha_comp = love.graphics.newCanvas(1600,900)
    alpha = love.graphics.newCanvas(1600,900)

    love.graphics.setCanvas(alpha)
    love.graphics.polygon("fill", obj["alpha_points"])
    love.graphics.setCanvas()

    love.graphics.setCanvas(canvas)
    love.graphics.setShader(shader_char_select_scene_fractal_noise)
    shader_char_select_scene_fractal_noise:send("time", love.timer.getTime())
    love.graphics.rectangle("fill", 0, 0, 1600, 900)
    love.graphics.setShader()
    love.graphics.setCanvas()

    love.graphics.setCanvas(canvas_radial_blur)
    love.graphics.setShader(shader_char_select_scene_radial_blur)
    shader_char_select_scene_radial_blur:send("start_coods", { -230,-120 })
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(canvas, 0, 0)
    love.graphics.setShader()
    love.graphics.setCanvas(canvas_radial_blur)

    love.graphics.setCanvas(canvas_alpha_comp)
    love.graphics.draw(canvas_radial_blur)
    love.graphics.setBlendMode('multiply', 'premultiplied')
    love.graphics.draw(alpha)
    love.graphics.setBlendMode('alpha', 'alphamultiply')
    love.graphics.setCanvas()

    if opacity ~= 0 then
        love.graphics.setBlendMode("add")
        love.graphics.setColor(1, 1, 1, opacity)
        love.graphics.draw(canvas_alpha_comp,x,y,0,sx,sy)
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.setBlendMode("alpha")
    end

end

function draw_char_select_scene_char_icon(obj,image,alpha)
    local x = resolution_correction(obj[1])
    local y = resolution_correction(obj[2])
    local sx = resolution_correction(obj[5])
    local sy = resolution_correction(obj[6])
    local opacity = obj[4]
    local image_x = obj["image_x"]

    canvas = love.graphics.newCanvas(w,h)

    love.graphics.setCanvas(canvas) 
    love.graphics.draw(image,image_x,0)
    love.graphics.setBlendMode('multiply', 'premultiplied')
    love.graphics.draw(alpha)
    love.graphics.setBlendMode('alpha', 'alphamultiply')
    love.graphics.setCanvas()
    if opacity ~= 0 then
        love.graphics.setColor(1, 1, 1, opacity)
        love.graphics.draw(canvas,x,y,0,sx,sy)
        love.graphics.setColor(1, 1, 1, 1)
    end

end

function draw_char_select_scene_char_select_LR(id)
    if id == 1 then
        local x = resolution_correction(obj_UI_char_select_scene_char_select_left[1])
        local y = resolution_correction(obj_UI_char_select_scene_char_select_left[2])
        local sx = resolution_correction(obj_UI_char_select_scene_char_select_left[5])
        local sy = resolution_correction(obj_UI_char_select_scene_char_select_left[6])
        local f = obj_UI_char_select_scene_char_select_left[8]
        local opacity = obj_UI_char_select_scene_char_select_left[4]
        local w = obj_UI_char_select_scene_char_select_left["width"]
        local h = obj_UI_char_select_scene_char_select_left["height"]

        canvas = love.graphics.newCanvas(w,h)
        love.graphics.setCanvas(canvas)
        love.graphics.setColor(24/255, 30/255, 39/255, 1)
        love.graphics.draw(image_UI_char_select_scene_char_select_left_alpha,0,0,0,1,1)
        love.graphics.setColor(1, 1, 1, 1)
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
        love.graphics.draw(canvas,x,y,0,sx,sy)
        love.graphics.setColor(1, 1, 1, 1)

    elseif id == 2 then
        local x = resolution_correction(obj_UI_char_select_scene_char_select_right[1])
        local y = resolution_correction(obj_UI_char_select_scene_char_select_right[2])
        local sx = resolution_correction(obj_UI_char_select_scene_char_select_right[5])
        local sy = resolution_correction(obj_UI_char_select_scene_char_select_right[6])
        local f = obj_UI_char_select_scene_char_select_right[8]
        local opacity = obj_UI_char_select_scene_char_select_right[4]
        local w = obj_UI_char_select_scene_char_select_right["width"]
        local h = obj_UI_char_select_scene_char_select_right["height"]

        canvas = love.graphics.newCanvas(w,h)
        love.graphics.setCanvas(canvas)
        love.graphics.setColor(24/255, 30/255, 39/255, 1)
        love.graphics.draw(image_UI_char_select_scene_char_select_right_alpha,0,0,0,1,1)
        love.graphics.setColor(1, 1, 1, 1)
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
        
        if opacity ~= 0 then
            love.graphics.setColor(1, 1, 1, opacity)
            love.graphics.draw(canvas,x,y,0,sx,sy)
            love.graphics.setColor(1, 1, 1, 1)
        end

    elseif id == 0 then
        local x = resolution_correction(obj_UI_char_select_scene_char_select_right[1])
        local y = resolution_correction(obj_UI_char_select_scene_char_select_right[2])
        local sx = resolution_correction(obj_UI_char_select_scene_char_select_right[5])
        local sy = resolution_correction(obj_UI_char_select_scene_char_select_right[6])
        local f = obj_UI_char_select_scene_char_select_right[8]
        local opacity = obj_UI_char_select_scene_char_select_right[4]
        local w = obj_UI_char_select_scene_char_select_right["width"]
        local h = obj_UI_char_select_scene_char_select_right["height"]

        canvas = love.graphics.newCanvas(w,h)
        love.graphics.setCanvas(canvas)
        love.graphics.setColor(24/255, 30/255, 39/255, 1)
        love.graphics.draw(image_UI_char_select_scene_char_select_right_alpha,0,0,0,1,1)
        love.graphics.setColor(1, 1, 1, 1)
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
        love.graphics.draw(canvas,x,y,0,sx,sy)
        love.graphics.setColor(1, 1, 1, 1)
    end
end