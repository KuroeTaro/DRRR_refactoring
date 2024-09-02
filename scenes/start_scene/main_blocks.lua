function update_start_scene_flash_in()
    SCENE_TIMER = SCENE_TIMER + 1
    point_linear_animator(obj_UI_start_scene_solid_color,anim_UI_point_linear_start_scene_solid_flash_in_opacity)
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)

    -- 场景出口
    if SCENE_TIMER >= 30 then 
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_30f_1s45f
        
    end

end -- 已检查

function update_start_scene_30f_1s45f()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)

    -- 场景出口
    if SCENE_TIMER >= 75 then 
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有

        -- 初始化main所需要的动画机
        init_point_linear_anim_with(obj_UI_start_scene_up_console_text,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
        init_point_linear_anim_with(obj_UI_start_scene_down_console_text,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
        init_point_linear_anim_with(obj_UI_start_scene_console_type_in_mark,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
        init_point_linear_anim_with(obj_UI_start_scene_console_dabo_trig,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
        init_point_linear_anim_with(obj_UI_start_scene_option_text,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
        init_point_linear_anim_with(obj_UI_start_scene_breath_tag,anim_UI_point_linear_start_scene_general_flash_in_0_0p1_opacity)

        -- 更新 current_update_block
        current_update_block = update_start_scene_1s45f_1s50f
        
    end
end -- 已检查

function update_start_scene_1s45f_1s50f()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(obj_UI_start_scene_up_console_text,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
    point_linear_animator(obj_UI_start_scene_down_console_text,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
    point_linear_animator(obj_UI_start_scene_console_type_in_mark,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
    point_linear_animator(obj_UI_start_scene_console_dabo_trig,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
    point_linear_animator(obj_UI_start_scene_option_text,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
    point_linear_animator(obj_UI_start_scene_breath_tag,anim_UI_point_linear_start_scene_general_flash_in_0_0p1_opacity)

    -- 场景出口
    if SCENE_TIMER >= 5 then 
        SCENE_TIMER = 0

        -- 初始化此出口所需属性 但是目前没有
        
        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(obj_UI_start_scene_breath_tag,anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity)
        init_frame_anim_with(obj_UI_start_scene_console_type_in_mark,anim_UI_frame_start_scene_console_type_in_mark_blink_opacity)

        -- 更新 current_update_block
        current_update_block = update_start_scene_main
        
    end
end -- 已检查

function update_start_scene_main()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    -- 场景出口
    if INPUT_SYS_CURRENT_COMMAND_STATE[1]["Left"] == "Pressing" then 
        SCENE_TIMER = 0
        -- 播放twitch音频
        play_obj_audio(audio_SFX_start_scene_click)

        -- 轮转 option id
        if OPTION_ID == 0 then 
            OPTION_ID = 4 
        else 
            OPTION_ID = OPTION_ID - 1
        end

        -- 轮转 CONSOLE TEXT
        CONSOLE_TEXT_1_ID = OPTION_ID
        CONSOLE_TEXT_2_ID = OPTION_ID

        -- 初始化此出口所需属性 
        obj_UI_start_scene_breath_tag[4] = 0
        obj_UI_start_scene_console_dabo_trig[1] = 75
        obj_UI_start_scene_console_dabo_trig[4] = 0
        obj_UI_start_scene_option_text[1] = OPTION_TEXT_X_POSITION_TABLE[OPTION_ID + 1]
        obj_UI_start_scene_option_text[8] = OPTION_ID
        obj_UI_start_scene_console_type_in_mark[4] = 0

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_console_dabo_trig,
            anim_UI_frame_start_scene_console_dabo_trig_twtich_x
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_console_dabo_trig,
            anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_option_text,
            anim_UI_point_linear_start_scene_option_text_twitch_x
        )
        
        -- 更新 current_update_block
        current_update_block = update_start_scene_option_twitch

    -- 场景出口 option twitch right
    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["Right"] == "Pressing" then 
        SCENE_TIMER = 0
        -- 播放twitch音频
        play_obj_audio(audio_SFX_start_scene_click)

        -- 轮转 option ID
        if OPTION_ID == 4 then 
            OPTION_ID = 0 
        else 
            OPTION_ID = OPTION_ID + 1
        end

        -- 轮转 CONSOLE TEXT
        CONSOLE_TEXT_1_ID = OPTION_ID
        CONSOLE_TEXT_2_ID = OPTION_ID

        -- 初始化此出口所需属性
        obj_UI_start_scene_breath_tag[4] = 0
        obj_UI_start_scene_console_dabo_trig[1] = 75
        obj_UI_start_scene_console_dabo_trig[4] = 0
        obj_UI_start_scene_option_text[1] = OPTION_TEXT_X_POSITION_TABLE[OPTION_ID + 1]
        obj_UI_start_scene_option_text[8] = OPTION_ID
        obj_UI_start_scene_console_type_in_mark[4] = 0

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_console_dabo_trig,
            anim_UI_frame_start_scene_console_dabo_trig_twtich_x
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_console_dabo_trig,
            anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_option_text,
            anim_UI_point_linear_start_scene_option_text_twitch_x
        )

        -- 更新 current_update_block
        current_update_block = update_start_scene_option_twitch

    -- 场景出口 option 确认
    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["D"] == "Pressing" then 
        SCENE_TIMER = 0
        play_obj_audio(audio_SFX_start_scene_to_main)
        local switch = {
            [0] = function()
                SCENE_TIMER = 0

                -- 训练模式 设置玩家数
                PLAYER_NUMBER = 1

                -- 播放scene out audio
                play_obj_audio(audio_SFX_start_scene_scene_out)

                -- 初始化此出口所需属性
                obj_UI_start_scene_solid_color[4] = 0
                    -- audio
                audio_BGM_start_scene_FTR_high[1] = 1

                -- 初始化此出口所需要的动画机
                init_point_linear_anim_with(
                    obj_UI_start_scene_solid_color,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )

                    -- audio
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )

                -- 音量更新
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)

                -- 更新 current_update_block
                current_update_block = update_start_scene_flash_out

            end,
            [1] = function()
                SCENE_TIMER = 0

                -- 匹配模式 设置玩家数
                PLAYER_NUMBER = 2

                -- 播放scene out audio
                play_obj_audio(audio_SFX_start_scene_scene_out)

                -- 初始化此出口所需属性
                obj_UI_start_scene_solid_color[4] = 0
                audio_BGM_start_scene_FTR_high[1] = 1

                -- 初始化此出口所需要的动画机
                init_point_linear_anim_with(
                    obj_UI_start_scene_solid_color,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )
                -- 音量更新
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)

                -- 更新 current_update_block
                current_update_block = update_start_scene_flash_out

            end,
            [2] = function()
                SCENE_TIMER = 0
                SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 0

                -- config

                -- 播放scene out to sub
                play_obj_audio(audio_SFX_start_scene_to_sub)

                -- 初始化此出口所需属性
                obj_UI_start_scene_shutter[4] = 0
                obj_UI_start_scene_config_menu_dabo_trig[4] = 0
                obj_UI_start_scene_config_menu_text[4] = 0
                audio_BGM_start_scene_FTR_high[1] = 1
                audio_BGM_start_scene_FTR_low[1] = 0

                -- 初始化此出口所需要的动画机
                init_point_linear_anim_with(
                    obj_UI_start_scene_shutter,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_menu_dabo_trig,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_menu_text,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_low,
                    anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
                )

                -- 更新音量
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_low)

                -- 更新 current_update_block
                current_update_block = update_start_scene_config_flash_in
                current_draw_block = draw_start_scene_config_sub_scene

            end,
            [3] = function()
                SCENE_TIMER = 0
                SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 0

                -- record

                -- 播放scene out to sub
                play_obj_audio(audio_SFX_start_scene_to_sub)

                -- 初始化此出口所需属性
                obj_UI_start_scene_shutter[4] = 0
                obj_UI_start_scene_record_dabo_trig[4] = 0
                obj_UI_start_scene_record_dabo_trig[2] = 
                DABO_TIRG_RECORD_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONFIG_RECORD_DABO_TRIG_ID + 1]
                obj_UI_start_scene_record_game_duration_text[4] = 0
                obj_UI_start_scene_record_num_0[4] = 0
                obj_UI_start_scene_record_num_1[4] = 0
                obj_UI_start_scene_record_num_2[4] = 0
                obj_UI_start_scene_record_num_3[4] = 0
                obj_UI_start_scene_record_num_4[4] = 0
                obj_UI_start_scene_record_num_5[4] = 0
                obj_UI_start_scene_record_100h_plus_time_indi[4] = 0

                -- 更新音量
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_low)

                -- 初始化此出口所需要的动画机
                init_point_linear_anim_with(
                    obj_UI_start_scene_shutter,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_record_dabo_trig,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_record_game_duration_text,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_record_num_0,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_record_num_1,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_record_num_2,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_record_num_3,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_record_num_4,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_record_num_5,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_record_100h_plus_time_indi,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_low,
                    anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
                )

                -- 更新音量
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_low)

                -- 更新 current_update_block
                current_update_block = update_start_scene_record_flash_in
                current_draw_block = draw_start_scene_record_sub_scene

            end,
            [4] = function()
                SCENE_TIMER = 0

                -- exit

                -- 播放scene out audio
                play_obj_audio(audio_SFX_start_scene_scene_out)

                -- 初始化此出口所需属性
                obj_UI_start_scene_solid_color[4] = 0
                -- 更新音量
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)
                update_SFX_VOLUME(audio_SFX_start_scene_scene_out)

                -- 初始化此出口所需要的动画机
                init_point_linear_anim_with(
                    obj_UI_start_scene_solid_color,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )

                -- 更新音量
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)

                -- 更新 current_update_block
                current_update_block = update_start_scene_flash_out

            end
        }
        local thisFunction = switch[OPTION_ID]
        if thisFunction then 
            thisFunction() 
        end

    -- 场景出口 控制器更新
    elseif (INPUT_SYS_CONTROLLER_STATE[0] ~= INPUT_SYS_CONTROLLER_STATE[2] or INPUT_SYS_CONTROLLER_STATE[1] ~= INPUT_SYS_CONTROLLER_STATE[3]) then 
        SCENE_TIMER = 0
        -- 检测控制器具体变化 修改console text
        if INPUT_SYS_CONTROLLER_STATE[0] == 0 and INPUT_SYS_CONTROLLER_STATE[1] == 0 then 
            CONSOLE_TEXT_2_ID = 5
        elseif INPUT_SYS_CONTROLLER_STATE[0] == 1 and INPUT_SYS_CONTROLLER_STATE[1] == 0 then 
            CONSOLE_TEXT_2_ID = 6
        elseif INPUT_SYS_CONTROLLER_STATE[0] == 1 and INPUT_SYS_CONTROLLER_STATE[1] == 1 then 
            CONSOLE_TEXT_2_ID = 7
        end
        CONSOLE_TEXT_1_ID = 5

        -- 初始化此出口所需属性
        obj_UI_start_scene_console_dabo_trig[1] = 75
        obj_UI_start_scene_console_dabo_trig[4] = 0

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_console_dabo_trig,
            anim_UI_frame_start_scene_console_dabo_trig_twtich_x
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_console_dabo_trig,
            anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
        )

        -- 更新 current_update_block
        current_update_block = update_start_scene_only_console_twitch

    end

