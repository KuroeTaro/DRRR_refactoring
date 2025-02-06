function load_game_scene_char_obj_RP()
    -- x y z opacity sx sy r f
    obj_char_game_scene_char_RP = {0, 0, 0, 1, -1, 1, 0, 0} -- obj[1-8]都为图形上的数据 obj[8]为图形上的帧数
    obj_char_game_scene_char_RP["x"] = 325
    obj_char_game_scene_char_RP["y"] = 365
    obj_char_game_scene_char_RP["f"] = 0 -- obj["f"] 逻辑上的帧数
    obj_char_game_scene_char_RP["graphic_pos"] = {140,550}
    obj_char_game_scene_char_RP["velocity"] = {0,0}
    obj_char_game_scene_char_RP["state"] = "stand_idle"
    obj_char_game_scene_char_RP["character_animation_timer"] = 0
    obj_char_game_scene_char_RP["hitbox_list"] = {}
    obj_char_game_scene_char_RP["hurtbox_list"] = {}
    obj_char_game_scene_char_RP["throw_hitbox_list"] = {}

    obj_char_game_scene_char_RP["knife_state"] = "off"
    obj_char_game_scene_char_RP["knife_graphic_pos"] = {0,0}
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
                image_table_char_game_scene_RP["stand_idle"][i] = love.graphics.newImage(ASSET_DATA[1]["stand_idle"][i+1])
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

function load_game_scene_char_anim_RP()
    -- 站姿待机动画
    anim_char_stand_idle_RP = {}
    anim_char_stand_idle_RP[0] = function() 
        obj_char_game_scene_char_RP[8] = 0
        obj_char_game_scene_char_RP["knife_limb_pos"] = {0,0}
    end
    for i = 1,16 do
        anim_char_stand_idle_RP[i*7] = function()
            obj_char_game_scene_char_RP[8] = i
        end
    end
    anim_char_stand_idle_RP[17*7] = function()
        obj_char_game_scene_char_RP["f"] = 0
        obj_char_game_scene_char_RP[8] = 0
        obj_char_game_scene_char_RP["knife_limb_pos"] = {0,0}
    end

end

function load_game_scene_char_shader_RP()

end



function update_game_scene_char_RP()
    state_machine_char_game_scene_char_RP()
    -- state_machine_char_game_scene_char_RP_knife()
    
end



function state_machine_char_game_scene_char_RP()
    local obj = obj_char_game_scene_char_RP
    local switch = {
        ["stand_idle"] = function()
            character_animator(obj_char_game_scene_char_RP,anim_char_stand_idle_RP)
            if INPUT_SYS_CURRENT_COMMAND_STATE[1]["D"] == "Pressing" then

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
    local cam = obj_stage_game_scene_camera

    local x = obj[1]
    local y = obj[2]
    local z = obj[3]
    local opacity = obj[4]
    local sx = obj[5]
    local sy = obj[6]
    local r = obj[7]
    local f = obj[8]

    obj[1] = obj["x"]-sx*obj["graphic_pos"][1]
    obj[2] = obj["y"]-sy*obj["graphic_pos"][2]

    if knife_state == "on" then
        local knife_8 = obj["knife_8"]
        local knife_f = obj["knife_f"]
        local knife_state = obj["knife_state"]
    
        local knife = {
            x+sx*obj["knife_graphic_pos"][1], 
            y+sy, 
            z, 
            opacity, 
            sx, 
            sy, 
            r, 
            knife_8
        }

        local knife_image_table = image_table_char_game_scene_RP_knife[obj["state"]]
        draw_3d_image_table(cam,knife,knife_image_table)

    end

    draw_3d_image_table(cam,obj,character_image_table)

end



function insert_created_object_game_scene_char_RP(object_name)

end

function insert_VFX_object_game_scene_char_RP(VFX_name)

end