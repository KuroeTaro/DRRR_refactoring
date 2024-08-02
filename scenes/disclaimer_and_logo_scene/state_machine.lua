-- state machine 只在持续更新同一个object时使用
-- 格式参考input state machine


-- 控制 disclaimer and logo scene 唯一一个 obj 更新的状态机
function UI_disclaimer_and_logo_scene_mid_obj_state_machine(obj)
    local switch = {

        -- flash_in 之前的状态 如果达到第10帧则为下一个动画的第0帧 
        ["pre_disclaimer_flash_in"] = function() 
            print(SCENE_TIMER,obj["LCT"][prop],obj[4])
            -- 如果按D或者scene timer 到达10f则进入flash_in
            if SCENE_TIMER >= 10 or command_state[1]["D"] == "Pressing" then
                init_point_liner_anim_with(obj,anim_disclaimer_and_logo_scene_general_flash_in)
                obj["state"] = "disclaimer_flash_in"
                SCENE_TIMER = 0
            end
        end,
        ["disclaimer_flash_in"] = function() 
            local anim = anim_disclaimer_and_logo_scene_general_flash_in
            local prop = anim_disclaimer_and_logo_scene_general_flash_in["prop"]
            point_liner_animator(obj,anim)
            print(SCENE_TIMER,obj["LCT"][prop],obj[4])
            if get_point_linear_anim_end_state(obj,anim) then
                obj["state"] = "disclaimer_update"
                SCENE_TIMER = 0
            end
            if command_state[1]["D"] == "Pressing" then
                obj[4] = 1
                init_point_liner_anim_with(obj,anim_disclaimer_and_logo_scene_general_flash_out)
                obj["state"] = "disclaimer_flash_out"
                SCENE_TIMER = 0
            end
        end,
        ["disclaimer_update"] = function() 
            print(SCENE_TIMER,obj["LCT"][prop],obj[4])
            if SCENE_TIMER >= 120 or command_state[1]["D"] == "Pressing" then
                obj[4] = 1
                init_point_liner_anim_with(obj,anim_disclaimer_and_logo_scene_general_flash_out)
                obj["state"] = "disclaimer_flash_out"
                SCENE_TIMER = 0
            end
        end,
        ["disclaimer_flash_out"] = function() 
            local anim = anim_disclaimer_and_logo_scene_general_flash_out
            local prop = anim_disclaimer_and_logo_scene_general_flash_out["prop"]
            point_liner_animator(obj,anim)
            print(SCENE_TIMER,obj["LCT"][prop],obj[4])
            if get_point_linear_anim_end_state(obj,anim) or command_state[1]["D"] == "Pressing" then
                obj[1] = 620
                obj[2] = 255
                obj[4] = 0
                obj[8] = 1
                init_point_liner_anim_with(obj,anim_disclaimer_and_logo_scene_general_flash_in)
                obj["state"] = "kuroe_taro_s_handicraft_logo_flash_in"
                SCENE_TIMER = 0
            end
        end,
        ["kuroe_taro_s_handicraft_logo_flash_in"] = function() 
            local anim = anim_disclaimer_and_logo_scene_general_flash_in
            local prop = anim_disclaimer_and_logo_scene_general_flash_in["prop"]
            point_liner_animator(obj,anim)
            print(SCENE_TIMER,obj["LCT"][prop],obj[4])
            if get_point_linear_anim_end_state(obj,anim) then
                obj["state"] = "kuroe_taro_s_handicraft_logo_update"
                SCENE_TIMER = 0
            end
            if command_state[1]["D"] == "Pressing" then
                obj[4] = 1
                init_point_liner_anim_with(obj,anim_disclaimer_and_logo_scene_general_flash_out)
                obj["state"] = "kuroe_taro_s_handicraft_logo_flash_out"
                SCENE_TIMER = 0
            end
        end,
        ["kuroe_taro_s_handicraft_logo_update"] = function() 
            print(SCENE_TIMER,obj["LCT"][prop],obj[4])
            if SCENE_TIMER >= 120 or command_state[1]["D"] == "Pressing" then
                obj[4] = 1
                init_point_liner_anim_with(obj,anim_disclaimer_and_logo_scene_general_flash_out)
                obj["state"] = "kuroe_taro_s_handicraft_logo_flash_out"
                SCENE_TIMER = 0
            end
        end,
        ["kuroe_taro_s_handicraft_logo_flash_out"] = function() 
            local anim = anim_disclaimer_and_logo_scene_general_flash_out
            local prop = anim_disclaimer_and_logo_scene_general_flash_out["prop"]
            point_liner_animator(obj,anim)
            print(SCENE_TIMER,obj["LCT"][prop],obj[4])
            if get_point_linear_anim_end_state(obj,anim) or command_state[1]["D"] == "Pressing" then
                obj[4] = 0
                obj[8] = 2
                init_point_liner_anim_with(obj,anim_disclaimer_and_logo_scene_general_flash_in)
                obj["state"] = "love_logo_flash_in"
                SCENE_TIMER = 0
            end
        end,
        ["love_logo_flash_in"] = function() 
            local anim = anim_disclaimer_and_logo_scene_general_flash_in
            local prop = anim_disclaimer_and_logo_scene_general_flash_in["prop"]
            point_liner_animator(obj,anim)
            print(SCENE_TIMER,obj["LCT"][prop],obj[4])
            if get_point_linear_anim_end_state(obj,anim) then
                obj["state"] = "love_logo_update"
                SCENE_TIMER = 0
            end
            if command_state[1]["D"] == "Pressing" then
                obj[4] = 1
                init_point_liner_anim_with(obj,anim_disclaimer_and_logo_scene_general_flash_out)
                obj["state"] = "love_logo_update"
                SCENE_TIMER = 0
            end
        end,
        ["love_logo_update"] = function() 
            print(SCENE_TIMER,obj["LCT"][prop],obj[4])
            if SCENE_TIMER >= 120 or command_state[1]["D"] == "Pressing" then
                obj[4] = 1
                init_point_liner_anim_with(obj,anim_disclaimer_and_logo_scene_general_flash_out)
                obj["state"] = "love_logo_flash_out"
                SCENE_TIMER = 0
            end
        end,
        ["love_logo_flash_out"] = function() 
            local anim = anim_disclaimer_and_logo_scene_general_flash_out
            local prop = anim_disclaimer_and_logo_scene_general_flash_out["prop"]
            point_liner_animator(obj,anim)
            print(SCENE_TIMER,obj["LCT"][prop],obj[4])
            if get_point_linear_anim_end_state(obj,anim) or command_state[1]["D"] == "Pressing" then
                obj[4] = 0
                obj[8] = 2
                obj["state"] = "end"
                SCENE_TIMER = 0
            end
        end,
        ["end"] = function() 

        end,
    }
    local this_function = switch[obj["state"]]
    if this_function then this_function() end
end