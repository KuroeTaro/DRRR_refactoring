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

end

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
end

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
end

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

                play_obj_audio(audio_SFX_start_scene_scene_out)
    
                current_update_block = update_start_scene_flash_out

            end,
            [1] = function()
                SCENE_TIMER = 0

                -- 双人游戏
                PLAYER_NUMBER = 2

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

                play_obj_audio(audio_SFX_start_scene_scene_out)
    
                current_update_block = update_start_scene_flash_out

            end,
            [2] = function()

            end,
            [3] = function()

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

                play_obj_audio(audio_SFX_start_scene_scene_out)
    
                current_update_block = update_start_scene_flash_out

            end
        }
        local thisFunction = switch[OPTION_ID]
        if thisFunction then 
            thisFunction() 
        end

    -- 场景出口 控制器更新
    elseif (controller_state[0] ~= controller_state[2] or controller_state[1] ~= controller_state[3]) then 
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
        current_update_block = update_start_scene_console_twitch

    end

end

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
        love.event.quit()
    end

end



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

    -- 检测各个动画是否运行完成
    local dabo_trig_x_anim_end = 
    get_point_linear_anim_end_state(
        obj_UI_start_scene_console_dabo_trig,
        anim_UI_frame_start_scene_console_dabo_trig_twtich_x
    )
    local dabo_trig_opacity_anim_end = 
    get_point_linear_anim_end_state(
        obj_UI_start_scene_console_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )
    local option_text_anim_end = 
    get_point_linear_anim_end_state(
        obj_UI_start_scene_option_text,
        anim_UI_point_linear_start_scene_option_text_twitch_x
    )

    -- 场景出口
    if dabo_trig_x_anim_end and dabo_trig_opacity_anim_end and option_text_anim_end then

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

end

function update_start_scene_console_twitch()
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

    -- 检测各个动画是否运行完成
    local dabo_trig_x_anim_end = 
    get_point_linear_anim_end_state(
        obj_UI_start_scene_console_dabo_trig,
        anim_UI_frame_start_scene_console_dabo_trig_twtich_x
    )
    local dabo_trig_opacity_anim_end = 
    get_point_linear_anim_end_state(
        obj_UI_start_scene_console_dabo_trig,
        anim_UI_point_linear_start_scene_general_flash_in_0_1_opacity
    )

    -- 场景出口
    if dabo_trig_x_anim_end and dabo_trig_opacity_anim_end then

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
end