end -- 已检查

function update_start_scene_flash_out()
    SCENE_TIMER = SCENE_TIMER + 1
    point_linear_animator(
        obj_UI_start_scene_solid_color,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        audio_BGM_start_scene_FTR_high,
        anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
    )
    update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)

    -- 场景出口
    if audio_SFX_start_scene_scene_out["audio"]:isPlaying() == false then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block

        -- current_update_block = nil
        -- current_draw_block = nil
        love.event.quit()
    end

end -- 已检查


-- option twitch
function update_start_scene_option_twitch()
    SCENE_TIMER = SCENE_TIMER + 1

    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(obj_UI_start_scene_breath_tag,anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity)
    frame_animator(obj_UI_start_scene_console_type_in_mark,anim_UI_frame_start_scene_console_type_in_mark_blink_opacity)
    
    point_linear_animator(
        obj_UI_start_scene_console_dabo_trig,
        anim_UI_frame_start_scene_console_dabo_trig_twtich_x
    )
    point_linear_animator(
        obj_UI_start_scene_console_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_option_text,
        anim_UI_point_linear_start_scene_option_text_twitch_x
    )

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0

        -- 初始化此出口所需属性
        obj_UI_start_scene_breath_tag[4] = 0.1
        obj_UI_start_scene_console_dabo_trig[1] = 75
        obj_UI_start_scene_console_dabo_trig[4] = 1
        obj_UI_start_scene_console_type_in_mark[1] = CONSOLE_TYPE_IN_MARK_X_POSITION_TABLE[CONSOLE_TEXT_2_ID + 1]
        obj_UI_start_scene_console_type_in_mark[4] = 0

        obj_UI_start_scene_up_console_text[8] = CONSOLE_TEXT_1_ID
        obj_UI_start_scene_down_console_text[8] = CONSOLE_TEXT_2_ID

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_breath_tag,
            anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
        )
        init_frame_anim_with(
            obj_UI_start_scene_console_type_in_mark,
            anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
        )

        -- 更新 current_update_block
        current_update_block = update_start_scene_main

    end

