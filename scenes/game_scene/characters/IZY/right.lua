function load_game_scene_obj_char_RP()
    -- x y z opacity sx sy r f
    obj_char_game_scene_char_RP = {0, 0, 0, 1, -1, 1, 0, 0} -- obj[1-8]都为图形上的数据 obj[8]为图形上的帧数
    obj_char_game_scene_char_RP["x"] = 320
    obj_char_game_scene_char_RP["y"] = 365
    obj_char_game_scene_char_RP["f"] = 0 -- obj["f"] 逻辑上的帧数
    obj_char_game_scene_char_RP["anchor_pos"] = {150,550}
    obj_char_game_scene_char_RP["velocity"] = {0,0}
    obj_char_game_scene_char_RP["state"] = "before_ease_in"
    obj_char_game_scene_char_RP["character_animation_timer"] = 0
    obj_char_game_scene_char_RP["hurt_block_stun_anim"] = nil
    obj_char_game_scene_char_RP["facing"] = "Right"
    obj_char_game_scene_char_RP["cancel_command_cache"] = nil

    obj_char_game_scene_char_RP["hitbox_table"] = {}
    obj_char_game_scene_char_RP["hurtbox_table"] = {}
    obj_char_game_scene_char_RP["projectile_table"] = {}
    obj_char_game_scene_char_RP["VFX_table"] = {}
    obj_char_game_scene_char_RP["shadow_box_table"] = {
        {
            {-17.38, -6.38,
            -36.88, -4.50}
            ,
            {-36.88, -4.50,
            -37.63, 6.13}
            ,
            {-37.63, 6.13,
            -31.01, 10.17}
            ,
            {-31.01, 10.17,
            -17.60, 10.46}
            ,
            {-17.60, 10.46,
            -3.88, 18.75}
            ,
            {-3.88, 18.75,
            8.88, 19.50}
            ,
            {8.88, 19.50,
            20.75, 18.75}
            ,
            {20.75, 18.75,
            32.84, 15.79}
            ,
            {32.84, 15.79,
            37.25, 11.63}
            ,
            {37.25, 11.63,
            36.88, 5.00}
            ,
            {36.88, 5.00,
            35.88, 0.24}
            ,
            {35.88, 0.24,
            30.38, -2.75}
            ,
            {30.38, -2.75,
            23.96, -4.23}
            ,
            {23.96, -4.23,
            12.00, -5.00}
            ,
            {12.00, -5.00,
            -17.38, -6.38}
        },
        {
            {-3.88, -21.50,
            -19.00, -17.38}
            ,
            {-19.00, -17.38,
            -20.88, -12.00}
            ,
            {-20.88, -12.00,
            -14.25, 15.63}
            ,
            {-14.25, 15.63,
            -7.63, 20.50}
            ,
            {-7.63, 20.50,
            3.25, 22.13}
            ,
            {3.25, 22.13,
            13.63, 21.25}
            ,
            {13.63, 21.25,
            22.50, 16.38}
            ,
            {22.50, 16.38,
            21.88, 4.63}
            ,
            {21.88, 4.63,
            11.88, -14.63}
            ,
            {11.88, -14.63,
            -3.88, -21.50}
        }
    }
    obj_char_game_scene_char_RP["shadow_box_pos"] ={
        {196.0,527.0}
        ,{94.0,547.0}
    }

    obj_char_game_scene_char_RP["knife_state"] = "off"
    obj_char_game_scene_char_RP["knife_anchor_pos"] = {168,210}
    obj_char_game_scene_char_RP["knife_8"] = 0 -- obj[knife_8]匕首图形上的帧数
    obj_char_game_scene_char_RP["knife_f"] = 0 -- obj[knife_8]匕首逻辑上的帧数

    
    obj_char_game_scene_char_RP["health"] = {11500, 11500, 11500, "fade_off"}
    obj_char_game_scene_char_RP["heat"] = {0.0, 200.0} -- 0.0 - 200.0
    obj_char_game_scene_char_RP["ability"] = {600.0, 600.0} -- 0.0 - 600.0
    obj_char_game_scene_char_RP["overdrive"] = {600.0, 600.0, "off"} -- 0.0 - 600.0
    obj_char_game_scene_char_RP["overdrive_timer"] = {0,0,0,0} -- 0f 00:00 
    obj_char_game_scene_char_RP["risk"] = {0.0, 300.0}-- 0.0 - 300.0
    obj_char_game_scene_char_RP["positive_bouns"] = {0.0, 600.0} -- 0.0 - 600.0

    
