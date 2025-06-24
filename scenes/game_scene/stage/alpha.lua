function load_game_scene_obj_stage()
    obj_stage_game_scene_camera = {0, 0, -800}
    obj_stage_game_scene_camera["current_3d_pos_x"] = 0
    obj_stage_game_scene_camera["current_3d_pos_y"] = 0
    obj_stage_game_scene_camera["current_3d_pos_z"] = -800
    obj_stage_game_scene_camera["target_3d_pos_x"] = 0
    obj_stage_game_scene_camera["target_3d_pos_y"] = 0
    obj_stage_game_scene_camera["target_3d_pos_z"] = -800
    obj_stage_game_scene_camera["FCT"] = {0,0,0,0,0,0,0,0}
    obj_stage_game_scene_camera["LCT"] = {0,0,0,0,0,0,0,0}
    obj_stage_game_scene_camera["LCD"] = {0,0,0,0,0,0,0,0}
    obj_stage_game_scene_camera["state"] = "main"
    obj_stage_game_scene_camera["enclose_percentage"] = 0.0
    obj_stage_game_scene_camera["enclose_position_offset"] = {0, 0, 0}

    obj_stage_game_scene_camera["LCT"]["enclose_percentage"] = 0.0
    obj_stage_game_scene_camera["LCD"]["enclose_percentage"] = 0.0

    obj_stage_game_scene_ground = {-2400, 320, 200, 1, 1, 1, 0, 0}
    obj_stage_game_scene_stair = {-2400, 175, 300, 1, 1, 1, 0, 0}
    obj_stage_game_scene_glow = {0, 0, -800, 1, 1, 1, 0, 0}
    obj_stage_game_scene_glow["glow_3d_pos"] = {0,-1200}

    obj_stage_game_scene_shadow_anchor = {0, 515, 800}

end