end -- 已检查

function update_start_scene_only_console_twitch()
    SCENE_TIMER = SCENE_TIMER + 1

    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_console_dabo_trig,
        anim_UI_frame_start_scene_console_dabo_trig_twtich_x
    )
    point_linear_animator(
        obj_UI_start_scene_console_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性
        obj_UI_start_scene_console_dabo_trig[1] = 75
        obj_UI_start_scene_console_dabo_trig[4] = 1
        obj_UI_start_scene_console_type_in_mark[1] = CONSOLE_TYPE_IN_MARK_X_POSITION_TABLE[CONSOLE_TEXT_2_ID + 1]
        obj_UI_start_scene_console_type_in_mark[4] = 0

        obj_UI_start_scene_up_console_text[8] = CONSOLE_TEXT_1_ID
        obj_UI_start_scene_down_console_text[8] = CONSOLE_TEXT_2_ID

        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_main

    end
end -- 已检查


-- config
function update_start_scene_config_flash_in()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_shutter,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_text,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )

    point_linear_animator(
        audio_BGM_start_scene_FTR_high,
        anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
    )
    point_linear_animator(
        audio_BGM_start_scene_FTR_low,
        anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
    )

    update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)
    update_BGM_VOLUME(audio_BGM_start_scene_FTR_low)

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_main

    end

end -- 已检查

