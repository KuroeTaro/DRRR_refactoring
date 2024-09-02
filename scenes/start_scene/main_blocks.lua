function update_start_scene_flash_in()
    SCENE_TIMER = SCENE_TIMER + 1
    point_linear_animator(obj_UI_start_scene_solid_color,anim_UI_point_linear_start_scene_solid_flash_in_opacity)
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    -- 场景出口
    if SCENE_TIMER >= 30 then 
        -- 将SCENE_TIMER设为 0   
        -- 所有obj如果动画机正常运行应该处都处于正确的位置 不进行直接修改
        -- 如果出现了错误 请修改动画机
        SCENE_TIMER = 0

        -- 初始化此出口所需要的动画机 但是目前没有

        -- 下一个场景为 update_load_scene_general
        current_update_block = update_start_scene_30f_1s45f
        
    end

end -- 已检查

function update_start_scene_30f_1s45f()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_start_scene_noise_BG_static_loop(obj_UI_start_scene_noise_bg)
    -- 场景出口
    if SCENE_TIMER >= 75 then 
        -- 将SCENE_TIMER设为 0   
        -- 所有obj如果动画机正常运行应该处都处于正确的位置 不进行直接修改
        -- 如果出现了错误 请修改动画机
        SCENE_TIMER = 0

        -- 初始化main所需要的动画机
        init_point_linear_anim_with(obj_UI_start_scene_up_console_text,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
        init_point_linear_anim_with(obj_UI_start_scene_down_console_text,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
        init_point_linear_anim_with(obj_UI_start_scene_console_type_in_mark,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
        init_point_linear_anim_with(obj_UI_start_scene_console_dabo_trig,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
        init_point_linear_anim_with(obj_UI_start_scene_option_text,anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity)
        init_point_linear_anim_with(obj_UI_start_scene_breath_tag,anim_UI_point_linear_start_scene_general_flash_in_0_0p1_opacity)

        -- 下一个场景为 update_load_scene_general
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
        -- 将SCENE_TIMER设为 0   
        -- 所有obj如果动画机正常运行应该处都处于正确的位置 不进行直接修改
        -- 如果出现了错误 请修改动画机
        SCENE_TIMER = 0

        -- 初始化main所需要的动画机
        init_point_linear_anim_with(obj_UI_start_scene_breath_tag,anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity)
        init_frame_anim_with(obj_UI_start_scene_console_type_in_mark,anim_UI_frame_start_scene_console_type_in_mark_blink_opacity)

        -- 下一个场景为 update_load_scene_general
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

    -- 场景出口 option twitch left
    if command_state[1]["Left"] == "Pressing" then 
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

        -- option twitch 进入前属性 preset
        obj_UI_start_scene_breath_tag[4] = 0
        obj_UI_start_scene_console_dabo_trig[1] = 75
        obj_UI_start_scene_console_dabo_trig[4] = 0
        obj_UI_start_scene_option_text[1] = OPTION_TEXT_X_POSITION_TABLE[OPTION_ID + 1]
        obj_UI_start_scene_option_text[8] = OPTION_ID
        obj_UI_start_scene_console_type_in_mark[4] = 0

        -- option twitch 进入前动画 preset
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

        current_update_block = update_start_scene_option_twitch

    -- 场景出口 option twitch right
    elseif command_state[1]["Right"] == "Pressing" then 
        SCENE_TIMER = 0
        -- 播放twitch音频
        play_obj_audio(audio_SFX_start_scene_click)

        -- 轮转 option id
        if OPTION_ID == 4 then 
            OPTION_ID = 0 
        else 
            OPTION_ID = OPTION_ID + 1
        end

        -- 轮转 CONSOLE TEXT
        CONSOLE_TEXT_1_ID = OPTION_ID
        CONSOLE_TEXT_2_ID = OPTION_ID

        -- option twitch 进入前属性 preset
        obj_UI_start_scene_breath_tag[4] = 0
        obj_UI_start_scene_console_dabo_trig[1] = 75
        obj_UI_start_scene_console_dabo_trig[4] = 0
        obj_UI_start_scene_option_text[1] = OPTION_TEXT_X_POSITION_TABLE[OPTION_ID + 1]
        obj_UI_start_scene_option_text[8] = OPTION_ID
        obj_UI_start_scene_console_type_in_mark[4] = 0

        -- option twitch 进入前动画 preset
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

        current_update_block = update_start_scene_option_twitch

    -- 场景出口 option 确认
    elseif command_state[1]["D"] == "Pressing" then 
        SCENE_TIMER = 0
        play_obj_audio(audio_SFX_start_scene_to_main)
        local switch = {
            [0] = function()
                SCENE_TIMER = 0

                -- 训练模式
                PLAYER_NUMBER = 1

                -- 播放scene out audio
                play_obj_audio(audio_SFX_start_scene_scene_out)

                -- option select training 进入前属性 preset
                obj_UI_start_scene_solid_color[4] = 0
                    -- audio
                audio_BGM_start_scene_FTR_high[1] = 1

                -- option select training 进入前动画 preset
                init_point_linear_anim_with(
                    obj_UI_start_scene_solid_color,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )

                    -- audio
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )
                -- audio
                update_BGM_volume(audio_BGM_start_scene_FTR_high)
    
                current_update_block = update_start_scene_flash_out

            end,
            [1] = function()
                SCENE_TIMER = 0

                -- 双人游戏
                PLAYER_NUMBER = 2

                -- 播放scene out audio
                play_obj_audio(audio_SFX_start_scene_scene_out)

                -- option select matching 进入前属性 preset
                obj_UI_start_scene_solid_color[4] = 0
                -- audio
                audio_BGM_start_scene_FTR_high[1] = 1

                -- option select matching 进入前动画 preset
                init_point_linear_anim_with(
                    obj_UI_start_scene_solid_color,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )

                    -- audio
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )
                -- audio
                update_BGM_volume(audio_BGM_start_scene_FTR_high)
    
                current_update_block = update_start_scene_flash_out

            end,
            [2] = function()
                SCENE_TIMER = 0
                SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 0
                -- 播放scene out to sub
                play_obj_audio(audio_SFX_start_scene_to_sub)

                -- option select config 进入前属性 preset
                obj_UI_start_scene_shutter[4] = 0
                obj_UI_start_scene_config_menu_dabo_trig[4] = 0
                obj_UI_start_scene_config_menu_text[4] = 0
                    -- audio
                audio_BGM_start_scene_FTR_high[1] = 1
                audio_BGM_start_scene_FTR_low[1] = 0

                -- option select config 进入前动画 preset
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
                    -- audio animation init
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_low,
                    anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
                )

                update_BGM_volume(audio_BGM_start_scene_FTR_high)
                update_BGM_volume(audio_BGM_start_scene_FTR_low)

                current_update_block = update_start_scene_config_flash_in
                current_draw_block = draw_start_scene_config_sub_scene

            end,
            [3] = function()
                SCENE_TIMER = 0
                SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 0
                
                -- 播放scene out to sub
                play_obj_audio(audio_SFX_start_scene_to_sub)

                -- option select record 进入前属性 preset
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

                    -- audio
                update_BGM_volume(audio_BGM_start_scene_FTR_high)
                update_BGM_volume(audio_BGM_start_scene_FTR_low)

                -- option select record 进入前动画 preset
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

                    -- audio
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_low,
                    anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
                )

                update_BGM_volume(audio_BGM_start_scene_FTR_high)
                update_BGM_volume(audio_BGM_start_scene_FTR_low)

                current_update_block = update_start_scene_record_flash_in
                current_draw_block = draw_start_scene_record_sub_scene

            end,
            [4] = function()
                SCENE_TIMER = 0
                -- 播放scene out audio
                play_obj_audio(audio_SFX_start_scene_scene_out)

                -- option select training 进入前属性 preset
                obj_UI_start_scene_solid_color[4] = 0
                    -- audio
                update_BGM_volume(audio_BGM_start_scene_FTR_high)
                update_SFX_volume(audio_SFX_start_scene_scene_out)

                -- option select training 进入前动画 preset
                init_point_linear_anim_with(
                    obj_UI_start_scene_solid_color,
                    anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
                )
                    -- audio
                init_point_linear_anim_with(
                    audio_BGM_start_scene_FTR_high,
                    anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
                )

                update_BGM_volume(audio_BGM_start_scene_FTR_high)
    
                current_update_block = update_start_scene_flash_out

            end
        }
        local thisFunction = switch[OPTION_ID]
        if thisFunction then 
            thisFunction() 
        end

    -- 场景出口 控制器更新
    elseif (controller_state[0] ~= controller_state[2] or controller_state[1] ~= controller_state[3]) then 
        SCENE_TIMER = 0
        -- 检测控制器具体变化 修改console text
        if controller_state[0] == 0 and controller_state[1] == 0 then 
            CONSOLE_TEXT_2_ID = 5
        elseif controller_state[0] == 1 and controller_state[1] == 0 then 
            CONSOLE_TEXT_2_ID = 6
        elseif controller_state[0] == 1 and controller_state[1] == 1 then 
            CONSOLE_TEXT_2_ID = 7
        end
        CONSOLE_TEXT_1_ID = 5

        -- console twitch 进入前属性 preset
        obj_UI_start_scene_console_dabo_trig[1] = 75
        obj_UI_start_scene_console_dabo_trig[4] = 0

        -- console twitch 进入前动画 preset
        init_point_linear_anim_with(
            obj_UI_start_scene_console_dabo_trig,
            anim_UI_frame_start_scene_console_dabo_trig_twtich_x
        )
        init_point_linear_anim_with(
            obj_UI_start_scene_console_dabo_trig,
            anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
        )

        -- 更新 update block
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
    update_BGM_volume(audio_BGM_start_scene_FTR_high)

    -- 场景出口
    if audio_SFX_start_scene_scene_out["audio"]:isPlaying() == false then
        SCENE_TIMER = 0
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
        -- main 回归前动画 preset
        obj_UI_start_scene_breath_tag[4] = 0.1
        obj_UI_start_scene_console_dabo_trig[1] = 75
        obj_UI_start_scene_console_dabo_trig[4] = 1
        obj_UI_start_scene_console_type_in_mark[1] = CONSOLE_TYPE_IN_MARK_X_POSITION_TABLE[CONSOLE_TEXT_2_ID + 1]
        obj_UI_start_scene_console_type_in_mark[4] = 0

        obj_UI_start_scene_up_console_text[8] = CONSOLE_TEXT_1_ID
        obj_UI_start_scene_down_console_text[8] = CONSOLE_TEXT_2_ID

        -- 初始化main所需要的动画机
        init_point_linear_anim_with(
            obj_UI_start_scene_breath_tag,
            anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity
        )
        init_frame_anim_with(
            obj_UI_start_scene_console_type_in_mark,
            anim_UI_frame_start_scene_console_type_in_mark_blink_opacity
        )

        -- 下一个场景为 update_load_scene_general
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
        -- main 回归前属性 preset
        obj_UI_start_scene_console_dabo_trig[1] = 75
        obj_UI_start_scene_console_dabo_trig[4] = 1
        obj_UI_start_scene_console_type_in_mark[1] = CONSOLE_TYPE_IN_MARK_X_POSITION_TABLE[CONSOLE_TEXT_2_ID + 1]
        obj_UI_start_scene_console_type_in_mark[4] = 0

        obj_UI_start_scene_up_console_text[8] = CONSOLE_TEXT_1_ID
        obj_UI_start_scene_down_console_text[8] = CONSOLE_TEXT_2_ID

        -- main运行的动画没有断过 所以不进行动画preset

        -- 下一个场景为 update_load_scene_general
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
    -- flash in 动画
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
        -- audio
    point_linear_animator(
        audio_BGM_start_scene_FTR_high,
        anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
    )
    point_linear_animator(
        audio_BGM_start_scene_FTR_low,
        anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
    )
    update_BGM_volume(audio_BGM_start_scene_FTR_high)
    update_BGM_volume(audio_BGM_start_scene_FTR_low)

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 更新 update block
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
    if command_state[1]["Up"] == "Pressing" then
        SCENE_TIMER = 0
        play_obj_audio(audio_SFX_start_scene_click)
        -- 更新 config dabo trig ID
        if SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID ~= 0 then
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID - 1
        end

        -- 更新 twitch 场景属性 preset
        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_CONFIG_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

        -- 更新 twitch 场景动画 preset
        init_point_linear_anim_with(
            obj_UI_start_scene_config_menu_dabo_trig,
            anim_UI_point_linear_start_scene_config_menu_dabo_trig_up_0_y
        )
        
        -- 更新 update block
        current_update_block = update_start_scene_config_twitch_up

    elseif command_state[1]["Down"] == "Pressing" then
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

    elseif command_state[1]["D"] == "Pressing" then
        SCENE_TIMER = 0
        if SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 0 then
            -- audio
            -- 播放scene out to sub
            play_obj_audio(audio_SFX_start_scene_to_sub)

            -- current bar mark ID
            AUDIO_BAR_MARK_ID = 0

            -- object 属性preset
                -- audio 子界面的几个object flash in 前自身的设置
            obj_UI_start_scene_config_audio_bar_mark[4] = 0
            obj_UI_start_scene_config_audio_BGM_bar_light[4] = 0
            obj_UI_start_scene_config_audio_SFX_bar_light[4] = 0
            obj_UI_start_scene_config_audio_BGM_bar_gauge[4] = 0
            obj_UI_start_scene_config_audio_SFX_bar_gauge[4] = 0
            obj_UI_start_scene_config_audio_text[4] = 0

                -- audio 子界面的几个object flash in 前 config main object 的设置
            obj_UI_start_scene_config_menu_dabo_trig[4] = 1
            obj_UI_start_scene_config_menu_text[4] = 1

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
                -- audio 子界面的几个object flash in 前 config main object 的设置
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

        elseif SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 1 then
            -- controller

                -- 播放scene out to sub
            play_obj_audio(audio_SFX_start_scene_to_sub)

            -- current bar mark ID
            AUDIO_BAR_MARK_ID = 0
            obj_UI_start_scene_config_controller_bar_mark_1P["state"] = "off_state"
            obj_UI_start_scene_config_controller_bar_mark_2P["state"] = "off_state"

            -- object 属性preset
                -- controller 子界面的几个object flash in 前自身的设置
            obj_UI_start_scene_config_controller_bar_mark_1P[4] = 0
            obj_UI_start_scene_config_controller_bar_mark_2P[4] = 0
            obj_UI_start_scene_config_controller_indi_text[4] = 0

                -- controller 子界面的几个object flash in 前 config main object 的设置
            obj_UI_start_scene_config_menu_dabo_trig[4] = 1
            obj_UI_start_scene_config_menu_text[4] = 1

            -- object 动画preset
                -- controller 子界面的几个object flash in 前自身的设置
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
                -- controller 子界面的几个object flash in 前 config main object 的设置
            init_point_linear_anim_with(
                obj_UI_start_scene_config_menu_dabo_trig,
                anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
            )
            init_point_linear_anim_with(
                obj_UI_start_scene_config_menu_text,
                anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
            )
            
            -- 更新 update block
            current_update_block = update_start_scene_config_controller_flash_in
            current_draw_block = draw_start_scene_config_controller_sub_scene

        elseif SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 2 then
            -- resolution

            play_obj_audio(audio_SFX_start_scene_to_sub)

            -- current bar mark ID
            get_current_resolution()
            obj_UI_start_scene_config_resolution_w_x_h[8] = RES_PARTTEN

            -- object 属性preset
                -- controller 子界面的几个object flash in 前自身的设置
            obj_UI_start_scene_config_resolution_bar_mark[4] = 0
            obj_UI_start_scene_config_resolution_w_x_h[4] = 0
            obj_UI_start_scene_config_resolution_select_res_text[4] = 0

                -- controller 子界面的几个object flash in 前 config main object 的设置
            obj_UI_start_scene_config_menu_dabo_trig[4] = 1
            obj_UI_start_scene_config_menu_text[4] = 1

            -- object 动画preset
                -- controller 子界面的几个object flash in 前自身的设置
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
                -- controller 子界面的几个object flash in 前 config main object 的设置
            init_point_linear_anim_with(
                obj_UI_start_scene_config_menu_dabo_trig,
                anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
            )
            init_point_linear_anim_with(
                obj_UI_start_scene_config_menu_text,
                anim_UI_point_linear_start_scene_general_flash_out_1_0p5_opacity
            )
            
            -- 更新 update block
            current_update_block = update_start_scene_config_resolution_flash_in
            current_draw_block = draw_start_scene_config_resolution_sub_scene

        elseif SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 3 then
            SCENE_TIMER = 0
            -- 播放scene out to main
            play_obj_audio(audio_SFX_start_scene_to_main)

            -- option select config 进入前属性 preset
            obj_UI_start_scene_shutter[4] = 1
            obj_UI_start_scene_config_menu_dabo_trig[4] = 1
            obj_UI_start_scene_config_menu_text[4] = 1

            -- option select config 进入前动画 preset
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

                -- audio animation init
            init_point_linear_anim_with(
                audio_BGM_start_scene_FTR_high,
                anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
            )
            init_point_linear_anim_with(
                audio_BGM_start_scene_FTR_low,
                anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
            )

            update_BGM_volume(audio_BGM_start_scene_FTR_high)
            update_BGM_volume(audio_BGM_start_scene_FTR_low)

            current_update_block = update_start_scene_config_flash_out

        end

    elseif command_state[1]["C"] == "Pressing" then
        SCENE_TIMER = 0
        -- 播放scene out to sub
        play_obj_audio(audio_SFX_start_scene_to_main)

        -- option select config 进入前属性 preset
        obj_UI_start_scene_shutter[4] = 1
        obj_UI_start_scene_config_menu_dabo_trig[4] = 1
        obj_UI_start_scene_config_menu_text[4] = 1

        -- option select config 进入前动画 preset
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

            -- audio animation init
        init_point_linear_anim_with(
            audio_BGM_start_scene_FTR_high,
            anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
        )
        init_point_linear_anim_with(
            audio_BGM_start_scene_FTR_low,
            anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
        )

        update_BGM_volume(audio_BGM_start_scene_FTR_high)
        update_BGM_volume(audio_BGM_start_scene_FTR_low)

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
        -- 更新 twitch 场景属性 preset
        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_CONFIG_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

        -- 更新 update block
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
        -- 更新 twitch 场景属性 preset
        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_CONFIG_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

        -- 更新 update block
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
    -- start scene main 进入动画
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

        -- audio
    point_linear_animator(
        audio_BGM_start_scene_FTR_high,
        anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
    )
    point_linear_animator(
        audio_BGM_start_scene_FTR_low,
        anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
    )

    update_BGM_volume(audio_BGM_start_scene_FTR_high)
    update_BGM_volume(audio_BGM_start_scene_FTR_low)

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 0
        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_CONFIG_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]
        
        -- 更新 update block
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
        -- audio 子界面的几个object flash in 前 config main object 的设置
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
        -- 更新 update block
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

    if command_state[1]["D"] == "Pressing" then
        play_obj_audio(audio_SFX_start_scene_click)
    end

    -- 场景出口
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
        -- object 回归 audio main 属性preset
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

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

        -- object 回归 audio main 属性preset
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

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
        
        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

        local local_volume_table = {
            BGM_volume,
            SFX_volume
        }

        local_alpha_bar_table[AUDIO_BAR_MARK_ID+1][1] = local_volume_table[AUDIO_BAR_MARK_ID+1]*23

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

        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

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

        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

        local local_volume_table = {
            BGM_volume,
            SFX_volume
        }

        local_alpha_bar_table[AUDIO_BAR_MARK_ID+1][1] = local_volume_table[AUDIO_BAR_MARK_ID+1]*23

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

        obj_UI_start_scene_config_audio_bar_mark[1] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION
        obj_UI_start_scene_config_audio_bar_mark[2] = 
        BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE[AUDIO_BAR_MARK_ID+1]

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
        -- audio 子界面的几个object flash in 前 config main object 的设置
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
        -- current bar mark ID
        AUDIO_BAR_MARK_ID = 0

        write_volume_config()

        -- 更新 update block
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
    -- object 动画preset
    -- controller 子界面的几个object flash in 前自身的设置
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
        -- controller 子界面的几个object flash in 前 config main object 的设置
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
        -- 更新 update block
        current_update_block = update_start_scene_config_controller_main

    end

