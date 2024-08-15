function update_start_scene_flash_in()
    SCENE_TIMER = SCENE_TIMER + 1
    point_linear_animator(obj_UI_start_scene_solid_color,anim_UI_point_linear_start_scene_solid_flash_in_opacity)
    frame_animator(obj_UI_start_scene_noise_bg,anim_UI_frame_start_scene_noise_bg_loop_f)
    -- 场景出口
    if SCENE_TIMER >= 30 then 
        -- 将SCENE_TIMER设为 0   
        -- 所有obj如果动画机正常运行应该处都处于正确的位置 不进行直接修改
        -- 如果出现了错误 请修改动画机
        SCENE_TIMER = 0

        -- 初始化update所需要的动画机 但是此function没有

        -- 下一个场景为 update_load_scene_general
        current_update_block = update_start_scene_30f_1s45f
        
    end

end

function update_start_scene_30f_1s45f()

end

function update_start_scene_main()

end

function update_start_scene_flash_out()

end