function update_start_scene_config_main()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    -- 场景出口
    if INPUT_SYS_CURRENT_COMMAND_STATE[1]["Up"] == "Pressing" then
        SCENE_TIMER = 0
        play_obj_audio(audio_SFX_start_scene_click)
        -- 更新 config dabo trig ID
        if SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID ~= 0 then
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID - 1
        end

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_CONFIG_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_dabo_trig,
            anim_UI_point_linear_start_scene_config_menu_dabo_trig_up_0_y
        )

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_twitch_up

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["Down"] == "Pressing" then
        SCENE_TIMER = 0
        play_obj_audio(audio_SFX_start_scene_click)
        -- 更新 config dabo trig ID
        if SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID ~= 3 then
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1
        end

        -- 更新 twitch 场景属性 preset
        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_CONFIG_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

        -- 更新 twitch 场景动画 preset
        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_dabo_trig,
            anim_UI_point_linear_start_scene_config_menu_dabo_trig_down_0_y
        )

        -- 更新 update block
        current_update_block = update_start_scene_config_twitch_down

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["D"] == "Pressing" then
        SCENE_TIMER = 0

        local switch = {
            [0] = function()
                -- audio config

                play_obj_audio(audio_SFX_start_scene_to_sub)

                -- current bar mark ID
                AUDIO_BAR_MARK_ID = 0
    
                -- 初始化此出口所需属性
                obj_UI_start_scene_config_audio_bar_mark[4] = 0
                obj_UI_start_scene_config_audio_BGM_bar_light[4] = 0
                obj_UI_start_scene_config_audio_SFX_bar_light[4] = 0
                obj_UI_start_scene_config_audio_BGM_bar_gauge[4] = 0
                obj_UI_start_scene_config_audio_SFX_bar_gauge[4] = 0
                obj_UI_start_scene_config_audio_text[4] = 0
    
                obj_UI_start_scene_config_menu_dabo_trig[4] = 1
                obj_UI_start_scene_config_menu_text[4] = 1
    
                obj_UI_start_scene_config_audio_bar_mark[1] 
                = BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
                
                obj_UI_start_scene_config_audio_bar_mark[2] 
                = BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]
    
                obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_VOLUME*23
                obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_VOLUME*23
    
    
                -- 初始化此出口所需要的动画机
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_audio_bar_mark,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_audio_BGM_bar_light,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_audio_SFX_bar_light,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_audio_BGM_bar_gauge,
                    anim_UI_point_linear_start_scene_general_flash_in_0_0p5_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_audio_SFX_bar_gauge,
                    anim_UI_point_linear_start_scene_general_flash_in_0_0p5_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_audio_text,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_menu_dabo_trig,
                    anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_menu_text,
                    anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
                )
                
                -- 更新 update block
                current_update_block = update_start_scene_config_audio_flash_in
                current_draw_block = draw_start_scene_config_audio_sub_scene

            end,
            [1] = function()
                -- controller config

                play_obj_audio(audio_SFX_start_scene_to_sub)

                -- 初始化此出口所需属性
                obj_UI_start_scene_config_controller_bar_mark_1P["state"] = "off_state"
                obj_UI_start_scene_config_controller_bar_mark_2P["state"] = "off_state"
                obj_UI_start_scene_config_controller_bar_mark_1P[4] = 0
                obj_UI_start_scene_config_controller_bar_mark_2P[4] = 0
                obj_UI_start_scene_config_controller_indi_text[4] = 0
                obj_UI_start_scene_config_menu_dabo_trig[4] = 1
                obj_UI_start_scene_config_menu_text[4] = 1

                -- 初始化此出口所需要的动画机
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_controller_bar_mark_1P,
                    anim_UI_point_linear_start_scene_general_flash_in_0_0p5_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_controller_bar_mark_2P,
                    anim_UI_point_linear_start_scene_general_flash_in_0_0p5_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_controller_indi_text,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )

                init_point_linear_anim_with(
                    obj_UI_start_scene_config_menu_dabo_trig,
                    anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_menu_text,
                    anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
                )

                -- 更新 current_update_block
                current_update_block = update_start_scene_config_controller_flash_in
                current_draw_block = draw_start_scene_config_controller_sub_scene

            end,
            [2] = function()
                -- resolution config

                play_obj_audio(audio_SFX_start_scene_to_sub)

                -- current bar mark ID
                get_current_resolution()
    
                -- 初始化此出口所需属性
                obj_UI_start_scene_config_resolution_w_x_h[8] = RES_PARTTEN
                obj_UI_start_scene_config_resolution_bar_mark[4] = 0
                obj_UI_start_scene_config_resolution_w_x_h[4] = 0
                obj_UI_start_scene_config_resolution_select_res_text[4] = 0
    
                    -- controller 子界面的几个object flash in 前 config main object 的设置
                obj_UI_start_scene_config_menu_dabo_trig[4] = 1
                obj_UI_start_scene_config_menu_text[4] = 1
    
                -- 初始化此出口所需要的动画机
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_resolution_bar_mark,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_resolution_w_x_h,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_resolution_select_res_text,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )

                init_point_linear_anim_with(
                    obj_UI_start_scene_config_menu_dabo_trig,
                    anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_menu_text,
                    anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
                )
                
                -- 更新 current_update_block
                current_update_block = update_start_scene_config_resolution_flash_in
                current_draw_block = draw_start_scene_config_resolution_sub_scene
    
            end,
            [3] = function()
                -- back to config main

                play_obj_audio(audio_SFX_start_scene_to_main)

                -- 初始化此出口所需属性
                obj_UI_start_scene_shutter[4] = 1
                obj_UI_start_scene_config_menu_dabo_trig[4] = 1
                obj_UI_start_scene_config_menu_text[4] = 1
    
                -- 初始化此出口所需要的动画机
                init_point_linear_anim_with(
                    obj_UI_start_scene_shutter,
                    anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_menu_dabo_trig,
                    anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
                )
                init_point_linear_anim_with(
                    obj_UI_start_scene_config_menu_text,
                    anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
                )
    
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
                )
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_low,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )
    
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)
                update_BGM_VOLUME(audio_BGM_start_scene_FTR_low)
    
                -- 更新 current_update_block
                current_update_block = update_start_scene_config_flash_out
    
            end
        }

        local thisFunction = switch[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID]
        if thisFunction then 
            thisFunction() 
        end

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["C"] == "Pressing" then
        SCENE_TIMER = 0
        -- 播放scene out to sub
        play_obj_audio(audio_SFX_start_scene_to_main)

        -- 初始化此出口所需属性
        obj_UI_start_scene_shutter[4] = 1
        obj_UI_start_scene_config_menu_dabo_trig[4] = 1
        obj_UI_start_scene_config_menu_text[4] = 1

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_shutter,
            anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_dabo_trig,
            anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_text,
            anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
        )

        init_point_linear_anim_with(
            audio_BGM_start_scene_FTR_high,
            anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
        )
        init_point_linear_anim_with(
            audio_BGM_start_scene_FTR_low,
            anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
        )

        update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)
        update_BGM_VOLUME(audio_BGM_start_scene_FTR_low)

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_flash_out

    end