end

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
    if command_state[1]["C"] == "Pressing" or command_state[2]["C"] == "Pressing" then
        SCENE_TIMER = 0

        play_obj_audio(audio_SFX_start_scene_to_main)

        -- prop preset
        obj_UI_start_scene_config_controller_bar_mark_1P[4] = 0.5
        obj_UI_start_scene_config_controller_bar_mark_2P[4] = 0.5

        -- anim preset
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

        current_update_block = update_start_scene_config_controller_flash_out
        
    end

end

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
        -- 更新 update block
        current_update_block = update_start_scene_config_main

    end

end

    -- config resolution 
function update_start_scene_config_resolution_flash_in()

end

function update_start_scene_config_resolution_main()

end

function update_start_scene_config_resolution_bar_mark_twtich_up()

end

function update_start_scene_config_resolution_bar_mark_twtich_down()

end

function update_start_scene_config_resolution_bar_mark_twtich_left()

end

function update_start_scene_config_resolution_bar_mark_twtich_right()

end

function update_start_scene_config_resolution_flash_out()

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

    -- flash in 动画
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

        -- audio
    point_linear_animator(
        audio_BGM_start_scene_FTR_high,
        anim_UI_point_linear_start_scene_audio_flash_out_1_0_volume
    )
    point_linear_animator(
        audio_BGM_start_scene_FTR_low,
        anim_UI_point_linear_start_scene_audio_flash_in_0_1_volume
    )

    update_BGM_volume(audio_BGM_start_scene_FTR_high)
    update_BGM_volume(audio_BGM_start_scene_FTR_low)

    -- 场景出口
    if SCENE_TIMER >= 5 then
        SCENE_TIMER = 0
        -- 更新 update block
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
    if command_state[1]["Up"] == "Pressing" then
        if SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 0 then
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 1
        else
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID - 1
        end

        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_RECORD_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

    elseif command_state[1]["Down"] == "Pressing" then
        if SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 1 then
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 0
        else
            SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1
        end

        obj_UI_start_scene_config_menu_dabo_trig[2] = 
        DABO_TIRG_RECORD_SUB_SCENE_Y_POSITION_TABLE[SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID + 1]

    elseif command_state[1]["D"] == "Pressing" then
        if SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 0 then
        
        elseif SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID == 1 then

        end

    elseif command_state[1]["C"] == "Pressing" then

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