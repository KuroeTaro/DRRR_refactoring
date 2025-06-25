function update_game_scene_main_training()
    local update_flow_controller = obj_update_flow_controller_game_scene_common
    local switch = {
        -- ease_in 之前的状态 如果达到第10帧则为下一个动画的第0帧 
        ["before_ease_in"] = function()
            SCENE_TIMER = SCENE_TIMER + 1

            -- 状态出口
            if SCENE_TIMER >= 5 then
                SCENE_TIMER = 0
                init_point_linear_anim_with(
                    obj_UI_game_scene_black_solid,
                    anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0
                )
                if TRAINING_MODE_CONFIG["announcer"] == false then
                    update_flow_controller["state"] = "black_solid_ease_in"
                    common_game_scene_toggle_dynamic_HUD(1)

                else
                    update_flow_controller["state"] = "annoucer_ease_in_1"
                    common_game_scene_toggle_ease_in(1)
                    play_obj_audio(audio_SFX_game_scene_annoucer_ease_in)

                end

            end
        end,
        ["black_solid_ease_in"] = function()
            SCENE_TIMER = SCENE_TIMER + 1
            update_game_scene_char()
            
            point_linear_animator(
                obj_UI_game_scene_black_solid,
                anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0
            )

            -- 状态出口
            if SCENE_TIMER >= 5 
            and get_point_linear_anim_end_state(
                obj_UI_game_scene_black_solid,
                anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0
            )
            then
                SCENE_TIMER = 0
                update_flow_controller["state"] = "main"
                obj_char_game_scene_char_LP["state"] = "stand_idle"
                obj_char_game_scene_char_RP["state"] = "stand_idle"
            end
        end,
        ["annoucer_ease_in_1"] = function()
            SCENE_TIMER = SCENE_TIMER + 1
            update_game_scene_char()

            if SCENE_TIMER <= 5 then
                point_linear_animator(
                    obj_UI_game_scene_black_solid,
                    anim_UI_point_linear_game_scene_solid_ease_out_opacity_1_0
                )
                state_machine_automatic_player_game_scene(obj_annoucer_game_scene_act_common,105)

            elseif SCENE_TIMER <= 30 then
                state_machine_automatic_player_game_scene(obj_annoucer_game_scene_act_common,105)

            elseif SCENE_TIMER < 105 then
                state_machine_automatic_player_game_scene(obj_annoucer_game_scene_act_common,105)
                state_machine_automatic_player_game_scene(obj_annoucer_game_scene_act_num,75)

            elseif SCENE_TIMER == 105 then
                obj_annoucer_game_scene_act_common[4] = 0
                obj_annoucer_game_scene_act_num[4] = 0
                obj_HUD_game_scene_timer[4] = 0
                init_point_linear_anim_with(
                    obj_HUD_game_scene_timer,
                    anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1
                )

            elseif SCENE_TIMER <= 115 then
                -- do nothing
            elseif SCENE_TIMER < 135 then
                state_machine_automatic_player_game_scene(obj_HUD_game_scene_ease_in,50)
                point_linear_animator(
                    obj_HUD_game_scene_timer,
                    anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1
                )

            elseif SCENE_TIMER < 165 then
                state_machine_automatic_player_game_scene(obj_HUD_game_scene_ease_in,50)
                state_machine_automatic_player_game_scene(obj_annoucer_game_scene_lets_dance,40)
            
            elseif SCENE_TIMER == 165 then
                state_machine_automatic_player_game_scene(obj_annoucer_game_scene_lets_dance,40)

            elseif SCENE_TIMER < 175 then
                state_machine_automatic_player_game_scene(obj_annoucer_game_scene_lets_dance,40)

            elseif SCENE_TIMER == 175 then
                obj_annoucer_game_scene_lets_dance[4] = 0
                -- input_sys save
                obj_char_game_scene_char_LP["input_sys_state"] = "save"
                init_input_sys_cache(obj_char_game_scene_char_LP)
                obj_char_game_scene_char_RP["input_sys_state"] = "save"
                init_input_sys_cache(obj_char_game_scene_char_RP)

            elseif SCENE_TIMER < 180 then
                -- do nothing
            elseif SCENE_TIMER == 180 then
                SCENE_TIMER = 0
                -- 改变char_LP RP的状态到可运行
                obj_char_game_scene_char_LP["state"] = "stand_idle"
                obj_char_game_scene_char_RP["state"] = "stand_idle"
                update_flow_controller["state"] = "main"

                common_game_scene_toggle_dynamic_HUD(1)
                common_game_scene_toggle_ease_in(0)
                
            end

        end,
        ["main"] = function()
            -- 获得输入 更新角色 状态 速度 和 碰撞盒
            -- 更新VFX
            -- loop * 16
                -- 角色更新位置 1/16
                -- 飞行道具更新位置 1/16
                -- 检测pushbox 更新Y位置
                -- 检测pushbox 更新X位置 static_relocate_x
                -- 检测pushbox 更新X位置 dynamic_relocate_x
                -- 检测打击受击盒 
                    -- 如果命中 更新角色 状态 速度 和 碰撞盒 跳出loop
            -- 检测pushbox 更新Y位置
            -- 检测pushbox 更新X位置 static_relocate_x
            -- 检测pushbox 更新X位置 dynamic_relocate_x

            -- 删除已经命中的飞行道具

                -- 取整角色位置
            -- 取整飞行道具位置

            -- 更新HUD
            -- 更新场景

            if SCENE_TIMER == 0 then
                obj_char_game_scene_char_LP["input_sys_state"] = "load"
                obj_char_game_scene_char_RP["input_sys_state"] = "load"
            end

            SCENE_TIMER = SCENE_TIMER + 1
            local char_LP = obj_char_game_scene_char_LP
            local char_RP = obj_char_game_scene_char_RP

            -- 获得输入 更新角色 状态 速度 和 碰撞盒
            -- 会被game_speed限制
            state_machine_char_game_scene_char_LP_input_sys_cache()
            state_machine_char_game_scene_char_RP_input_sys_cache()
            update_game_scene_char()

            local char_LP_velocity = char_LP["velocity"]
            local char_RP_velocity = char_RP["velocity"]

            -- 进行push box hit box hurt box的检测
            for i = 1,16 do
                -- 更新角色和飞行道具位置
                if char_LP["game_speed"] ~= 0 then
                    -- 角色更新位置 1/10
                    char_LP["x"] = char_LP["x"] + char_LP_velocity[1]/(16* char_LP["game_speed"])
                    char_LP["y"] = char_LP["y"] + char_LP_velocity[2]/(16* char_LP["game_speed"])

                    -- 飞行道具更新位置 1/10
                    for i = 1,#char_LP["projectile_table"] do
                        local current_projectile = char_LP["projectile_table"][i]
                        current_projectile["x"] = current_projectile["x"] + current_projectile["velocity"][1]/(16* char_LP["game_speed"])
                        current_projectile["y"] = current_projectile["y"] + current_projectile["velocity"][2]/(16* char_LP["game_speed"])
                    end
                end
                if char_RP["game_speed"] ~= 0 then
                    -- 角色更新位置 1/10
                    char_RP["x"] = char_RP["x"] + char_RP_velocity[1]/(16* char_RP["game_speed"])
                    char_RP["y"] = char_RP["y"] + char_RP_velocity[2]/(16* char_RP["game_speed"])

                    -- 飞行道具更新位置 1/10
                    for i = 1,#char_RP["projectile_table"] do
                        local current_projectile = char_LP["projectile_table"][i]
                        current_projectile["x"] = current_projectile["x"] + current_projectile["velocity"][1]/(16*char_RP["game_speed"])
                        current_projectile["y"] = current_projectile["y"] + current_projectile["velocity"][2]/(16*char_RP["game_speed"])
                    end
                end

                -- 检测pushbox 更新Y位置
                pushbox_relocate_y(char_LP)
                pushbox_relocate_y(char_RP)

                -- 检测pushbox 更新X位置 static_relocate_x
                pushbox_stage_relocate_x(char_LP)
                pushbox_stage_relocate_x(char_RP)
                pushbox_state_relocate_in_character_x(char_LP,char_RP)

                -- 检测pushbox 更新X位置 dynamic_relocate_x
                pushbox_dynamic_normal_aabb_relocate_x(char_LP,char_RP)


                -- 打击受击检测
                -- 检测投受击盒交互
                local LP_hurt_throw_accur = throw_hurtbox_test(char_RP,char_LP) -- (obj_hit,obj_hurt)
                local RP_hurt_throw_accur = throw_hurtbox_test(char_LP,char_RP)

                -- 检测打击受击盒交互
                if LP_hurt_throw_accur then
                    char_RP["hit_function"](char_RP) -- RP更新主动攻击状态
                end
                if RP_hurt_throw_accur then
                    char_LP["hit_function"](char_LP) -- LP更新主动攻击状态
                end
                if LP_hurt_throw_accur then
                    char_RP["hurt_function"](char_LP) -- RP更新被攻击状态
                end
                if RP_hurt_throw_accur then
                    char_LP["hurt_function"](char_RP) -- LP更新被攻击状态
                end

                -- 检测飞行道具人物打击盒交互
                for i = 1,#char_RP["projectile_table"] do
                    local current_projectile = char_RP["projectile_table"][i]
                    if strike_hurtbox_test(char_LP,current_projectile) then
                        char_LP["hit_function"](char_LP)
                        current_projectile["hurt_function"](char_LP)
                    end
                end
                for i = 1,#char_LP["projectile_table"] do
                    local current_projectile = char_RP["projectile_table"][i]
                    if strike_hurtbox_test(char_RP,current_projectile) then
                        char_RP["hit_function"](char_RP)
                        current_projectile["hurt_function"](char_RP)
                    end
                end

                -- 检测飞行道具相杀
                for i = 1,#char_RP["projectile_table"] do
                    local RP_projectile = char_RP["projectile_table"][i]
                    for i = j,#char_LP["projectile_table"] do
                        local LP_projectile = char_LP["projectile_table"][j]
                        projectile_clash_test(RP_projectile,LP_projectile)
                    end
                end

                -- 检测飞行道具人物受击盒交互
                for i = 1,#char_RP["projectile_table"] do
                    local current_projectile = char_RP["projectile_table"][i]
                    if projectile_hurtbox_test(current_projectile,char_LP) then
                        current_projectile["hit_function"](current_projectile) -- 飞行道具更新主动攻击状态
                        char_LP["hurt_function"](current_projectile) --LP更新
                    end
                end
                for i = 1,#char_LP["projectile_table"] do
                    local current_projectile = char_LP["projectile_table"][i]
                    if projectile_hurtbox_test(current_projectile,char_RP) then
                        current_projectile["hit_function"](current_projectile)
                        char_RP["hurt_function"](current_projectile)
                    end
                end

                -- 保留双康使用的LP_hurt_strike_accur RP_hurt_strike_accur
                local LP_hurt_strike_accur = strike_hurtbox_test(char_RP,char_LP) -- (obj_hit,obj_hurt)
                local RP_hurt_strike_accur = strike_hurtbox_test(char_LP,char_RP)

                -- 检测打击受击盒交互
                if LP_hurt_strike_accur then
                    char_RP["hit_function"](char_RP) -- RP更新主动攻击状态
                end
                if RP_hurt_strike_accur then
                    char_LP["hit_function"](char_LP) -- LP更新主动攻击状态
                end
                if LP_hurt_strike_accur then
                    char_RP["hurt_function"](char_LP) -- RP更新被攻击状态
                end
                if RP_hurt_strike_accur then
                    char_LP["hurt_function"](char_RP) -- LP更新被攻击状态
                end

                -- 检测双康
                if LP_hurt_strike_accur and RP_hurt_strike_accur then
                    local obj_camera = obj_stage_game_scene_camera
                    
                    char_LP["hit_hurt_blockstop_countdown"] = 5
                    char_RP["hit_hurt_blockstop_countdown"] = 5
                    char_LP["hit_hurt_block_slowdown_countdown"] = 5
                    char_RP["hit_hurt_block_slowdown_countdown"] = 5
                    char_LP["game_speed"] = 2
                    char_RP["game_speed"] = 2
                    obj_camera["state"] = "main"
                    obj_camera["enclose_percentage"] = 0.0
                    obj_camera["enclose_position_offset"] = {0, 0, 0}
                end

                -- 检测相杀
                if strike_hitbox_clash_test() then

                end

            end

            -- 检测pushbox 更新Y位置
            pushbox_relocate_y(char_LP)
            pushbox_relocate_y(char_RP)

            -- 检测pushbox 更新X位置 static_relocate_x
            pushbox_stage_relocate_x(char_LP)
            pushbox_stage_relocate_x(char_RP)
            pushbox_state_relocate_in_character_x(char_LP,char_RP)

            -- 检测pushbox 更新X位置 dynamic_relocate_x
            pushbox_dynamic_normal_aabb_relocate_x(char_LP,char_RP)

            -- 删除已经到寿命的飞行道具
            for i = #char_LP["projectile_table"], 1, -1 do -- 反向遍历，便于删除元素
                local object = char_LP["projectile_table"][i]
                object["life"] = object["life"] - 1 -- 减少寿命
                object["update"](object)
                if object["life"] <= 0 then
                    table.remove(char_LP["projectile_table"], i) -- 寿命耗尽，从列表中移除
                end
            end
            for i = #char_RP["projectile_table"], 1, -1 do -- 反向遍历，便于删除元素
                local object = char_RP["projectile_table"][i]
                object["life"] = object["life"] - 1 -- 减少寿命
                object["update"](object)
                if object["life"] <= 0 then
                    table.remove(char_RP["projectile_table"], i) -- 寿命耗尽，从列表中移除
                end
            end

            -- 更新阻力
            update_game_scene_friction()

            -- 更新HUD
            -- 更新场景
            update_game_scene_HUD()
            update_game_scene_stage()

        end,
    }
    local this_function = switch[update_flow_controller["state"]]
    if this_function then this_function() end