end 

function update_start_scene_config_twitch_up()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )
    
    point_linear_animator(
        obj_UI_start_scene_config_menu_dabo_trig,
        anim_UI_point_linear_start_scene_config_menu_dabo_trig_up_0_y
    )

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_CONFIG_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_main

    end

end -- 已检查

function update_start_scene_config_twitch_down()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_menu_dabo_trig,
        anim_UI_point_linear_start_scene_config_menu_dabo_trig_down_0_y
    )

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性
        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_CONFIG_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_main

    end

end -- 已检查

function update_start_scene_config_flash_out()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_shutter,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_text,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )

    point_linear_animator(
        audio_BGM_start_scene_FTR_high,
        anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
    )
    point_linear_animator(
        audio_BGM_start_scene_FTR_low,
        anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
    )

    update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)
    update_BGM_VOLUME(audio_BGM_start_scene_FTR_low)

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性
        SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 0
        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_CONFIG_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_main
        current_draw_block = draw_start_scene_general

    end

end -- 已检查

    -- config audio
function update_start_scene_config_audio_flash_in()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )
    
    point_linear_animator(
        obj_UI_start_scene_config_audio_bar_mark,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_audio_BGM_bar_light,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_audio_SFX_bar_light,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_audio_BGM_bar_gauge,
        anim_UI_point_linear_start_scene_general_flash_in_0_0p5_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_audio_SFX_bar_gauge,
        anim_UI_point_linear_start_scene_general_flash_in_0_0p5_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_audio_text,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_menu_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_text,
        anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
    )

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0

        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_audio_main

    end

end -- 已检查

