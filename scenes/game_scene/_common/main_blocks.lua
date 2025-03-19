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

                end

            end
        end,
        ["black_solid_ease_in"] = function()
            SCENE_TIMER = SCENE_TIMER + 1
            update_game_scene_char_LP()
            update_game_scene_char_RP()
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
            end
        end,
        ["annoucer_ease_in_1"] = function()
            SCENE_TIMER = SCENE_TIMER + 1
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
                obj_char_game_scene_char_LP["pre_input_command_updatable"] = true
                obj_char_game_scene_char_RP["pre_input_command_updatable"] = true

            elseif SCENE_TIMER < 175 then
                state_machine_automatic_player_game_scene(obj_annoucer_game_scene_lets_dance,40)

            elseif SCENE_TIMER == 175 then
                obj_annoucer_game_scene_lets_dance[4] = 0

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

            update_game_scene_char_LP()
            update_game_scene_char_RP()

        end,
        ["main"] = function()
            SCENE_TIMER = SCENE_TIMER + 1
            update_game_scene_char_LP()
            update_game_scene_char_RP()

        end,
        ["LP_overdrive_pause"] = function()
            SCENE_TIMER = SCENE_TIMER + 1
            update_game_scene_char_LP()

        end,
        ["RP_overdrive_pause"] = function()
            SCENE_TIMER = SCENE_TIMER + 1
            update_game_scene_char_RP()

        end,
        ["LP_RC_pause"] = function()
            SCENE_TIMER = SCENE_TIMER + 1
            update_game_scene_char_LP()

        end,
        ["RP_RC_pause"] = function()
            SCENE_TIMER = SCENE_TIMER + 1
            update_game_scene_char_RP()

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