end





function update_game_scene_main_local_match()
    update_game_scene_char_LP()
    update_game_scene_char_RP()

end

function update_game_scene_main_online_match()
    update_game_scene_char_LP()
    update_game_scene_char_RP()

end




function update_game_scene_friction()
    local char_LP = obj_char_game_scene_char_LP
    local char_RP = obj_char_game_scene_char_RP
    if char_LP["velocity"][1] > 0 then
        char_LP["velocity"][1] = math.max(char_LP["velocity"][1] / char_LP["friction"],0)
        if char_LP["velocity"][1] < 0.05 then
            char_LP["velocity"][1] = 0
        end
    elseif char_LP["velocity"][1] < 0 then
        char_LP["velocity"][1] = math.min(char_LP["velocity"][1] / char_LP["friction"],0)
        if char_LP["velocity"][1] > 0.05 then
            char_LP["velocity"][1] = 0
        end
    end
    if char_RP["velocity"][1] > 0 then
        char_RP["velocity"][1] = math.max(char_RP["velocity"][1] / char_RP["friction"],0)
        if char_RP["velocity"][1] < 0.05 then
            char_RP["velocity"][1] = 0
        end
    elseif char_RP["velocity"][1] < 0 then
        char_RP["velocity"][1] = math.min(char_RP["velocity"][1] / char_RP["friction"],0)
        if char_RP["velocity"][1] > 0.05 then
            char_RP["velocity"][1] = 0
        end
    end
