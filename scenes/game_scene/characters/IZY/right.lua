-- RP -> RP
-- ASSET_DATA[3] -> ASSET_DATA[3]
-- "R" -> "R"
-- obj_char_game_scene_char_RP = {0, 0, 0, 1, -1, 1, 0, 0} -> obj_char_game_scene_char_RP = {0, 0, 0, 1, -1, 1, 0, 0}
-- obj_char_game_scene_char_RP["x"] = 320 -> obj_char_game_scene_char_RP["x"] = 320

function load_game_scene_obj_char_RP()
    -- x y z opacity sx sy r f
    obj_char_game_scene_char_RP = {0, 0, 0, 1, -1, 1, 0, 0} -- obj[1-8]都为图形上的数据 obj[8]为图形上的帧数
    obj_char_game_scene_char_RP["x"] = 320
    obj_char_game_scene_char_RP["y"] = 365
    obj_char_game_scene_char_RP["f"] = -1 -- obj["f"] 逻辑上的帧数
    obj_char_game_scene_char_RP["side_flag"] = "R"
    obj_char_game_scene_char_RP["contrast"] = 1
    obj_char_game_scene_char_RP["brightness"] = 0
    obj_char_game_scene_char_RP["brightness_const"] = 0
    obj_char_game_scene_char_RP["brightness_end_const"] = 0.2
    obj_char_game_scene_char_RP["FCT"] = {}
    obj_char_game_scene_char_RP["LCT"] = {}
    obj_char_game_scene_char_RP["LCD"] = {}
    obj_char_game_scene_char_RP["FCT"]["contrast"] = 0
    obj_char_game_scene_char_RP["LCT"]["contrast"] = 0
    obj_char_game_scene_char_RP["LCD"]["contrast"] = 0
    obj_char_game_scene_char_RP["FCT"]["brightness"] = 0
    obj_char_game_scene_char_RP["LCT"]["brightness"] = 0
    obj_char_game_scene_char_RP["LCD"]["brightness"] = 0


    obj_char_game_scene_char_RP["anchor_pos"] = {90,520}
    obj_char_game_scene_char_RP["velocity"] = {0,0}
    obj_char_game_scene_char_RP["state"] = "before_ease_in"
    obj_char_game_scene_char_RP["ground_state"] = "on_land"
    obj_char_game_scene_char_RP["hurt_state"] = "idle"
    obj_char_game_scene_char_RP["hurt_block_stun_animation"] = nil

    -- 越大意味着同一帧数会被分为多少份 game_speed = 10 则 速度为1/10
    -- 如果为 game_speed == 0 则暂停
    -- 当前game_speed中 记录已经运行了多少 game_speed_subframe
    -- 当game_speed_subframe == game_speed 运行一次update
    obj_char_game_scene_char_RP["game_speed"] = 1
    obj_char_game_scene_char_RP["game_speed_subframe"] = 1
    obj_char_game_scene_char_RP["game_speed_abnormal_realtime_countdown"] = 0 -- 只能是game_speed的倍数
    obj_char_game_scene_char_RP["hitstop_countdown"] = 0
    obj_char_game_scene_char_RP["blockstop_countdown"] = 0
    
    obj_char_game_scene_char_RP["gravity_correction"] = 1
    obj_char_game_scene_char_RP["damage_correction"] = 1

    obj_char_game_scene_char_RP["push_box"] = {0, -185, 130, 370}
    obj_char_game_scene_char_RP["collision_move_available"] = {1,1}
    obj_char_game_scene_char_RP["hitbox_table"] = {nil,nil,{}} --{ 攻击类型 是投还是打， function值 内部为命中后的逻辑, 具体的box形状}
    obj_char_game_scene_char_RP["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}
    obj_char_game_scene_char_RP["projectile_table"] = {}

    obj_char_game_scene_char_RP["strike_active"] = false -- 防止在同一动作的active多次触发
    obj_char_game_scene_char_RP["throw_active"] = false -- 防止在同一动作的active多次触发

    obj_char_game_scene_char_RP["strike_inv"] = false
    obj_char_game_scene_char_RP["strike_inv_countdown"] = 0
    obj_char_game_scene_char_RP["throw_inv"] = false
    obj_char_game_scene_char_RP["throw_inv_countdown"] = 0
    obj_char_game_scene_char_RP["projectile_inv"] = false
    obj_char_game_scene_char_RP["projectile_inv_countdown"] = 0
    obj_char_game_scene_char_RP["burst_inv"] = false
    obj_char_game_scene_char_RP["burst_inv_countdown"] = 0

    obj_char_game_scene_char_RP["strike_hit_function"] = function() end
    obj_char_game_scene_char_RP["throw_hit_function"] = function() end
    obj_char_game_scene_char_RP["projectile_hit_function"] = function() end
    obj_char_game_scene_char_RP["strike_hurt_function"] = function() end
    obj_char_game_scene_char_RP["throw_hurt_function"] = function() end
    obj_char_game_scene_char_RP["projectile_hurt_function"] = function() end

    obj_char_game_scene_char_RP["VFX_table"] = {}
    obj_char_game_scene_char_RP["black_overlay_table"] = {}
    obj_char_game_scene_char_RP["shadow_box_table"] = {
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
        },
        {
            {-17.38, -6.38,
            -37.88, -4.50}
            ,
            {-37.88, -4.50,
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
            38.25, 11.63}
            ,
            {38.25, 11.63,
            37.88, 5.00}
            ,
            {37.88, 5.00,
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
        }
    }
    obj_char_game_scene_char_RP["shadow_box_pos"] ={
        {44.0,517.0}
        ,{146.0,497.0}
    }

    obj_char_game_scene_char_RP["knife_state"] = "off"
    obj_char_game_scene_char_RP["knife_anchor_pos"] = {168,210}
    obj_char_game_scene_char_RP["knife_animation"] = nil
    obj_char_game_scene_char_RP["knife_8"] = 0 -- obj[knife_8]匕首图形上的帧数
    obj_char_game_scene_char_RP["knife_f"] = 0 -- obj[knife_8]匕首逻辑上的帧数

    obj_char_game_scene_char_RP["health"] = {11500, 11500, 11500, "fade_off"}
    obj_char_game_scene_char_RP["heat"] = {0.0, 200.0} -- 0.0 - 200.0
    obj_char_game_scene_char_RP["ability"] = {600.0, 600.0} -- 0.0 - 600.0
    obj_char_game_scene_char_RP["overdrive"] = {600.0, 600.0, "off"} -- 0.0 - 600.0
    obj_char_game_scene_char_RP["overdrive_timer"] = {0,0,0,0} -- 0f 00:00 
    obj_char_game_scene_char_RP["overdrive_drain_speed"] = 24
    obj_char_game_scene_char_RP["risk"] = {0.0, 300.0}-- 0.0 - 300.0
    obj_char_game_scene_char_RP["positive_bouns"] = {0.0, 600.0} -- 0.0 - 600.0

end

function order_load_game_scene_char_RP_frames(load_order)
    local PLAYER_ASSET_DATA = ASSET_DATA[3]
    local switch = 
    {
        [1] = function()
            image_sprite_sheet_table_char_game_scene_RP = {}

            image_sprite_sheet_table_char_game_scene_RP["before_ease_in"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_stand_idle.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["stand_idle_sprite_batch"])
            )

            image_sprite_sheet_table_char_game_scene_RP["stand_idle"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_stand_idle.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["stand_idle_sprite_batch"])
            )
            
            image_sprite_sheet_table_char_game_scene_RP["5P"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_5P.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["5P_sprite_batch"])
            )


            image_sprite_sheet_table_char_game_scene_RP["overdrive"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_overdrive.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["overdrive_sprite_batch"])
            )

            image_sprite_sheet_VFX_game_scene_RP_overdrive_badge = 
            sprite_sheet_load(
                "asset/game_scene/VFX/overdrive_badge/IZY_overdrive_badge.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["overdrive_badge_sprite_batch"])
            )

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
    local char_obj = obj_char_game_scene_char_RP
    -- 站姿待机动画
    anim_char_RP_stand_idle = load_game_scene_anim_char_IZY_stand_idle(char_obj)
    -- overdrive启动动画
    anim_char_RP_overdrive = load_game_scene_anim_char_IZY_overdrive(char_obj,"R")

