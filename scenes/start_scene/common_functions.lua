function update_start_scene_config_audio_main_exit()
    if SCENE_TIMER >= 5 then
        if command_state[1]["Up"] == "Pressing" then
            SCENE_TIMER = 0
            play_obj_audio(audio_SFX_start_scene_click)

            -- 更新 config audio bar id 更新 up twitch 场景动画 preset
            if AUDIO_BAR_MARK_ID ~= 0 then
                AUDIO_BAR_MARK_ID = AUDIO_BAR_MARK_ID - 1
            end

            -- 更新 up twitch 场景属性 preset
            obj_UI_start_scene_config_audio_bar_mark[2] = 
            BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID + 1]
            obj_UI_start_scene_config_audio_bar_mark[1] = 
            BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION

            obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_volume*23
            obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_volume*23

            -- 更新 up twitch 场景动画 preset
            init_point_linear_anim_with(
                obj_UI_start_scene_config_audio_bar_mark,
                anim_UI_point_linear_start_scene_config_audio_bar_mark_up_y
            )

            -- 更新 update block
            current_update_block = update_start_scene_config_audio_bar_mark_twtich_up

        elseif command_state[1]["Down"] == "Pressing" then
            SCENE_TIMER = 0
            play_obj_audio(audio_SFX_start_scene_click)

            -- 更新 config audio bar id 更新 up twitch 场景动画 preset
            if AUDIO_BAR_MARK_ID ~= 1 then
                AUDIO_BAR_MARK_ID = AUDIO_BAR_MARK_ID + 1
            end

            -- 更新 down twitch 场景属性 preset
            obj_UI_start_scene_config_audio_bar_mark[2] = 
            BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID + 1]
            obj_UI_start_scene_config_audio_bar_mark[1] = 
            BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION

            obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_volume*23
            obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_volume*23

            -- 更新 down twitch 场景动画 preset
            init_point_linear_anim_with(
                obj_UI_start_scene_config_audio_bar_mark,
                anim_UI_point_linear_start_scene_config_audio_bar_mark_down_y
            )

            -- 更新 update block
            current_update_block = update_start_scene_config_audio_bar_mark_twtich_down

        elseif command_state[1]["Left"] == "Pressing" then
            SCENE_TIMER = 0
            play_obj_audio(audio_SFX_start_scene_click)

            -- 更新 left twitch 场景属性 preset
            obj_UI_start_scene_config_audio_bar_mark[2] = 
            BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID + 1]
            obj_UI_start_scene_config_audio_bar_mark[1] = 
            BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION

            obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_volume*23
            obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_volume*23

            local local_alpha_bar_table = {
                obj_UI_start_scene_config_audio_BGM_bar_alpha,
                obj_UI_start_scene_config_audio_SFX_bar_alpha
            }

            local local_volume_table = {
                BGM_volume,
                SFX_volume
            }

            init_point_linear_anim_with(
                obj_UI_start_scene_config_audio_bar_mark,
                anim_UI_point_linear_start_scene_config_audio_bar_mark_left_x
            )

            if local_volume_table[AUDIO_BAR_MARK_ID+1] > 0 then
                -- 带 alpha
                init_point_linear_anim_with(
                    local_alpha_bar_table[AUDIO_BAR_MARK_ID+1],
                    anim_UI_point_linear_start_scene_config_audio_general_bar_alpha_left_23_x
                )
                local_volume_table[AUDIO_BAR_MARK_ID+1] = local_volume_table[AUDIO_BAR_MARK_ID+1] - 1
                BGM_volume = local_volume_table[1]
                SFX_volume = local_volume_table[2]
                update_start_scene_config_audio_main_update_volume()
                
                -- 场景出口
                current_update_block = update_start_scene_config_audio_bar_mark_twtich_left_with_alpha
            else
                -- 不带alpha
                -- 场景出口
                current_update_block = update_start_scene_config_audio_bar_mark_twtich_left_with_out_alpha
            end

        elseif command_state[1]["Right"] == "Pressing" then
            SCENE_TIMER = 0
            play_obj_audio(audio_SFX_start_scene_click)

            -- 更新 right twitch 场景属性 preset
            obj_UI_start_scene_config_audio_bar_mark[2] = 
            BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID + 1]
            obj_UI_start_scene_config_audio_bar_mark[1] = 
            BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION

            obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_volume*23
            obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_volume*23

            local local_alpha_bar_table = {
                obj_UI_start_scene_config_audio_BGM_bar_alpha,
                obj_UI_start_scene_config_audio_SFX_bar_alpha
            }

            local local_volume_table = {
                BGM_volume,
                SFX_volume
            }

            init_point_linear_anim_with(
                obj_UI_start_scene_config_audio_bar_mark,
                anim_UI_point_linear_start_scene_config_audio_bar_mark_right_x
            )

            if local_volume_table[AUDIO_BAR_MARK_ID+1] < 10 then
                -- 带 alpha
                init_point_linear_anim_with(
                    local_alpha_bar_table[AUDIO_BAR_MARK_ID+1],
                    anim_UI_point_linear_start_scene_config_audio_general_bar_alpha_right_23_x
                )
                local_volume_table[AUDIO_BAR_MARK_ID+1] = local_volume_table[AUDIO_BAR_MARK_ID+1] + 1
                BGM_volume = local_volume_table[1]
                SFX_volume = local_volume_table[2]
                update_start_scene_config_audio_main_update_volume()
                
                -- 场景出口
                current_update_block = update_start_scene_config_audio_bar_mark_twtich_right_with_alpha
            else
                -- 不带alpha
                -- 场景出口
                current_update_block = update_start_scene_config_audio_bar_mark_twtich_right_with_out_alpha
            end

        elseif command_state[1]["C"] == "Pressing" then
            SCENE_TIMER = 0
            -- audio
            -- 播放scene out to sub
            play_obj_audio(audio_SFX_start_scene_to_main)

            -- object 属性preset
                -- audio 子界面的几个object flash out 前自身的设置
            obj_UI_start_scene_config_audio_bar_mark[4] = 1
            obj_UI_start_scene_config_audio_BGM_bar_light[4] = 1
            obj_UI_start_scene_config_audio_SFX_bar_light[4] = 1
            obj_UI_start_scene_config_audio_BGM_bar_gauge[4] = 1
            obj_UI_start_scene_config_audio_SFX_bar_gauge[4] = 1
            obj_UI_start_scene_config_audio_text[4] = 1

                -- audio 子界面的几个object flash out 前 config main object 的设置
            obj_UI_start_scene_config_menu_dabo_trig[4] = 0.5
            obj_UI_start_scene_config_menu_text[4] = 0.5

            obj_UI_start_scene_config_audio_bar_mark[1] 
            = BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
            
            obj_UI_start_scene_config_audio_bar_mark[2] 
            = BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

            obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_volume*23
            obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_volume*23


            -- object 动画preset
                    -- audio 子界面的几个object flash in 前自身的设置
            init_point_linear_anim_with(
                obj_UI_start_scene_config_audio_bar_mark,
                anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
            )
            init_point_linear_anim_with(
                obj_UI_start_scene_config_audio_BGM_bar_light,
                anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
            )
            init_point_linear_anim_with(
                obj_UI_start_scene_config_audio_SFX_bar_light,
                anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
            )
            init_point_linear_anim_with(
                obj_UI_start_scene_config_audio_BGM_bar_gauge,
                anim_UI_point_linear_start_scene_general_flash_out_0p5_0_opacity
            )
            init_point_linear_anim_with(
                obj_UI_start_scene_config_audio_SFX_bar_gauge,
                anim_UI_point_linear_start_scene_general_flash_out_0p5_0_opacity
            )
            init_point_linear_anim_with(
                obj_UI_start_scene_config_audio_text,
                anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
            )
                -- audio 子界面的几个object flash in 前 config main object 的设置
            init_point_linear_anim_with(
                obj_UI_start_scene_config_menu_dabo_trig,
                anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
            )
            init_point_linear_anim_with(
                obj_UI_start_scene_config_menu_text,
                anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
            )
            
            -- 更新 update block
            current_update_block = update_start_scene_config_audio_flash_out

        end
    end
end

function update_start_scene_config_audio_main_update_volume()
    update_SFX_volume(audio_SFX_start_scene_click)
    update_SFX_volume(audio_SFX_start_scene_scene_out)
    update_SFX_volume(audio_SFX_start_scene_to_main)
    update_SFX_volume(audio_SFX_start_scene_to_sub)

    update_BGM_volume(audio_BGM_start_scene_FTR_high)
    update_BGM_volume(audio_BGM_start_scene_FTR_low)
end