-- state machine 只在持续更新同一个object时使用
-- 格式参考input state machine

function state_machine_UI_start_scene_noise_BG_static_loop(obj)
    local speed = 4
    obj["FCT"][8] = obj["FCT"][8] + 1
    if obj["FCT"][8] > speed then
        obj[8] = obj[8] + 1
        obj["FCT"][8] = 0
    end
    if obj[8] > 49 then
        obj[8] = 0
    end
end

function state_machine_UI_start_scene_config_controller(obj,input_id)
    local local_switch = {
        -- flash_in 之前的状态 如果达到第10帧则为下一个动画的第0帧 
        ["off_state"] = function() 
            local local_flash_in_anim = anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
            -- 如果按D或者scene timer 到达10f则进入flash_in
            if INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Pressing" or INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Holding" then
                -- 设置flash in 动画
                obj[4] = 0.5
                init_point_linear_anim_with(obj,local_flash_in_anim)
                obj["state"] = "flash_in"
            end
        end,
        ["flash_in"] = function() 
            local local_flash_in_anim = anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
            local local_flash_out_anim = anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
            point_linear_animator(obj,local_flash_in_anim)
            if INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Releasing" or INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Released" then
                -- 设置flash out 动画
                obj[4] = 1
                init_point_linear_anim_with(obj,local_flash_out_anim)
                obj["state"] = "flash_out"
            elseif get_point_linear_anim_end_state(obj,local_flash_in_anim) then
                obj[4] = 1
                obj["state"] = "on_state"
            end
        end,
        ["on_state"] = function() 
            local local_flash_out_anim = anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
            if INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Releasing" or INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Released" then
                -- 设置flash out 动画
                obj[4] = 1
                init_point_linear_anim_with(obj,local_flash_out_anim)
                obj["state"] = "flash_out"
            end

        end,
        ["flash_out"] = function() 
            local local_flash_in_anim = anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
            local local_flash_out_anim = anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
            point_linear_animator(obj,local_flash_out_anim)
            if INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Pressing" or INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Holding" then
                -- 设置flash out 动画
                obj[4] = 0.5
                init_point_linear_anim_with(obj,local_flash_in_anim)
                obj["state"] = "flash_in"
            elseif get_point_linear_anim_end_state(obj,local_flash_out_anim) then
                obj[4] = 0.5
                obj["state"] = "off_state"
            end
        end,
    }
    local this_function = local_switch[obj["state"]]
    if this_function then this_function() end
end