function load_game_scene_anim_stage()
    anim_camera_point_linear_game_scene_camera_enclosing = {}
    anim_camera_point_linear_game_scene_camera_enclosing[0] = {0.00, 0}
    anim_camera_point_linear_game_scene_camera_enclosing["prop"] = "enclose_percentage"
    anim_camera_point_linear_game_scene_camera_enclosing["length"] = 0
    anim_camera_point_linear_game_scene_camera_enclosing["loop"] = false
    anim_camera_point_linear_game_scene_camera_enclosing["fix_type"] = true

    anim_camera_point_linear_game_scene_camera_shake_x = {}
    anim_camera_point_linear_game_scene_camera_shake_y = {}

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
    local obj_camera = obj_stage_game_scene_camera
    local obj_char_L = obj_char_game_scene_char_LP
    local obj_char_R = obj_char_game_scene_char_RP
    local shift_abs = math.max(1000-(math.max(math.abs(obj_char_L["x"]-obj_char_R["x"]),1000)),-450)
    obj_camera["target_3d_pos_x"] = (obj_char_L["x"] + obj_char_R["x"])/2
    obj_camera["target_3d_pos_x"] = math.max(obj_camera["target_3d_pos_x"],-900)
    obj_camera["target_3d_pos_x"] = math.min(obj_camera["target_3d_pos_x"],900)
    obj_camera["target_3d_pos_y"] = -(math.abs(obj_char_L["y"] - obj_char_R["y"]))*0.5 + 60
    obj_camera["target_3d_pos_y"] = math.min(obj_camera["target_3d_pos_y"],0)
    obj_camera["target_3d_pos_y"] = obj_camera["target_3d_pos_y"]+shift_abs*0.1
    obj_camera["target_3d_pos_z"] = shift_abs*0.3-800

    local div_value = 10
    obj_camera["current_3d_pos_x"] = (obj_camera["current_3d_pos_x"]*(div_value-1)+obj_camera["target_3d_pos_x"])/div_value
    obj_camera["current_3d_pos_y"] = (obj_camera["current_3d_pos_y"]*(div_value-1)+obj_camera["target_3d_pos_y"])/div_value
    obj_camera["current_3d_pos_z"] = (obj_camera["current_3d_pos_z"]*(div_value-1)+obj_camera["target_3d_pos_z"])/div_value
    if math.abs(obj_camera["current_3d_pos_x"]-obj_camera["target_3d_pos_x"]) < 0.05 then
        obj_camera["current_3d_pos_x"] = obj_camera["target_3d_pos_x"]
    end
    if math.abs(obj_camera["current_3d_pos_y"]-obj_camera["target_3d_pos_y"]) < 0.05 then
        obj_camera["current_3d_pos_y"] = obj_camera["target_3d_pos_y"]
    end
    if math.abs(obj_camera["current_3d_pos_z"]-obj_camera["target_3d_pos_z"]) < 0.05 then
        obj_camera["current_3d_pos_z"] = obj_camera["target_3d_pos_z"]
    end

    local switch = {
        ["main"] = function()
            if obj_char_L["state"] == "overdrive" then
                obj_camera["state"] = "overdrive_shake"
                anim_camera_point_linear_game_scene_camera_shake_x = obj_char_L["camera_x_shake_anim"]
                anim_camera_point_linear_game_scene_camera_shake_y = obj_char_L["camera_y_shake_anim"]
                init_point_linear_anim_with(obj_camera,anim_camera_point_linear_game_scene_camera_shake_x)
                init_point_linear_anim_with(obj_camera,anim_camera_point_linear_game_scene_camera_shake_y)
            elseif obj_char_R["state"] == "overdrive" then
                obj_camera["state"] = "overdrive_shake"
                anim_camera_point_linear_game_scene_camera_shake_x = obj_char_R["camera_x_shake_anim"]
                anim_camera_point_linear_game_scene_camera_shake_y = obj_char_R["camera_y_shake_anim"]
                init_point_linear_anim_with(obj_camera,anim_camera_point_linear_game_scene_camera_shake_x)
                init_point_linear_anim_with(obj_camera,anim_camera_point_linear_game_scene_camera_shake_y)
            end
        end,
        ["hit_camera_shake"] = function()
            point_linear_animator(obj_camera,anim_camera_point_linear_game_scene_camera_enclosing)
            point_linear_animator(obj_camera,anim_camera_point_linear_game_scene_camera_shake_x)
            point_linear_animator(obj_camera,anim_camera_point_linear_game_scene_camera_shake_y)
            if get_point_linear_anim_end_state(obj_camera,anim_camera_point_linear_game_scene_camera_enclosing) 
            and get_point_linear_anim_end_state(obj_camera,anim_camera_point_linear_game_scene_camera_shake_x) then
                obj_camera["state"] = "main"
            end
        end,
        ["overdrive_shake"] = function()
            point_linear_animator(obj_camera,anim_camera_point_linear_game_scene_camera_shake_x)
            point_linear_animator(obj_camera,anim_camera_point_linear_game_scene_camera_shake_y)
            if get_point_linear_anim_end_state(obj_camera,anim_camera_point_linear_game_scene_camera_shake_x) then
                obj_camera["state"] = "main"
            end
        end,
    }
    local this_function = switch[obj_camera["state"]]
    if this_function then this_function() end

    obj_camera[1] = obj_camera["current_3d_pos_x"]+obj_camera["enclose_position_offset"][1]*obj_camera["enclose_percentage"]
    obj_camera[2] = obj_camera["current_3d_pos_y"]+obj_camera["enclose_position_offset"][2]*obj_camera["enclose_percentage"]
    obj_camera[3] = obj_camera["current_3d_pos_z"]+obj_camera["enclose_position_offset"][3]*obj_camera["enclose_percentage"]
end





function draw_game_scene_stage_static()
    love.graphics.clear(125/255,125/255,125/255,1)

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
    local z = 800

    local camera_x = camera["enclose_percentage"]*camera["enclose_position_offset"][1] + (1-camera["enclose_percentage"])*camera[1]
    local camera_y = camera["enclose_percentage"]*camera["enclose_position_offset"][2] + (1-camera["enclose_percentage"])*camera[2]
    local camera_z = camera["enclose_percentage"]*camera["enclose_position_offset"][3] + (1-camera["enclose_percentage"])*camera[3]

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
        0,-camera_y,0,
        draw_resolution_correction(1),
        draw_resolution_correction(1)
    )
    love.graphics.setCanvas()

    love.graphics.setCanvas(CANVAS)
    love.graphics.setShader(shader_game_scene_fractal_noise)
    shader_game_scene_fractal_noise:send("time", love.timer.getTime())
    shader_game_scene_fractal_noise:send("input_x", 0)
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
    love.graphics.setColor(1, 1, 1, 0.8)
    love.graphics.draw(CANVAS_ALPHA_COMP)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setBlendMode("alpha")


end