end
function update_game_scene_HUD()
    update_game_scene_HUD_overdrive_timer(
        obj_char_game_scene_char_LP,
        obj_HUD_game_scene_overdrive_timer_LP
    )
    update_game_scene_HUD_overdrive_timer(
        obj_char_game_scene_char_RP,
        obj_HUD_game_scene_overdrive_timer_RP
    )
end

function update_game_scene_HUD_overdrive_timer(obj_char,timer_obj)
    local switch = {
        ["default"] = function()
            if obj_char["overdrive"][3] == "on" then
                timer_obj["state"] = "ease_in"
                obj_char["brightness"] = obj_char["brightness_const"]
                init_point_linear_anim_with(timer_obj,anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1)
                init_point_linear_anim_with(obj_char,anim_char_point_linear_overdrive_brightness_ease_in)
            end
        end,
        ["ease_in"] = function()
            point_linear_animator(timer_obj,anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1)
            point_linear_animator(obj_char,anim_char_point_linear_overdrive_brightness_ease_in)
            if get_point_linear_anim_end_state(timer_obj,anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1) 
            and get_point_linear_anim_end_state(obj_char,anim_char_point_linear_overdrive_brightness_ease_in) then
                timer_obj["state"] = "active"
                obj_char["brightness"] = obj_char["brightness_end_const"]
            elseif obj_char["overdrive"][3] == "off" then
                timer_obj["state"] = "ease_out"
                obj_char["brightness"] = obj_char["brightness_end_const"]
                init_point_linear_anim_with(timer_obj,anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0)
                init_point_linear_anim_with(obj_char,anim_char_point_linear_overdrive_brightness_ease_out)
            end
        end,
        ["active"] = function()
            if obj_char["overdrive"][3] == "off" then
                timer_obj["state"] = "ease_out"
                obj_char["brightness"] = obj_char["brightness_end_const"]
                init_point_linear_anim_with(timer_obj,anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0)
                init_point_linear_anim_with(obj_char,anim_char_point_linear_overdrive_brightness_ease_out)
            end
        end,
        ["ease_out"] = function()
            point_linear_animator(timer_obj,anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0)
            point_linear_animator(obj_char,anim_char_point_linear_overdrive_brightness_ease_out)
            if get_point_linear_anim_end_state(timer_obj,anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0) 
            and get_point_linear_anim_end_state(timer_obj,anim_UI_point_linear_game_scene_timer_ease_out_opacity_1_0)  then
                timer_obj["state"] = "default"
                obj_char["brightness"] = obj_char["brightness_const"]
            elseif obj_char["overdrive"][3] == "on" then
                timer_obj["state"] = "ease_in"
                obj_char["brightness"] = obj_char["brightness_const"]
                init_point_linear_anim_with(timer_obj,anim_UI_point_linear_game_scene_timer_ease_in_opacity_0_1)
                init_point_linear_anim_with(obj_char,anim_char_point_linear_overdrive_brightness_ease_in)
            end
        end,
    }
    local this_function = switch[timer_obj["state"]]
    if this_function then this_function() end