end

function load_game_scene_shader_char_RP()
    -- no shader for now
end

function load_game_scene_audio_char_RP()

end





-- 更新和状态机
function update_game_scene_char_RP()
    state_machine_char_game_scene_char_RP()
    -- state_machine_char_game_scene_char_RP_knife()
    
end

function state_machine_char_game_scene_char_RP()
    -- 拉后最高优先级 然后是拉下 然后是拉前 然后是跳
    -- 然后是方向组合拳脚 普通拳脚 从轻到重
    -- 然后是必杀
    -- 然后是超必杀
    -- 最后是od和霸
    -- SP + 拉后 = 拉盾
    -- INPUT_SYS_COMMAND_TABLE = {
    --     "Up","Down","Left","Right",
    --     "P","S","HS","K",
    --     "SP","Launcher","Back","Start",
    --     "RC","Dash","Burst","UA"
    -- }

    -- sp + 拉前/回中 + p 扔球
    -- sp + 拉前/回中 + k 翻滚
    -- sp + 拉前/回中 + s 拔枪
    -- sp + 拉下/下前 + s 双手构/蛇刹
    -- sp + luncher 普通投

    local input = INPUT_SYS_CURRENT_COMMAND_STATE["R"]
    local obj_char = obj_char_game_scene_char_RP
    local switch = {
        ["before_ease_in"] = function()
            character_animator(obj_char,anim_char_RP_stand_idle)
        end,
        ["stand_idle"] = function()
            character_animator(obj_char,anim_char_RP_stand_idle)
            if test_input_sys_press_or_hold(input["UP"]) then
                -- to pre_jump
                
            elseif test_input_sys_press_or_hold(input["Burst"]) and obj_char["overdrive"][1] == obj_char["overdrive"][2] then
                -- to over_drive
                init_character_anim_with(obj_char,anim_char_RP_overdrive)
                obj_char["state"] = "overdrive"
                obj_char["overdrive"][3] = "on"
            end
        end,
        ["overdrive"] = function()
            character_animator(obj_char,anim_char_RP_overdrive)
            if test_input_sys_press_or_hold(input["RC"]) and obj_char["f"] < 29 then
                -- to overdrive RC
                
            elseif obj_char["f"] >= 80 then
                -- to idle
                init_character_anim_with(obj_char,anim_char_RP_stand_idle)
                obj_char[8] = 0
                obj_char["state"] = "stand_idle"
            end
        end,
    }
    update_game_scene_char_RP_overdrive()
    update_game_scene_char_RP_countdown()
    update_game_scene_char_RP_inv_state()
    local this_function = switch[obj_char["state"]]
    if this_function then this_function() end

