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
                    obj_HUD_game_scene_gauge[4] = 1
                    obj_HUD_game_scene_timer[4] = 1
                    obj_HUD_game_scene_win_mark_LP[4] = 1
                    obj_HUD_game_scene_win_mark_RP[4] = 1
                    obj_HUD_game_scene_checkpoint_LP[4] = 1
                    obj_HUD_game_scene_checkpoint_RP[4] = 1
                    obj_HUD_game_scene_health_bar_LP[4] = 1
                    obj_HUD_game_scene_health_bar_RP[4] = 1
                    obj_HUD_game_scene_health_bar_LP_fade[4] = 1
                    obj_HUD_game_scene_health_bar_RP_fade[4] = 1
                    obj_HUD_game_scene_heat_bar_LP[4] = 1
                    obj_HUD_game_scene_heat_bar_RP[4] = 1
                    obj_HUD_game_scene_ability_bar_LP[4] = 1
                    obj_HUD_game_scene_ability_bar_RP[4] = 1
                    obj_HUD_game_scene_overdrive_bar_LP[4] = 1
                    obj_HUD_game_scene_overdrive_bar_RP[4] = 1
                    obj_HUD_game_scene_overdrive_text_LP[4] = 1
                    obj_HUD_game_scene_overdrive_text_RP[4] = 1

                else
                    update_flow_controller["state"] = "annoucer_ease_in_1"
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

        end,
        ["main"] = function()
            SCENE_TIMER = SCENE_TIMER + 1
            update_game_scene_char_LP()
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