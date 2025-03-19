function load_game_scene_stage()
    obj_stage_game_scene_camera = {0, 0, -800}
    obj_stage_game_scene_camera["FCT"] = {0,0,0,0,0,0,0,0}
    obj_stage_game_scene_camera["LCT"] = {0,0,0,0,0,0,0,0}
    obj_stage_game_scene_camera["LCD"] = {0,0,0,0,0,0,0,0}
    obj_stage_game_scene_camera["state"] = "default"
    obj_stage_game_scene_camera["enclose_percentage"] = 0.0
    obj_stage_game_scene_camera["non_enclose_position"] = {0, 0, -800}
    obj_stage_game_scene_camera["enclose_position"] = {0, 0, -700}

    obj_stage_game_scene_ground = {-2400, 320, 200, 1, 1, 1, 0, 0}
    obj_stage_game_scene_stair = {-2400, 175, 300, 1, 3, 1, 0, 0}
    obj_stage_game_scene_glow = {0, 0, -800, 1, 1, 1, 0, 0}
    obj_stage_game_scene_glow["glow_3d_pos"] = {0,-800}
    obj_stage_game_scene_glow["fractal_noise_offset"] = 0

    obj_stage_game_scene_shadow_anchor = {0, 515, 800}

end

function order_load_game_scene_stage(load_order)
    local switch = 
    {
        [1] = function()
            image_stage_game_scene_ground = love.graphics.newImage(ASSET_DATA[4][1])
            image_stage_game_scene_stair = love.graphics.newImage(ASSET_DATA[4][2])
            image_stage_game_scene_stage_liner_fade_alpha = love.graphics.newImage(ASSET_DATA[4][3])
        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end

end

function update_game_scene_stage()
    -- static stage no update need
    -- glow update
end





function draw_game_scene_stage_static()
    love.graphics.clear(115/255,115/255,115/255,1)

    local camera = obj_stage_game_scene_camera

    local obj = obj_stage_game_scene_stair
    local sprite_batch = love.graphics.newSpriteBatch(image_stage_game_scene_stair)
    sprite_batch:clear()
    sprite_batch:add(0, 0)
    sprite_batch:add(1600, 0)
    sprite_batch:add(3200, 0)
    draw_3d_image(camera,obj,sprite_batch)

    obj = obj_stage_game_scene_ground
    sprite_batch = love.graphics.newSpriteBatch(image_stage_game_scene_ground)
    sprite_batch:clear()
    sprite_batch:add(0, 0)
    sprite_batch:add(1600, 0)
    sprite_batch:add(3200, 0)
    draw_3d_image(camera,obj,sprite_batch)

end

function draw_game_scene_stage_glow()
    local camera = obj_stage_game_scene_camera
    local obj = obj_stage_game_scene_glow

    local x = obj["glow_3d_pos"][1]
    local y = obj["glow_3d_pos"][2]
    local z = 0

    local camera_x = camera[1]
    local camera_y = camera[2]
    local camera_z = camera[3]

    local scale = draw_resolution_correction(800)/(z-camera_z)

    local width = love.graphics.getWidth()
    local height = love.graphics.getHeight()

    local cood_res = {
        scale * (x - camera_x) + draw_resolution_correction(800),
        scale * (y - camera_y) + draw_resolution_correction(450)
    }

    CANVAS = love.graphics.newCanvas(width,height)
    CANVAS_RADIAL_BLUR = love.graphics.newCanvas(width,height)
    CANVAS_ALPHA_COMP = love.graphics.newCanvas(width,height)
    CANVAS_ALPHA_ONLY = love.graphics.newCanvas(width,height)

    love.graphics.setCanvas(CANVAS_ALPHA_ONLY)
    love.graphics.rectangle("fill", 0, 0, width, height/2)
    love.graphics.draw(
        image_stage_game_scene_stage_liner_fade_alpha,
        0,-camera_y*0.85,0,
        draw_resolution_correction(1),
        draw_resolution_correction(1)
    )
    love.graphics.setCanvas()

    love.graphics.setCanvas(CANVAS)
    love.graphics.setShader(shader_game_scene_fractal_noise)
    shader_game_scene_fractal_noise:send("time", love.timer.getTime())
    shader_game_scene_fractal_noise:send("input_x", cood_res[1])
    love.graphics.rectangle("fill", 0, 0, width, height)
    love.graphics.setShader()
    love.graphics.setCanvas()

    love.graphics.setCanvas(CANVAS_RADIAL_BLUR)
    love.graphics.setShader(shader_game_scene_radial_blur)
    shader_game_scene_radial_blur:send("start_coods", cood_res)
    shader_game_scene_radial_blur:send("input_screen_coords", {width, height})
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(CANVAS, 0, 0)
    love.graphics.setShader()
    love.graphics.setCanvas()

    love.graphics.setCanvas(CANVAS_ALPHA_COMP)
    love.graphics.draw(CANVAS_RADIAL_BLUR)
    love.graphics.setBlendMode('multiply', 'premultiplied')
    love.graphics.draw(CANVAS_ALPHA_ONLY)
    love.graphics.setBlendMode('alpha', 'alphamultiply')
    love.graphics.setCanvas()

    love.graphics.setBlendMode("add")
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.draw(CANVAS_ALPHA_COMP)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setBlendMode("alpha")


end
