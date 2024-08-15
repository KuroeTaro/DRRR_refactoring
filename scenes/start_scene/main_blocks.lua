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
    point_linear_animator(obj_UI_start_scene_breath_tag,anim_UI_point_linear_start_scene_breath_tag_breath_loop_opacity)
    frame_animator(obj_UI_start_scene_console_type_in_mark,anim_UI_frame_start_scene_console_type_in_mark_blink_opacity)

end

function update_start_scene_option_twitch_update()


end

function update_start_scene_sub_config_flash_in()


end

function update_start_scene_sub_config_update()


end

function update_start_scene_sub_config_flash_out()


end

function update_start_scene_sub_record_flash_in()


end

function update_start_scene_sub_record_update()


end

function update_start_scene_sub_record_flash_out()


end

function update_start_scene_sub_config_audio_flash_in()


end

function update_start_scene_sub_config_audio_update()


end

function update_start_scene_sub_config_audio_flash_out()


end

function update_start_scene_sub_config_resolution_flash_in()


end

function update_start_scene_sub_config_resolution_flash_out()


end

function update_start_scene_sub_config_controller_flash_in()


end

function update_start_scene_sub_config_controller_flash_out()


end

function update_start_scene_flash_out()

end