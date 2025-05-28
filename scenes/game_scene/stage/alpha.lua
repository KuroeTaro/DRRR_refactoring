function load_game_scene_obj_stage()
    obj_stage_game_scene_camera = {0, 0, -800}
    obj_stage_game_scene_camera["FCT"] = {0,0,0,0,0,0,0,0}
    obj_stage_game_scene_camera["LCT"] = {0,0,0,0,0,0,0,0}
    obj_stage_game_scene_camera["LCD"] = {}
    obj_stage_game_scene_camera["state"] = "main"
    obj_stage_game_scene_camera["enclose_percentage"] = 0.0
    obj_stage_game_scene_camera["non_enclose_position"] = {0, 0, -800}
    obj_stage_game_scene_camera["enclose_position"] = {0, 0, -700}

    obj_stage_game_scene_camera["LCT"]["enclose_percentage"] = 0.0
    obj_stage_game_scene_camera["LCD"]["enclose_percentage"] = 0.0

    obj_stage_game_scene_ground = {-2400, 320, 200, 1, 1, 1, 0, 0}
    obj_stage_game_scene_stair = {-2400, 175, 300, 1, 3, 1, 0, 0}
    obj_stage_game_scene_glow = {0, 0, -800, 1, 1, 1, 0, 0}
    obj_stage_game_scene_glow["glow_3d_pos"] = {0,-800}

    obj_stage_game_scene_shadow_anchor = {0, 515, 800}

end

function load_game_scene_anim_stage()
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x = {}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[0] = {0.00, 28}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[28] = {0.00, 29}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[29] = {3.25, 30}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[30] = {-10.34, 31}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[31] = {-3.93, 32}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[32] = {-1.02, 33}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[33] = {-12.10, 34}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[34] = {-6.69, 35}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[35] = {4.72, 36}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[36] = {6.47, 37}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[37] = {-3.78, 38}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[38] = {2.46, 39}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[39] = {18.31, 40}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[40] = {10.65, 41}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[41] = {11.00, 42}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[42] = {17.81, 43}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[43] = {2.63, 44}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[44] = {11.94, 45}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[45] = {13.25, 46}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[46] = {-2.44, 47}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[47] = {-4.13, 48}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[48] = {15.69, 49}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[49] = {13.50, 50}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[50] = {-2.19, 51}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[51] = {8.63, 52}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[52] = {5.44, 53}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[53] = {1.35, 54}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[54] = {-2.74, 55}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[55] = {2.18, 57}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[57] = {0.00, 78}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x[78] = {0.00, 78}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x["prop"] = 1
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x["length"] = 78
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x["loop"] = false
    anim_stage_point_linear_game_scene_camera_overdrive_shake_x["fix_type"] = false


    anim_stage_point_linear_game_scene_camera_overdrive_shake_y = {}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[0] = {0.00, 28}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[28] = {0.00, 29}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[29] = {0.35, 30}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[30] = {-0.92, 31}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[31] = {2.67, 32}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[32] = {-4.00, 33}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[33] = {-5.26, 34}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[34] = {0.60, 35}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[35] = {-2.15, 36}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[36] = {0.35, 37}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[37] = {0.04, 38}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[38] = {1.75, 39}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[39] = {1.44, 40}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[40] = {-2.69, 41}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[41] = {-4.00, 42}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[42] = {2.67, 43}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[43] = {-3.13, 44}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[44] = {4.11, 45}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[45] = {4.55, 46}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[46] = {-1.82, 47}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[47] = {1.75, 48}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[48] = {-0.95, 49}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[49] = {-2.15, 50}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[50] = {-0.08, 51}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[51] = {4.11, 52}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[52] = {0.79, 53}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[53] = {2.67, 54}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[54] = {-0.95, 55}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[55] = {0.50, 57}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[57] = {0.00, 78}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y[78] = {0.00, 78}
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y["prop"] = 2
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y["length"] = 78
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y["loop"] = false
    anim_stage_point_linear_game_scene_camera_overdrive_shake_y["fix_type"] = false

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
    -- glow update no need for this stage

    -- camera update
    local camera_obj = obj_stage_game_scene_camera
    local char_L_obj = obj_char_game_scene_char_LP
    local char_R_obj = obj_char_game_scene_char_RP
    local switch = {
        ["main"] = function()
            if char_L_obj["state"] == "overdrive" or char_R_obj["state"] == "overdrive" then
                camera_obj["state"] = "overdrive_shake"
                init_point_linear_anim_with(camera_obj,anim_stage_point_linear_game_scene_camera_overdrive_shake_x)
                init_point_linear_anim_with(camera_obj,anim_stage_point_linear_game_scene_camera_overdrive_shake_y)
            end
        end,
        ["enclosing"] = function()

        end,
        ["overdrive_shake"] = function()
            point_linear_animator(camera_obj,anim_stage_point_linear_game_scene_camera_overdrive_shake_x)
            point_linear_animator(camera_obj,anim_stage_point_linear_game_scene_camera_overdrive_shake_y)
            if get_point_linear_anim_end_state(camera_obj,anim_stage_point_linear_game_scene_camera_overdrive_shake_x) then
                camera_obj["state"] = "main"
            end
        end,
    }
    local this_function = switch[camera_obj["state"]]
    if this_function then this_function() end
end





function draw_game_scene_stage_static()
    love.graphics.clear(90/255,90/255,90/255,1)

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

    local camera_x = camera["enclose_percentage"]*camera["enclose_position"][1] + (1-camera["enclose_percentage"])*camera["enclose_position"][1]
    local camera_y = camera["enclose_percentage"]*camera["enclose_position"][2] + (1-camera["enclose_percentage"])*camera["enclose_position"][2]
    local camera_z = camera["enclose_percentage"]*camera["enclose_position"][3] + (1-camera["enclose_percentage"])*camera["enclose_position"][3]

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