end

function update_game_scene_char()
    local char_LP = obj_char_game_scene_char_LP
    local char_RP = obj_char_game_scene_char_RP
    
    if char_LP["game_speed"] >= 1 then
        char_LP["game_speed_subframe"] = char_LP["game_speed_subframe"] + 1
    end
    if char_LP["game_speed"] ~= 1 then 
        if char_LP["game_speed_abnormal_realtime_countdown"] > 1 then
            char_LP["game_speed_abnormal_realtime_countdown"] = char_LP["game_speed_abnormal_realtime_countdown"] - 1
        end
        if char_LP["game_speed_abnormal_realtime_countdown"] <= 1 then
            char_LP["game_speed_abnormal_realtime_countdown"] = 0
            char_LP["game_speed"] = 1
        end
    end

    if char_RP["game_speed"] >= 1 then
        char_RP["game_speed_subframe"] = char_RP["game_speed_subframe"] + 1
    end
    if char_RP["game_speed"] ~= 1 then 
        if char_RP["game_speed_abnormal_realtime_countdown"] > 1 then
            char_RP["game_speed_abnormal_realtime_countdown"] = char_RP["game_speed_abnormal_realtime_countdown"] - 1
        end
        if char_RP["game_speed_abnormal_realtime_countdown"] <= 1 then
            char_RP["game_speed_abnormal_realtime_countdown"] = 0
            char_RP["game_speed"] = 1
        end
    end


    if char_LP["game_speed"] ~= 0 
    and char_LP["game_speed_subframe"] > char_LP["game_speed"]
    then
        update_game_scene_char_LP()
        update_game_scene_char_LP_projectile()
        update_game_scene_char_LP_VFX()
        update_game_scene_char_LP_black_overlay()
        char_LP["game_speed_subframe"] = 1
    end

    if char_RP["game_speed"] ~= 0 
    and char_RP["game_speed_subframe"] > char_RP["game_speed"]
    then
        update_game_scene_char_RP()
        update_game_scene_char_RP_projectile()
        update_game_scene_char_RP_VFX()
        update_game_scene_char_RP_black_overlay()
        char_RP["game_speed_subframe"] = 1
    end
end