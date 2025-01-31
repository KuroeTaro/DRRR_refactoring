function load_game_scene_char_obj_LP()
    -- x y z opacity sx sy r f
    obj_char_game_scene_char_LP = {-325, 120, 0, -1, 1, 1, 0, 0}
    obj_char_game_scene_char_LP["width"] = 400
    obj_char_game_scene_char_LP["height"] = 500
    obj_char_game_scene_char_LP["velocity"] = {0,0}
    obj_char_game_scene_char_LP["state"] = "stand_idle"
    obj_char_game_scene_char_LP["character_animation_timer"] = 0
    obj_char_game_scene_char_LP["hitbox_list"] = {}
    obj_char_game_scene_char_LP["hurtbox_list"] = {}
    obj_char_game_scene_char_LP["throw_hitbox_list"] = {}

    -- obj_char_game_scene_char_LP["knife_state"] = "off"
    -- obj_char_game_scene_char_LP["knife_limb_pos"] = {0,0}
    -- obj_char_game_scene_char_LP["knife_limb_width"] = 0
    -- obj_char_game_scene_char_LP["knife_limb_height"] = 0
    -- obj_char_game_scene_char_LP["knife_animation_timer"] = 0
    -- obj_char_game_scene_char_LP["knife_f"] = 0

end

function order_load_game_scene_char_LP_idle_frames(load_order)
    local local_switch = 
    {
        [1] = function()
            image_table_char_game_scene_LP = {}
            image_table_char_game_scene_LP["stand_idle"] = {}
            for i = 0,16 do
                image_table_char_game_scene_LP["stand_idle"][i] = love.graphics.newImage(ASSET_DATA_TABLE[1]["LP"]["stand_idle"][i])
            end
        end,
    }
    local this_function = local_switch[load_order]
    if this_function then this_function() end

    -- image_table_char_game_scene_LP_knife = {}
    -- image_table_char_game_scene_LP_knife["stand_idle_hold"] = {}
    -- image_table_char_game_scene_LP_knife["stand_idle_shoot"] = {}
    -- for i = 0,3 do
    --     image_table_char_game_scene_LP_knife["stand_idle_hold"][i] = love.graphics.newImage(ASSET_DATA_TABLE[1]["LP_KNIFE"]["stand_idle_hold"][i])
    -- end
    -- for i = 0,9 do
    --     image_table_char_game_scene_LP_knife["stand_idle_shoot"][i] = love.graphics.newImage(ASSET_DATA_TABLE[1]["LP_KNIFE"]["stand_idle_shoot"][i])
    -- end

end

function load_game_scene_char_anim_LP()
    anim_character_stand_idle_LP = {}
    anim_character_stand_idle_LP["length"] = 119
    anim_character_stand_idle_LP["loop"] = false
    anim_character_stand_idle_LP[0] = function() 
        obj_char_game_scene_char_LP[8] = 0
        obj_char_game_scene_char_LP["knife_limb_pos"] = {0,0}
    end
    for i = 1,16 do
        anim_character_stand_idle_LP[i*7] = function()
            common_game_scene_frame_adder(obj_char_game_scene_char_LP)
            obj_char_game_scene_char_LP["knife_limb_pos"] = {0,0}
        end
    end

end

function load_game_scene_char_shader_LP()

end



function update_game_scene_char_LP()
    state_machine_char_game_scene_char_LP()
    -- state_machine_char_game_scene_char_LP_knife()
    
end



function state_machine_char_game_scene_char_LP()
    local obj = obj_char_game_scene_char_LP
    local local_switch = {
        ["stand_idle"] = function()
            character_animator(obj_char_game_scene_char_LP,anim_character_stand_idle_LP)
            if INPUT_SYS_CURRENT_COMMAND_STATE[1]["D"] == "Pressing" then

            end
        end,
    }
    local this_function = local_switch[obj["state"]]
    if this_function then this_function() end

end

function state_machine_char_game_scene_char_LP_knife()
    local obj = obj_char_game_scene_char_LP
    local local_switch = {
        ["off"] = function()

        end,
    }
    local this_function = local_switch[obj["knife_state"]]
    if this_function then this_function() end

end