function update_start_scene_config_audio_main()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    if INPUT_SYS_CURRENT_COMMAND_STATE[1]["D"] == "Pressing" then
        play_obj_audio(audio_SFX_start_scene_click)
    end

    -- 场景出口
    if INPUT_SYS_CURRENT_COMMAND_STATE[1]["Up"] == "Pressing" then
        SCENE_TIMER = 0
        play_obj_audio(audio_SFX_start_scene_click)

        -- 改变 AUDIO_BAR_MARK_ID
        if AUDIO_BAR_MARK_ID ~= 0 then
            AUDIO_BAR_MARK_ID = AUDIO_BAR_MARK_ID - 1
        end

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID + 1]
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION

        obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_VOLUME*23
        obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_VOLUME*23

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_config_audio_bar_mark,
            anim_UI_point_linear_start_scene_config_audio_bar_mark_up_y
        )

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_audio_bar_mark_twtich_up

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["Down"] == "Pressing" then
        SCENE_TIMER = 0
        play_obj_audio(audio_SFX_start_scene_click)

        -- 改变AUDIO_BAR_MARK_ID
        if AUDIO_BAR_MARK_ID ~= 1 then
            AUDIO_BAR_MARK_ID = AUDIO_BAR_MARK_ID + 1
        end

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID + 1]
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION

        obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_VOLUME*23
        obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_VOLUME*23

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_config_audio_bar_mark,
            anim_UI_point_linear_start_scene_config_audio_bar_mark_down_y
        )

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_audio_bar_mark_twtich_down

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["Left"] == "Pressing" then
        SCENE_TIMER = 0
        play_obj_audio(audio_SFX_start_scene_click)

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID + 1]
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION

        obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_VOLUME*23
        obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_VOLUME*23

        -- 仅此出口使用所需table
        local local_alpha_bar_table = {
            obj_UI_start_scene_config_audio_BGM_bar_alpha,
            obj_UI_start_scene_config_audio_SFX_bar_alpha
        }

        local local_volume_table = {
            BGM_VOLUME,
            SFX_VOLUME
        }

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_config_audio_bar_mark,
            anim_UI_point_linear_start_scene_config_audio_bar_mark_left_x
        )

        if local_volume_table[AUDIO_BAR_MARK_ID+1] > 0 then
            -- 带 alpha
            -- 初始化此出口所需要的动画机
            init_point_linear_anim_with(
                local_alpha_bar_table[AUDIO_BAR_MARK_ID+1],
                anim_UI_point_linear_start_scene_config_audio_general_bar_alpha_left_23_x
            )

            -- 更新BGM SFX volume
            local_volume_table[AUDIO_BAR_MARK_ID+1] = local_volume_table[AUDIO_BAR_MARK_ID+1] - 1
            BGM_VOLUME = local_volume_table[1]
            SFX_VOLUME = local_volume_table[2]

            update_start_scene_config_audio_main_update_volume()

            -- 更新 current_update_block
            current_update_block = update_start_scene_config_audio_bar_mark_twtich_left_with_alpha

        else
            -- 更新 current_update_block
            current_update_block = update_start_scene_config_audio_bar_mark_twtich_left_with_out_alpha

        end

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["Right"] == "Pressing" then
        SCENE_TIMER = 0
        play_obj_audio(audio_SFX_start_scene_click)

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID + 1]
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION

        obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_VOLUME*23
        obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_VOLUME*23

        -- 仅此出口使用所需table
        local local_alpha_bar_table = {
            obj_UI_start_scene_config_audio_BGM_bar_alpha,
            obj_UI_start_scene_config_audio_SFX_bar_alpha
        }

        local local_volume_table = {
            BGM_VOLUME,
            SFX_VOLUME
        }

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_config_audio_bar_mark,
            anim_UI_point_linear_start_scene_config_audio_bar_mark_right_x
        )

        if local_volume_table[AUDIO_BAR_MARK_ID+1] < 10 then
            -- 带 alpha
            -- 初始化此出口所需要的动画机
            init_point_linear_anim_with(
                local_alpha_bar_table[AUDIO_BAR_MARK_ID+1],
                anim_UI_point_linear_start_scene_config_audio_general_bar_alpha_right_23_x
            )
            local_volume_table[AUDIO_BAR_MARK_ID+1] = local_volume_table[AUDIO_BAR_MARK_ID+1] + 1

            -- 更新BGM SFX volume
            BGM_VOLUME = local_volume_table[1]
            SFX_VOLUME = local_volume_table[2]
            update_start_scene_config_audio_main_update_volume()
            
            -- 更新 current_update_block
            current_update_block = update_start_scene_config_audio_bar_mark_twtich_right_with_alpha

        else
            -- 不带alpha
            -- 更新 current_update_block
            current_update_block = update_start_scene_config_audio_bar_mark_twtich_right_with_out_alpha
            
        end

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["C"] == "Pressing" then
        SCENE_TIMER = 0
        play_obj_audio(audio_SFX_start_scene_to_main)

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[4] = 1
        obj_UI_start_scene_config_audio_BGM_bar_light[4] = 1
        obj_UI_start_scene_config_audio_SFX_bar_light[4] = 1
        obj_UI_start_scene_config_audio_BGM_bar_gauge[4] = 1
        obj_UI_start_scene_config_audio_SFX_bar_gauge[4] = 1
        obj_UI_start_scene_config_audio_text[4] = 1

        obj_UI_start_scene_config_menu_dabo_trig[4] = 0.5
        obj_UI_start_scene_config_menu_text[4] = 0.5

        obj_UI_start_scene_config_audio_bar_mark[1] 
        = BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        
        obj_UI_start_scene_config_audio_bar_mark[2] 
        = BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

        obj_UI_start_scene_config_audio_BGM_bar_alpha[1] = BGM_VOLUME*23
        obj_UI_start_scene_config_audio_SFX_bar_alpha[1] = SFX_VOLUME*23

        -- 初始化此出口所需要的动画机
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

        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_dabo_trig,
            anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_text,
            anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
        )
        
        -- 更新 current_update_block
        current_update_block = update_start_scene_config_audio_flash_out

    end

end -- 已检查

function update_start_scene_config_audio_bar_mark_twtich_up()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_audio_bar_mark,
        anim_UI_point_linear_start_scene_config_audio_bar_mark_up_y
    )

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_audio_main

    end

end -- 已检查

function update_start_scene_config_audio_bar_mark_twtich_down()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_audio_bar_mark,
        anim_UI_point_linear_start_scene_config_audio_bar_mark_down_y
    )

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_audio_main

    end

end -- 已检查

function update_start_scene_config_audio_bar_mark_twtich_left_with_alpha()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    -- 仅此出口使用所需table
    local local_alpha_bar_table = {
        obj_UI_start_scene_config_audio_BGM_bar_alpha,
        obj_UI_start_scene_config_audio_SFX_bar_alpha
    }

    point_linear_animator(
        obj_UI_start_scene_config_audio_bar_mark,
        anim_UI_point_linear_start_scene_config_audio_bar_mark_left_x
    )
    point_linear_animator(
        local_alpha_bar_table[AUDIO_BAR_MARK_ID+1],
        anim_UI_point_linear_start_scene_config_audio_general_bar_alpha_left_23_x
    )

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        
        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

        -- 仅此出口使用所需table
        local local_volume_table = {
            BGM_VOLUME,
            SFX_VOLUME
        }

        local_alpha_bar_table[AUDIO_BAR_MARK_ID+1][1] = local_volume_table[AUDIO_BAR_MARK_ID+1]*23

        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_audio_main

    end

