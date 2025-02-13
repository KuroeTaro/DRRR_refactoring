function load_game_scene_obj_char_RP()
    -- x y z opacity sx sy r f
    obj_char_game_scene_char_RP = {0, 0, 0, 1, 1, 1, 0, 0} -- obj[1-8]都为图形上的数据 obj[8]为图形上的帧数
    obj_char_game_scene_char_RP["x"] = -320
    obj_char_game_scene_char_RP["y"] = 365
    obj_char_game_scene_char_RP["f"] = 0 -- obj["f"] 逻辑上的帧数
    obj_char_game_scene_char_RP["anchor_pos"] = {150,550}
    obj_char_game_scene_char_RP["velocity"] = {0,0}
    obj_char_game_scene_char_RP["state"] = "stand_idle"
    obj_char_game_scene_char_RP["character_animation_timer"] = 0
    obj_char_game_scene_char_RP["hitbox_list"] = {}
    obj_char_game_scene_char_RP["hurtbox_list"] = {}

    obj_char_game_scene_char_RP["projectile_list"] = {}

    obj_char_game_scene_char_RP["knife_state"] = "off"
    obj_char_game_scene_char_RP["knife_anchor_pos"] = {168,210}
    obj_char_game_scene_char_RP["knife_8"] = 0 -- obj[knife_8]匕首图形上的帧数
    obj_char_game_scene_char_RP["knife_f"] = 0 -- obj[knife_8]匕首逻辑上的帧数

end

function order_load_game_scene_char_RP_frames(load_order)
    local switch = 
    {
        [1] = function()
            image_table_char_game_scene_RP = {}
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



function state_machine_char_game_scene_char_RP()
    local obj = obj_char_game_scene_char_RP
    local switch = {
        ["stand_idle"] = function()
            character_animator(obj,anim_char_stand_idle_RP)
            if INPUT_SYS_CURRENT_COMMAND_STATE[2]["D"] == "Pressing" then

            end
        end,
    }
    local this_function = switch[obj["state"]]
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



function draw_game_scene_char_RP()
    local obj = obj_char_game_scene_char_RP
    local character_image_table = image_table_char_game_scene_RP[obj["state"]]
    local camera = obj_stage_game_scene_camera

    obj[1] = obj["x"]-obj[5]*obj["anchor_pos"][1]
    obj[2] = obj["y"]-obj[6]*obj["anchor_pos"][2]

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

        local knife_image_table = image_table_char_game_scene_RP_knife[obj["state"]]
        draw_3d_image_table(camera,knife,knife_image_table)


    end

    draw_3d_image_table(camera,obj,character_image_table)

end



function insert_projectile_game_scene_char_RP(object_name)

end

function insert_VFX_game_scene_char_RP(VFX_name)

end