end

function order_load_game_scene_char_RP_frames(load_order)
    local switch = 
    {
        [1] = function()
            image_table_char_game_scene_RP = {}
            
            image_table_char_game_scene_RP["before_ease_in"] = {}
            for i = 0,16 do
                image_table_char_game_scene_RP["before_ease_in"][i] = love.graphics.newImage(ASSET_DATA[2]["stand_idle"][i+1])
            end

            image_table_char_game_scene_RP["stand_idle"] = {}
            for i = 0,16 do
                image_table_char_game_scene_RP["stand_idle"][i] = love.graphics.newImage(ASSET_DATA[2]["stand_idle"][i+1])
            end

        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end

    -- image_table_char_game_scene_RP_knife = {}
    -- image_table_char_game_scene_RP_knife["stand_idle_hold"] = {}
    -- image_table_char_game_scene_RP_knife["stand_idle_shoot"] = {}
    -- for i = 0,3 do
    --     image_table_char_game_scene_RP_knife["stand_idle_hold"][i] = love.graphics.newImage(ASSET_DATA[1]["RP_KNIFE"]["stand_idle_hold"][i])
    -- end
    -- for i = 0,9 do
    --     image_table_char_game_scene_RP_knife["stand_idle_shoot"][i] = love.graphics.newImage(ASSET_DATA[1]["RP_KNIFE"]["stand_idle_shoot"][i])
    -- end

end

function load_game_scene_anim_char_RP()
    -- 站姿待机动画
    anim_char_stand_idle_RP = {}
    anim_char_stand_idle_RP[0] = function() 
        obj_char_game_scene_char_RP[8] = 0
        obj_char_game_scene_char_RP["knife_anchor_pos"] = {168,210}
    end
    for i = 1,16 do
        anim_char_stand_idle_RP[i*7] = function()
            obj_char_game_scene_char_RP[8] = i
        end
    end
    anim_char_stand_idle_RP[17*7] = function()
        obj_char_game_scene_char_RP["f"] = 0
        obj_char_game_scene_char_RP[8] = 0
        obj_char_game_scene_char_RP["knife_anchor_pos"] = {168,210}
    end

end

function load_game_scene_shader_char_RP()

end


function update_game_scene_char_RP()
    state_machine_char_game_scene_char_RP()
    -- state_machine_char_game_scene_char_RP_knife()
    
end





-- 拉后最高优先级 然后是拉下 然后是拉前 然后是跳
-- 然后是方向组合拳脚 普通拳脚 从轻到重
-- 然后是必杀
-- 然后是超必杀
-- 最后是od和霸
-- INPUT_SYS_COMMAND_TABLE = {
--     "Up","Down","Left","Right",
--     "P","S","HS","K",
--     "SP","Launcher","Back","Start",
--     "RC","Dash","Burst","UA"
-- }
function state_machine_char_game_scene_char_RP()
    local input = INPUT_SYS_CURRENT_COMMAND_STATE["R"]
    local switch = {
        ["before_ease_in"] = function()
            character_animator(obj_char_game_scene_char_RP,anim_char_stand_idle_RP)
        end,
        ["stand_idle"] = function()
            character_animator(obj_char_game_scene_char_RP,anim_char_stand_idle_RP)
            if input["Up"] == "Pressing" then
                -- to pre_jump
                
            elseif input["Burst"] == "Pressing" then
                -- to over_drive

            end
        end,
    }
    local this_function = switch[obj_char_game_scene_char_RP["state"]]
    if this_function then this_function() end

end

function state_machine_char_game_scene_char_RP_knife()
    local obj = obj_char_game_scene_char_RP
    local switch = {
        ["off"] = function()

        end,
    }
    local this_function = switch[obj["knife_state"]]
    if this_function then this_function() end

end





function draw_game_scene_char_RP_logic_graphic_pos_sync()
    local obj = obj_char_game_scene_char_RP
    obj[1] = obj["x"]-obj[5]*obj["anchor_pos"][1]
    obj[2] = obj["y"]-obj[6]*obj["anchor_pos"][2]
end

function draw_game_scene_char_RP()
    local obj = obj_char_game_scene_char_RP
    local character_image_table = image_table_char_game_scene_RP[obj["state"]]
    local camera = obj_stage_game_scene_camera

    local x = obj[1]
    local y = obj[2]
    local z = obj[3]
    local opacity = obj[4]
    local sx = obj[5]
    local sy = obj[6]
    local r = obj[7]
    local f = obj[8]

    local knife_state = obj["knife_state"]

    if knife_state == "on" then
        local knife_8 = obj["knife_8"]
    
        local knife = {
            x+sx*obj["knife_anchor_pos"][1], 
            y+sy*obj["knife_anchor_pos"][2], 
            z, 
            opacity, 
            sx, 
            sy, 
            r, 
            knife_8
        }

        -- local knife_image_table = image_table_char_game_scene_RP_knife[obj["state"]]
        -- draw_3d_image_table(camera,knife,knife_image_table)
        local knife_image_table = image_UI_load_scene_loading_text
        draw_3d_image(camera,knife,knife_image_table)


    end

    draw_3d_image_table(camera,obj,character_image_table)

end

function draw_game_scene_char_RP_shadow()
    local obj = obj_char_game_scene_char_RP
    local shadow_box_table = obj["shadow_box_table"]
    local opacity = (obj["y"]-325)/80
    local z = obj[3]
    local sx = obj[5]
    local sy = obj[6]
    local shadow_anchor = obj_stage_game_scene_shadow_anchor
    local camera = obj_stage_game_scene_camera
    local camera_z = camera[3]

    local shadow_cavans = love.graphics.newCanvas(
        love.graphics.getWidth(),
        love.graphics.getHeight()
    )

    local obj_2d_pos = draw_3d_point_to_2D(camera,obj)
    local shadow_anchor_2d_pos = draw_3d_point_to_2D(camera,shadow_anchor)
    local scale = draw_resolution_correction(800)/(z-camera_z)

    love.graphics.setCanvas(shadow_cavans)
    for i = 1,#shadow_box_table do
        local x = obj_2d_pos[1] + scale*sx*obj["shadow_box_pos"][i][1]
        local y = obj_2d_pos[2] + scale*sy*obj["shadow_box_pos"][i][2]

        common_game_scene_draw_shadow(
            shadow_box_table[i],
            shadow_anchor_2d_pos,
            x,
            y,
            scale*sx,
            scale*sy
        )
    end
    love.graphics.setCanvas()

    love.graphics.setColor(0, 0, 0, opacity)
    love.graphics.draw(shadow_cavans)
    love.graphics.setColor(1, 1, 1, 1)
    
end






function insert_projectile_game_scene_char_RP(projectile_obj)

end






function insert_VFX_game_scene_char_RP_overdrive_badge()
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    local char_obj = obj_char_game_scene_char_RP
    obj["life"] = 70
    obj[1] = char_obj["x"] - char_obj[5]*(-500)
    obj[2] = char_obj["y"] - char_obj[6]*(865)
    obj[3] = char_obj["z"]
    obj[4] = 1
    obj[5] = char_obj[5]*2
    obj[6] = char_obj[6]*2
    obj[7] = char_obj[7]
    obj[8] = -1
    obj["update"] = function(self)
        local char_obj = obj_char_game_scene_char_RP
        self[1] = char_obj["x"] - char_obj[5]*(-500)
        self[2] = char_obj["y"] - char_obj[6]*(865)
        self[3] = char_obj["z"]
        self[4] = 1
        self[5] = char_obj[5]
        self[6] = char_obj[6]
        self[7] = char_obj[7]
        self[8] = self[8] + 1
    end
    obj["draw"] = function(self)
        local camera_obj = obj_stage_game_scene_camera
        local image_table = image_table_VFX_game_scene_RP_overdrive_badge
        draw_3d_image_table(camera_obj,self,image_table)
    end
    table.insert(obj_char_game_scene_char_RP["VFX_table"],obj)
end

function insert_VFX_game_scene_char_RP_overdrive_airflow()
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    local char_obj = obj_char_game_scene_char_RP
    obj["life"] = 35
    obj[1] = char_obj["x"] - char_obj[5]*(-860)
    obj[2] = char_obj["y"] - char_obj[6]*(840)
    obj[3] = char_obj["z"]
    obj[4] = 1
    obj[5] = char_obj[5]*2
    obj[6] = char_obj[6]*2
    obj[7] = char_obj[7]
    obj[8] = -1
    obj["update"] = function(self)
        local char_obj = obj_char_game_scene_char_RP
        self[1] = char_obj["x"] - char_obj[5]*(-500)
        self[2] = char_obj["y"] - char_obj[6]*(865)
        self[3] = char_obj["z"]
        self[4] = 1
        self[5] = char_obj[5]
        self[6] = char_obj[6]
        self[7] = char_obj[7]
        self[8] = self[8] + 1
    end
    obj["draw"] = function(self)
        local camera_obj = obj_stage_game_scene_camera
        local image_table = image_table_VFX_game_scene_RP_overdrive_airflow
        draw_3d_image_table(camera_obj,self,image_table)
    end
    table.insert(obj_char_game_scene_char_RP["VFX_table"],obj)
    
end

function insert_VFX_game_scene_char_RP_overdrive_partical()
    local obj = {}
    obj = {0, 0, nil, 0, 1, 1, 0, 0}
    obj["FCT"] = {0,0,0,0,0,0,0,0}
    obj["LCT"] = {0,0,0,0,0,0,0,0}
    obj["LCD"] = {0,0,0,0,0,0,0,0}
    obj["state"] = "default"
    obj["life"] = 70
    obj["partical_speed"] = 0.016*0
    obj["partical_time"] = 0
    obj[8] = -1

    obj["opacity_anim"] = {}
    obj["opacity_anim"][0] = {0.00, 1}
    obj["opacity_anim"][1] = {0.16, 2}
    obj["opacity_anim"][2] = {0.31, 4}
    obj["opacity_anim"][4] = {0.50, 6}
    obj["opacity_anim"][6] = {0.63, 10}
    obj["opacity_anim"][10] = {0.79, 15}
    obj["opacity_anim"][15] = {0.91, 20}
    obj["opacity_anim"][20] = {0.97, 25}
    obj["opacity_anim"][25] = {1.00, 28}
    obj["opacity_anim"][28] = {1.00, 30}
    obj["opacity_anim"][30] = {1.00, 40}
    obj["opacity_anim"][40] = {0.97, 50}
    obj["opacity_anim"][50] = {0.88, 60}
    obj["opacity_anim"][60] = {0.67, 63}
    obj["opacity_anim"][63] = {0.57, 65}
    obj["opacity_anim"][65] = {0.48, 67}
    obj["opacity_anim"][67] = {0.36, 69}
    obj["opacity_anim"][69] = {0.17, 70}
    obj["opacity_anim"][70] = {0.00, 70}    
    obj["opacity_anim"]["prop"] = 4
    obj["opacity_anim"]["length"] = 70
    obj["opacity_anim"]["loop"] = false
    obj["opacity_anim"]["fix_type"] = true

    obj["partical_speed_anim"] = {}
    obj["partical_speed_anim"][0] = {0.00, 28}
    obj["partical_speed_anim"][28] = {0.016*90, 29}
    obj["partical_speed_anim"][29] = {0.00, 30}
    obj["partical_speed_anim"][30] = {0.00, 70}
    obj["partical_speed_anim"][70] = {0.016*40, 70}
    obj["partical_speed_anim"]["prop"] = "partical_speed"
    obj["partical_speed_anim"]["length"] = 70
    obj["partical_speed_anim"]["loop"] = false
    obj["partical_speed_anim"]["fix_type"] = true

    obj["partical_shader"] = love.graphics.newShader("shaders/partical_shader.glsl")

    obj["update"] = function(self)
        point_linear_animator(self,self["opacity_anim"])
        point_linear_animator(self,self["partical_speed_anim"])
        self["partical_time"] = self["partical_time"] + self["partical_speed"]
    end
    obj["draw"] = function(self)
        local shader = self["partical_shader"] 
        shader:send("time", self["partical_time"])
        shader:send("opacity", self[4])
        love.graphics.setShader(shader)
        love.graphics.rectangle("fill", 0, 0, 1600, 900, draw_resolution_correction(1), draw_resolution_correction(1))
        love.graphics.setShader()
    end
    table.insert(obj_char_game_scene_char_RP["VFX_table"],obj)
end

function insert_VFX_game_scene_char_RP_overdrive_black_overlay()

end