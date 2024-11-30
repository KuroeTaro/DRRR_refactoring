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

function draw_char_select_scene_flash_in_40f_1s30f()
    draw_solid(obj_UI_char_select_solid_bg)
    draw_2d_image(
        obj_UI_char_select_scene_char_select_bg,
        image_UI_char_select_scene_char_select_bg
    )
    draw_char_select_timer(
        obj_UI_char_select_scene_timer,
        image_table_UI_char_select_scene_number
    )

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

    draw_char_select_scene_second_glow(obj_UI_char_select_scene_second_glow)
    draw_solid(obj_UI_char_select_scene_white_solid)

end







function draw_char_select_timer(obj,image_table)
    local local_obj = obj
    local time = local_obj["time"]
    local digit_10 = {
        local_obj[1],
        local_obj[2],
        local_obj[3],
        local_obj[4],
        local_obj[5],
        local_obj[6],
        local_obj[7],
        time[1]
    }    
    local digit_01 = {
        local_obj[1]+13,
        local_obj[2],
        local_obj[3],
        local_obj[4],
        local_obj[5],
        local_obj[6],
        local_obj[7],
        time[2]
    }
    draw_2d_image_table(digit_10,image_table)
    draw_2d_image_table(digit_01,image_table)

end

function draw_char_select_scene_second_glow(obj)
    local x = resolution_correction(obj[1])
    local y = resolution_correction(obj[2])
    local sx = resolution_correction(obj[5])
    local sy = resolution_correction(obj[6])
    local r = obj[7]
    local canvas = love.graphics.newCanvas(1600,900)
    local canvas_radial_blur = love.graphics.newCanvas(1600,900)
    local canvas_alpha_comp = love.graphics.newCanvas(1600,900)
    local alpha = love.graphics.newCanvas(1600,900)
    local glow_alpha_point = obj["alpha_points"]
    local fractal_noise_shader = love.graphics.newShader("shaders/char_select_fractal_noise.glsl")
    local radial_blur_shader = love.graphics.newShader("shaders/radial_blur.glsl")

    love.graphics.setCanvas(alpha)
    love.graphics.polygon("fill", glow_alpha_point)
    love.graphics.setCanvas()

    love.graphics.setCanvas(canvas)
    love.graphics.setShader(fractal_noise_shader)
    fractal_noise_shader:send("time", love.timer.getTime())
    love.graphics.rectangle("fill", 0, 0, 1600, 900)
    love.graphics.setShader()
    love.graphics.setCanvas()

    love.graphics.setCanvas(canvas_radial_blur)
    love.graphics.setShader(radial_blur_shader)
    radial_blur_shader:send("start_coods", { -230,-120 })
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

    love.graphics.setBlendMode("add")
    love.graphics.setColor(1, 1, 1, obj[4])
    love.graphics.draw(canvas_alpha_comp,x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setBlendMode("alpha")

end