end -- 已检查

function update_start_scene_config_audio_bar_mark_twtich_left_with_out_alpha()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_audio_bar_mark,
        anim_UI_point_linear_start_scene_config_audio_bar_mark_left_x
    )

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_audio_main

    end

end -- 已检查

function update_start_scene_config_audio_bar_mark_twtich_right_with_alpha()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    -- 仅此出口使用所需table
    local local_alpha_bar_table = {
        obj_UI_start_scene_config_audio_BGM_bar_alpha,
        obj_UI_start_scene_config_audio_SFX_bar_alpha
    }

    point_linear_animator(
        obj_UI_start_scene_config_audio_bar_mark,
        anim_UI_point_linear_start_scene_config_audio_bar_mark_right_x
    )
    point_linear_animator(
        local_alpha_bar_table[AUDIO_BAR_MARK_ID+1],
        anim_UI_point_linear_start_scene_config_audio_general_bar_alpha_right_23_x
    )

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

        -- 仅此出口使用所需table
        local local_volume_table = {
            BGM_VOLUME,
            SFX_VOLUME
        }

        local_alpha_bar_table[AUDIO_BAR_MARK_ID+1][1] = local_volume_table[AUDIO_BAR_MARK_ID+1]*23

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_audio_main

    end

end -- 已检查

function update_start_scene_config_audio_bar_mark_twtich_right_with_out_alpha()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_audio_bar_mark,
        anim_UI_point_linear_start_scene_config_audio_bar_mark_right_x
    )
    
    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        
        -- 初始化此出口所需属性
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_audio_main

    end

end -- 已检查

function update_start_scene_config_audio_flash_out()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )
    
    point_linear_animator(
        obj_UI_start_scene_config_audio_bar_mark,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_audio_BGM_bar_light,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_audio_SFX_bar_light,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_audio_BGM_bar_gauge,
        anim_UI_point_linear_start_scene_general_flash_out_0p5_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_audio_SFX_bar_gauge,
        anim_UI_point_linear_start_scene_general_flash_out_0p5_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_audio_text,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_menu_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_text,
        anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
    )

    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- init bar mark ID
        AUDIO_BAR_MARK_ID = 0

        -- 存档
        write_volume_config()
        
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_main
        current_draw_block = draw_start_scene_config_sub_scene

    end
end -- 已检查

    -- config controller 
function update_start_scene_config_controller_flash_in()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_controller_bar_mark_1P,
        anim_UI_point_linear_start_scene_general_flash_in_0_0p5_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_controller_bar_mark_2P,
        anim_UI_point_linear_start_scene_general_flash_in_0_0p5_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_controller_indi_text,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_menu_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_text,
        anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
    )

    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_controller_main

    end

end -- 已检查

function update_start_scene_config_controller_main()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )
    -- controller indi bar mark 状态机
    state_machine_UI_start_scene_config_controller(obj_UI_start_scene_config_controller_bar_mark_1P,1)
    state_machine_UI_start_scene_config_controller(obj_UI_start_scene_config_controller_bar_mark_2P,2)

    -- 场景出口
    if INPUT_SYS_CURRENT_COMMAND_STATE[1]["C"] == "Pressing" or INPUT_SYS_CURRENT_COMMAND_STATE[2]["C"] == "Pressing" then
        SCENE_TIMER = 0

        play_obj_audio(audio_SFX_start_scene_to_main)

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_controller_bar_mark_1P[4] = 0.5
        obj_UI_start_scene_config_controller_bar_mark_2P[4] = 0.5

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_config_controller_bar_mark_1P,
            anim_UI_point_linear_start_scene_general_flash_out_0p5_0_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_config_controller_bar_mark_2P,
            anim_UI_point_linear_start_scene_general_flash_out_0p5_0_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_config_controller_indi_text,
            anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
        )

        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_dabo_trig,
            anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_text,
            anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
        )

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_controller_flash_out
        
    end

end -- 已检查

function update_start_scene_config_controller_flash_out()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_controller_bar_mark_1P,
        anim_UI_point_linear_start_scene_general_flash_out_0p5_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_controller_bar_mark_2P,
        anim_UI_point_linear_start_scene_general_flash_out_0p5_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_controller_indi_text,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_text,
        anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
    )

    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_main

    end

end -- 已检查


    -- config resolution 
function update_start_scene_config_resolution_flash_in()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_resolution_bar_mark,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_resolution_w_x_h,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_resolution_select_res_text,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_menu_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_text,
        anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
    )

    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_controller_main

    end
end