function draw_game_scene_char_LP()
    local obj = obj_char_game_scene_char_LP
    local character_image_table = image_table_char_game_scene_LP[obj["state"]]
    local knife_image_table = image_table_char_game_scene_LP_knife[obj["state"]]
    local local_cam = obj_stage_game_scene_camera

    local x = obj[1]
    local y = obj[2]
    local z = obj[3]
    local w = obj["width"]
    local h = obj["height"]
    local sx = obj[5]
    local f = obj[8]

    local knife_state = obj["knife_state"]
    local knife_limb_x = sx * obj["knife_limb_pos"][1] + x
    local knife_limb_y = obj["knife_limb_pos"][2] + y
    local knife_limb_w = obj["knife_limb_width"]
    local knife_limb_h = obj["knife_limb_height"]

    local scale = 800/(z-local_cam[3])

    if knife_state == "on" then
        if sx == 1 then
            local knife_cood_res = {
                scale*(knife_limb_x-local_cam[1])+800-scale/2*(knife_limb_w), 
                scale*(knife_limb_y-local_cam[2])+450-scale/2*(knife_limb_h)
            }
            love.graphics.draw(knife_image_table[f],knife_cood_res[1],knife_cood_res[2],0,scale,scale)

        else
            local knife_cood_res = {
                scale*(knife_limb_x-local_cam[1]+knife_limb_w)+800-scale/2*(knife_limb_w), 
                scale*(knife_limb_y-local_cam[2])+450-scale/2*(knife_limb_h)
            }
            love.graphics.draw(knife_image_table[f],knife_cood_res[1],knife_cood_res[2],0,-scale,scale)

        end
    end

    if sx == 1 then
        local character_cood_res = {
            scale*(x-local_cam[1])+800-scale/2*(w), 
            scale*(y-local_cam[2])+450-scale/2*(h)
        }
        love.graphics.draw(character_image_table[f],character_cood_res[1],character_cood_res[2],0,scale,scale)

    else
        local character_cood_res = {
            scale*(x-local_cam[1]+w)+800-scale/2*(w), 
            scale*(y-local_cam[2])+450-scale/2*(h)
        }
        love.graphics.draw(character_image_table[f],character_cood_res[1],character_cood_res[2],0,-scale,scale)

    end

    -- if knife_state == "off" then
    --     if sx == 1 then
    --         local character_cood_res = {
    --             scale*(x-local_cam[1])+800-scale/2*(w), 
    --             scale*(y-local_cam[2])+450-scale/2*(h)
    --         }
    --         love.graphics.draw(character_image_table[f],character_cood_res[1],character_cood_res[2],0,scale,scale)

    --     else
    --         local character_cood_res = {
    --             scale*(x-local_cam[1]+w)+800-scale/2*(w), 
    --             scale*(y-local_cam[2])+450-scale/2*(h)
    --         }
    --         love.graphics.draw(character_image_table[f],character_cood_res[1],character_cood_res[2],0,-scale,scale)

    --     end

    -- else
    --     if sx == 1 then
    --         local knife_cood_res = {
    --             scale*(knife_limb_x-local_cam[1])+800-scale/2*(knife_limb_w), 
    --             scale*(knife_limb_y-local_cam[2])+450-scale/2*(knife_limb_h)
    --         }
    --         love.graphics.draw(knife_image_table[f],knife_cood_res[1],knife_cood_res[2],0,scale,scale)

    --         local character_cood_res = {
    --             scale*(x-local_cam[1])+800-scale/2*(w), 
    --             scale*(y-local_cam[2])+450-scale/2*(h)
    --         }
    --         love.graphics.draw(character_image_table[f],character_cood_res[1],character_cood_res[2],0,scale,scale)

    --     else
    --         local knife_cood_res = {
    --             scale*(knife_limb_x-local_cam[1]+knife_limb_w)+800-scale/2*(knife_limb_w), 
    --             scale*(knife_limb_y-local_cam[2])+450-scale/2*(knife_limb_h)
    --         }
    --         love.graphics.draw(knife_image_table[f],knife_cood_res[1],knife_cood_res[2],0,-scale,scale)

    --         local character_cood_res = {
    --             scale*(x-local_cam[1]+w)+800-scale/2*(w), 
    --             scale*(y-local_cam[2])+450-scale/2*(h)
    --         }
    --         love.graphics.draw(character_image_table[f],character_cood_res[1],character_cood_res[2],0,-scale,scale)

    --     end
    -- end
end



function insert_created_object_game_scene_char_LP(object_name)

end

function insert_VFX_object_game_scene_char_LP(VFX_name)

end