end

function state_machine_char_game_scene_char_RP_knife()
    local obj = obj_char_game_scene_char_RP
    local switch = {
        ["off"] = function()

        end,
        ["on"] = function()

        end,
        ["steady"] = function()

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
    local camera = obj_stage_game_scene_camera
    local image_sprite_sheet = image_sprite_sheet_table_char_game_scene_RP[obj["state"]]

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

    -- draw_3d_image_table(camera,obj,character_image_table)
    image_sprite_sheet["sprite_batch"]:clear()
    draw_3d_image_sprite_batch(camera,obj,image_sprite_sheet,""..f.."")

    local shader = shader_game_scene_brightness_contrast
    shader:send("contrast", obj["contrast"])
    shader:send("brightness", obj["brightness"])
    love.graphics.setShader(shader)
    love.graphics.draw(image_sprite_sheet["sprite_batch"])
    love.graphics.setShader()

end

function draw_game_scene_char_RP_shadow()
    local obj = obj_char_game_scene_char_RP
    local shadow_box_table = obj["shadow_box_table"]
    local opacity = (obj["y"]-325)/40
    local z = obj[3]
    local sx = obj[5]
    local sy = obj[6]
    local shadow_anchor = obj_stage_game_scene_shadow_anchor
    local camera = obj_stage_game_scene_camera
    local camera_z = camera[3]

    local obj_2d_pos = draw_3d_point_to_2D(camera,obj)
    local shadow_anchor_2d_pos = draw_3d_point_to_2D(camera,shadow_anchor)
    local scale = draw_resolution_correction(800)/(z-camera_z)

    love.graphics.setColor(0, 0, 0, opacity)
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
    love.graphics.setColor(1, 1, 1, 1)
    
end

function draw_game_scene_char_RP_box()
    if not DEBUG_HITBOX_SHOWS then
        return
    end

    local char_obj = obj_char_game_scene_char_RP
    local camera = obj_stage_game_scene_camera

    -- push box
    local color = DEBUG_BOX_COLOR_YELLOW
    local push_box = {
        char_obj["x"] + (char_obj["push_box"][1] - char_obj["push_box"][3]/2)*char_obj[5],
        char_obj["y"] + char_obj["push_box"][2] - char_obj["push_box"][4]/2,
        char_obj[3],char_obj[5],1
    }
    push_box["w"] = char_obj["push_box"][3]
    push_box["h"] = char_obj["push_box"][4]
    draw_3d_color_box(camera,push_box,color)

    -- hit box
    local color = DEBUG_BOX_COLOR_RED
    for i=1,#char_obj["hitbox_table"][3] do
        local current_hit_box = char_obj["hitbox_table"][3][i]
        local draw_box = {
            char_obj["x"] + (current_hit_box[1] - current_hit_box[3]/2)*char_obj[5],
            char_obj["y"] + current_hit_box[2] - current_hit_box[4]/2,
            char_obj[3],char_obj[5],1
        }
        draw_box["w"] = current_hit_box[3]
        draw_box["h"] = current_hit_box[4]
        draw_3d_color_box(camera,draw_box,color)
    end

    -- hurt box
    local color = DEBUG_BOX_COLOR_BLUE
    for i=1,#char_obj["hurtbox_table"] do
        local current_hurt_box = char_obj["hurtbox_table"][i]
        local draw_box = {
            char_obj["x"] + (current_hurt_box[1] - current_hurt_box[3]/2)*char_obj[5],
            char_obj["y"] + current_hurt_box[2] - current_hurt_box[4]/2,
            char_obj[3],char_obj[5],1
        }
        draw_box["w"] = current_hurt_box[3]
        draw_box["h"] = current_hurt_box[4]
        draw_3d_color_box(camera,draw_box,color)
    end

end





function update_game_scene_char_RP_projectile()
    for i = #obj_char_game_scene_char_RP["projectile_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_RP["projectile_table"][i]
        object["life"] = object["life"] - 1 -- 减少寿命
        object["update"](object)
        if object["life"] <= 0 then
            table.remove(obj_char_game_scene_char_RP["projectile_table"], i) -- 寿命耗尽，从列表中移除
        end
    end
end

function draw_game_scene_char_RP_projectile()
    for i = #obj_char_game_scene_char_RP["projectile_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_RP["projectile_table"][i]
        object["draw"](object)
    end
end

function update_game_scene_char_RP_VFX()
    for i = #obj_char_game_scene_char_RP["VFX_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_RP["VFX_table"][i]
        object["life"] = object["life"] - 1 -- 减少寿命
        object["update"](object)
        if object["life"] <= 0 then
            table.remove(obj_char_game_scene_char_RP["VFX_table"], i) -- 寿命耗尽，从列表中移除
        end
    end
end

function draw_game_scene_char_RP_VFX()
    for i = #obj_char_game_scene_char_RP["VFX_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_RP["VFX_table"][i]
        object["draw"](object)
    end
end

function update_game_scene_char_RP_black_overlay()
    for i = #obj_char_game_scene_char_RP["black_overlay_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_RP["black_overlay_table"][i]
        object["life"] = object["life"] - 1 -- 减少寿命
        object["update"](object)
        if object["life"] <= 0 then
            table.remove(obj_char_game_scene_char_RP["black_overlay_table"], i) -- 寿命耗尽，从列表中移除
        end
    end
end

function draw_game_scene_char_RP_black_overlay()
    for i = #obj_char_game_scene_char_RP["black_overlay_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_RP["black_overlay_table"][i]
        object["draw"](object)
    end
end





function update_game_scene_char_RP_overdrive()
    local char_obj = obj_char_game_scene_char_RP
    if char_obj["state"] ~= "overdrive" and 
    char_obj["overdrive_timer"][1] + char_obj["overdrive_timer"][2] +
    char_obj["overdrive_timer"][3] + char_obj["overdrive_timer"][4] ~= 0
    then
        if char_obj["overdrive_timer"][4] == 0 and char_obj["overdrive_timer"][3] ~= 0 then 
            char_obj["overdrive_timer"][3] = char_obj["overdrive_timer"][3] - 1
            char_obj["overdrive_timer"][4] = 9
        elseif char_obj["overdrive_timer"][4] > 0 then
            char_obj["overdrive_timer"][4] = char_obj["overdrive_timer"][4] - 1
        end
        if char_obj["overdrive_timer"][3] == 0 and char_obj["overdrive_timer"][2] ~= 0 then 
            char_obj["overdrive_timer"][2] = char_obj["overdrive_timer"][2] - 1
            char_obj["overdrive_timer"][3] = 5
        end
        if char_obj["overdrive_timer"][2] < 0 and char_obj["overdrive_timer"][1] ~= 0 then 
            char_obj["overdrive_timer"][1] = char_obj["overdrive_timer"][1] - 1
            char_obj["overdrive_timer"][2] = 9
        end
    elseif char_obj["state"] ~= "overdrive" then
        char_obj["overdrive"][3] = "off"
    end
end

function update_game_scene_char_RP_x_y()
    local obj = obj_char_game_scene_char_RP
    obj["x"] = obj["x"] + obj["velocity"][1]
    obj["y"] = obj["y"] + obj["velocity"][2]
end

function update_game_scene_char_RP_countdown()
    local obj_char = obj_char_game_scene_char_RP
    if obj_char["strike_inv"] then
        obj_char["strike_inv_countdown"] = obj_char["strike_inv_countdown"] - 1
    end
    if obj_char["throw_inv"] then
        obj_char["throw_inv_countdown"] = obj_char["throw_inv_countdown"] - 1
    end
    if obj_char["projectile_inv"] then
        obj_char["projectile_inv_countdown"] = obj_char["projectile_inv_countdown"] - 1
    end
    if obj_char["burst_inv"] then
        obj_char["burst_inv_countdown"] = obj_char["burst_inv_countdown"] - 1
    end
end

function update_game_scene_char_RP_inv_state()
    local obj_char = obj_char_game_scene_char_RP
    if obj_char["strike_inv_countdown"] < 0 then
        obj_char["strike_inv"] = false
        obj_char["strike_inv_countdown"] = 0
    end
    if obj_char["throw_inv_countdown"] < 0 then
        obj_char["throw_inv"] = false
        obj_char["throw_inv_countdown"] = 0
    end
    if obj_char["projectile_inv_countdown"] < 0 then
        obj_char["projectile_inv"] = false
        obj_char["projectile_inv_countdown"] = 0
    end
    if obj_char["burst_inv_countdown"] < 0 then
        obj_char["burst_inv"] = false
        obj_char["burst_inv_countdown"] = 0
    end
end