function update_start_scene_config_resolution_main()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    if INPUT_SYS_CURRENT_COMMAND_STATE[1]["Left"] == "Pressing" then
        play_obj_audio(audio_SFX_start_scene_click)

        if RES_PARTTEN ~= 0 then
            RES_PARTTEN = RES_PARTTEN - 1
        end

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_resolution_w_x_h[8] = RES_PARTTEN
        obj_UI_start_scene_config_resolution_bar_mark[1] = BAR_MARK_CONFIG_SUB_SCENE_RESOLUTION_X_POSITION
        obj_UI_start_scene_config_resolution_bar_mark[2] = BAR_MARK_CONFIG_SUB_SCENE_RESOLUTION_Y_POSITION

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_config_resolution_bar_mark,
            anim_UI_point_linear_start_scene_config_resolution_bar_mark_left_x
        )

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_resolution_bar_mark_twtich_left

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["Right"] == "Pressing" then
        
        play_obj_audio(audio_SFX_start_scene_click)

        if RES_PARTTEN ~= 4 then
            RES_PARTTEN = RES_PARTTEN + 1
        end

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_resolution_w_x_h[8] = RES_PARTTEN
        obj_UI_start_scene_config_resolution_bar_mark[1] = BAR_MARK_CONFIG_SUB_SCENE_RESOLUTION_X_POSITION
        obj_UI_start_scene_config_resolution_bar_mark[2] = BAR_MARK_CONFIG_SUB_SCENE_RESOLUTION_Y_POSITION

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_config_resolution_bar_mark,
            anim_UI_point_linear_start_scene_config_resolution_bar_mark_right_x
        )

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_resolution_bar_mark_twtich_right

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["D"] == "Pressing" then
        set_current_resolution()

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["C"] == "Pressing" then
        play_obj_audio(audio_SFX_start_scene_to_main)

        -- 初始化此出口所需属性
        obj_UI_start_scene_config_resolution_bar_mark[4] = 1
        obj_UI_start_scene_config_resolution_w_x_h[4] = 1
        obj_UI_start_scene_config_resolution_select_res_text[4] = 1
        obj_UI_start_scene_config_menu_dabo_trig[4] = 0.5
        obj_UI_start_scene_config_menu_text[4] = 0.5

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_config_resolution_bar_mark,
            anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_config_resolution_w_x_h,
            anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_config_resolution_select_res_text,
            anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
        )
    
        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_dabo_trig,
            anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_text,
            anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
        )

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_resolution_flash_out
    
    end

end

function update_start_scene_config_resolution_bar_mark_twtich_left()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_resolution_bar_mark,
        anim_UI_point_linear_start_scene_config_resolution_bar_mark_left_x
    )


    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_controller_main

    end

end

function update_start_scene_config_resolution_bar_mark_twtich_right()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_resolution_bar_mark,
        anim_UI_point_linear_start_scene_config_resolution_bar_mark_right_x
    )

    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_controller_main

    end

end

function update_start_scene_config_resolution_flash_out()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_resolution_bar_mark,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_resolution_w_x_h,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_resolution_select_res_text,
        anim_UI_point_linear_start_scene_general_flash_out_1_0_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_config_menu_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_config_menu_text,
        anim_UI_point_linear_start_scene_general_flash_in_0p5_1_opacity
    )

    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_config_main
        
    end

end


-- record
function update_start_scene_record_flash_in()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    point_linear_animator(
        obj_UI_start_scene_shutter,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_record_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_record_game_duration_text,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_record_num_0,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_record_num_1,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_record_num_2,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_record_num_3,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_record_num_4,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_record_num_5,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    point_linear_animator(
        obj_UI_start_scene_record_100h_plus_time_indi,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )

    point_linear_animator(
        audio_BGM_start_scene_FTR_high,
        anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
    )
    point_linear_animator(
        audio_BGM_start_scene_FTR_low,
        anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
    )

    update_BGM_VOLUME(audio_BGM_start_scene_FTR_high)
    update_BGM_VOLUME(audio_BGM_start_scene_FTR_low)

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 初始化此出口所需属性 但是目前没有
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_start_scene_record_main
    end
end

function update_start_scene_record_main()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )

    obj_UI_start_scene_record_num_0[8] = GAME_DURATION[1]
    obj_UI_start_scene_record_num_1[8] = GAME_DURATION[2]
    obj_UI_start_scene_record_num_2[8] = GAME_DURATION[3]
    obj_UI_start_scene_record_num_3[8] = GAME_DURATION[4]
    obj_UI_start_scene_record_num_4[8] = GAME_DURATION[5]
    obj_UI_start_scene_record_num_5[8] = GAME_DURATION[6]

    -- 场景出口
    if INPUT_SYS_CURRENT_COMMAND_STATE[1]["Up"] == "Pressing" then
        if SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 0 then
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 1
        else
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID - 1
        end

        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_RECORD_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["Down"] == "Pressing" then
        if SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 1 then
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 0
        else
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1
        end

        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_RECORD_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["D"] == "Pressing" then
        if SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 0 then
        
        elseif SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 1 then

        end

    elseif INPUT_SYS_CURRENT_COMMAND_STATE[1]["C"] == "Pressing" then

    end

end

function update_start_scene_record_twitch_up()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )
    -- 场景出口
    if SCENE_TIMER >= 5 then

    end

end

function update_start_scene_record_twitch_down()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    point_linear_animator(
        obj_UI_start_scene_breath_tag,
        anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
    )
    frame_animator(
        obj_UI_start_scene_console_type_in_mark,
        anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
    )
    -- 场景出口
    if SCENE_TIMER >= 5 then

    end

end

function update_start_scene_record_flash_out()

end