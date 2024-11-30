function update_char_select_scene_flash_in_0f_36f()
    SCENE_TIMER = SCENE_TIMER + 1
    point_linear_animator(obj_UI_char_select_scene_black_solid,anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity)
    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    frame_animator(obj_UI_char_select_scene_first_ring,anim_UI_frame_select_scene_first_ring_f)

    if SCENE_TIMER == 20 then
        play_obj_audio(audio_SFX_char_select_scene_start_SFX_2)
    end

    -- 场景出口
    if SCENE_TIMER >= 36 then 
        -- 初始化此出口所需属性
        obj_UI_char_select_scene_white_solid[4] = 1
        obj_UI_char_select_scene_black_solid[4] = 0
        obj_UI_char_select_scene_first_ring[4] = 0
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_char_select_scene_flash_in_36f_40f
        current_draw_block = draw_char_select_scene_flash_in_36f_40f

    end

end

function update_char_select_scene_flash_in_36f_40f()
    SCENE_TIMER = SCENE_TIMER + 1
    -- 场景出口
    if SCENE_TIMER >= 40 then 
        SCENE_TIMER = 40
        -- 初始化此出口所需属性
        obj_UI_char_select_solid_bg[4] = 1
        obj_UI_char_select_scene_timer[4] = 1
        obj_UI_char_select_scene_white_solid[4] = 1
        obj_UI_char_select_scene_second_glow[4] = 1
        obj_UI_char_select_scene_second_ring[4] = 0.75
        obj_UI_char_select_scene_char_select_bg[4] = 1

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_char_select_scene_white_solid,
            anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_second_glow,
            anim_UI_point_linear_char_select_scene_second_glow_opacity
        )

        init_point_linear_anim_with(
            obj_UI_char_select_scene_second_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_second_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_second_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_second_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x
        )

        -- 更新 current_update_block
        current_update_block = update_char_select_scene_flash_in_40f_1s30f
        current_draw_block = draw_char_select_scene_flash_in_40f_1s30f

    end

end

function update_char_select_scene_flash_in_40f_1s30f()
    SCENE_TIMER = SCENE_TIMER + 1
    local local_scene_timer = SCENE_TIMER

    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_timer(obj_UI_char_select_scene_timer)
    if local_scene_timer < 45 then
        point_linear_animator(
            obj_UI_char_select_scene_white_solid,
            anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity
        )
        point_linear_animator(
            obj_UI_char_select_scene_second_glow,
            anim_UI_point_linear_char_select_scene_second_glow_opacity
        )
        point_linear_animator(
            obj_UI_char_select_scene_second_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_second_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_second_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_second_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_second_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_second_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_second_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_second_glow_alpha_pt5_x
        )

    elseif local_scene_timer == 45 then

    elseif local_scene_timer < 50 then

    elseif local_scene_timer == 50 then

    elseif local_scene_timer < 55 then

    elseif local_scene_timer == 55 then

    elseif local_scene_timer < 60 then

    elseif local_scene_timer == 60 then

    elseif local_scene_timer < 65 then

    elseif local_scene_timer == 65 then

    elseif local_scene_timer < 70 then

    elseif local_scene_timer == 70 then

    elseif local_scene_timer < 75 then

    elseif local_scene_timer == 75 then

    elseif local_scene_timer < 80 then

    elseif local_scene_timer == 80 then

    elseif local_scene_timer < 85 then

    elseif local_scene_timer == 85 then

    elseif local_scene_timer < 90 then

    end

    -- 场景出口
    if local_scene_timer >= 90 then 
        -- 初始化此出口所需属性

        -- 初始化此出口所需要的动画机 

        -- 更新 current_update_block
        current_update_block = update_char_select_scene_flash_in_1s30f_1s50f
        -- current_draw_block = draw_char_select_scene_flash_in_36f_40f

    end

end

function update_char_select_scene_flash_in_1s30f_1s50f()


end

function update_char_select_scene_general()


end 

function update_char_select_scene_flash_out()


end 