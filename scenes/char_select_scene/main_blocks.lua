function update_char_select_scene_flash_in_0f_36f()
    SCENE_TIMER = SCENE_TIMER + 1
    point_linear_animator(obj_UI_char_select_scene_black_solid,anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity)
    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_start_0f_110f(obj_UI_char_select_scene_start_0f_110f)

    if SCENE_TIMER == 20 then
        play_obj_audio(audio_SFX_char_select_scene_start_SFX_2)
    end

    -- 场景出口
    if SCENE_TIMER >= 36 then 
        -- 初始化此出口所需属性
        -- obj_UI_char_select_scene_white_solid[4] = 1
        obj_UI_char_select_scene_black_solid[4] = 0
        -- obj_UI_char_select_scene_first_ring[4] = 0
        -- 初始化此出口所需要的动画机 但是目前没有

        -- 更新 current_update_block
        current_update_block = update_char_select_scene_flash_in_36f_40f
        current_draw_block = draw_char_select_scene_flash_in_36f_40f

    end

end

function update_char_select_scene_flash_in_36f_40f()
    SCENE_TIMER = SCENE_TIMER + 1
    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_start_0f_110f(obj_UI_char_select_scene_start_0f_110f)
    -- 场景出口
    if SCENE_TIMER >= 40 then 
        SCENE_TIMER = 40
        -- 初始化此出口所需属性
        obj_UI_char_select_scene_timer[4] = 1
        obj_UI_char_select_scene_glow[4] = 1
        obj_UI_char_select_scene_ring[4] = 0.75

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_char_select_scene_glow,
            anim_UI_point_linear_char_select_scene_glow_opacity
        )

        init_point_linear_anim_with(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )

        -- 更新 current_update_block
        current_update_block = update_char_select_scene_flash_in_40f_130f
        current_draw_block = draw_char_select_scene_flash_in_40f_130f

    end

end

function update_char_select_scene_flash_in_40f_130f()
    SCENE_TIMER = SCENE_TIMER + 1
    local scene_timer = SCENE_TIMER
    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_start_0f_110f(obj_UI_char_select_scene_start_0f_110f)

    if scene_timer < 60 then
        point_linear_animator(
            obj_UI_char_select_scene_glow,
            anim_UI_point_linear_char_select_scene_glow_opacity
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )

    elseif scene_timer == 60 then
        point_linear_animator(
            obj_UI_char_select_scene_glow,
            anim_UI_point_linear_char_select_scene_glow_opacity
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )

        obj_UI_char_select_scene_icon_select_R[1] = ICON_COVER_POSITION[CHAR_SELECT_LR[2]][1]
        obj_UI_char_select_scene_icon_select_R[2] = ICON_COVER_POSITION[CHAR_SELECT_LR[2]][2]
        obj_UI_char_select_scene_icon_select_R[4] = 0
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_select_R,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p5
        )

    elseif scene_timer < 65 then
        point_linear_animator(
            obj_UI_char_select_scene_glow,
            anim_UI_point_linear_char_select_scene_glow_opacity
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )

        point_linear_animator(
            obj_UI_char_select_scene_icon_select_R,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p5
        )

    elseif scene_timer == 65 then
        point_linear_animator(
            obj_UI_char_select_scene_glow,
            anim_UI_point_linear_char_select_scene_glow_opacity
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )

        obj_UI_char_select_scene_icon_select_L[1] = ICON_COVER_POSITION[CHAR_SELECT_LR[1]][1]
        obj_UI_char_select_scene_icon_select_L[2] = ICON_COVER_POSITION[CHAR_SELECT_LR[1]][2]
        obj_UI_char_select_scene_icon_select_L[4] = 0
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_select_L,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p5
        )

        obj_UI_char_select_scene_char_select_left[4] = 0
        obj_UI_char_select_scene_char_select_left_char[1] = LEFT_CHAR_SELECT_CHAR_POSITION[CHAR_SELECT_LR[1]][1]
        obj_UI_char_select_scene_char_select_left_char[2] = LEFT_CHAR_SELECT_CHAR_POSITION[CHAR_SELECT_LR[1]][2]
        obj_UI_char_select_scene_char_select_left_char[7] = LEFT_CHAR_SELECT_CHAR_POSITION[CHAR_SELECT_LR[1]][3]
        obj_UI_char_select_scene_char_select_left_text[1] = LEFT_CHAR_SELECT_TEXT_POSITION[CHAR_SELECT_LR[1]][1]
        obj_UI_char_select_scene_char_select_left_text[2] = LEFT_CHAR_SELECT_TEXT_POSITION[CHAR_SELECT_LR[1]][2]
        obj_UI_char_select_scene_char_select_left_text[7] = LEFT_CHAR_SELECT_TEXT_POSITION[CHAR_SELECT_LR[1]][3]
        init_point_linear_anim_with(
            obj_UI_char_select_scene_char_select_left,
            anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_char_select_left_char,
            anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_char_select_left_text,
            anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
        )
    elseif scene_timer < 70 then
        point_linear_animator(
            obj_UI_char_select_scene_glow,
            anim_UI_point_linear_char_select_scene_glow_opacity
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )

        point_linear_animator(
            obj_UI_char_select_scene_icon_select_L,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p5
        )

        point_linear_animator(
            obj_UI_char_select_scene_char_select_left,
            anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_char,
            anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_text,
            anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
        )
    elseif scene_timer == 70 then
        point_linear_animator(
            obj_UI_char_select_scene_glow,
            anim_UI_point_linear_char_select_scene_glow_opacity
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )

        point_linear_animator(
            obj_UI_char_select_scene_icon_select_R,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p5
        )

        
        point_linear_animator(
            obj_UI_char_select_scene_char_select_left,
            anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_char,
            anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_text,
            anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
        )


        if GAME_MODE ~= 0 then
            obj_UI_char_select_scene_char_select_right[4] = 0
            obj_UI_char_select_scene_char_select_right_char[1] = RIGHT_CHAR_SELECT_CHAR_POSITION[CHAR_SELECT_LR[2]][1]
            obj_UI_char_select_scene_char_select_right_char[2] = RIGHT_CHAR_SELECT_CHAR_POSITION[CHAR_SELECT_LR[2]][2]
            obj_UI_char_select_scene_char_select_right_char[7] = RIGHT_CHAR_SELECT_CHAR_POSITION[CHAR_SELECT_LR[2]][3]
            obj_UI_char_select_scene_char_select_right_text[1] = RIGHT_CHAR_SELECT_TEXT_POSITION[CHAR_SELECT_LR[2]][1]
            obj_UI_char_select_scene_char_select_right_text[2] = RIGHT_CHAR_SELECT_TEXT_POSITION[CHAR_SELECT_LR[2]][2]
            obj_UI_char_select_scene_char_select_right_text[7] = RIGHT_CHAR_SELECT_TEXT_POSITION[CHAR_SELECT_LR[2]][3]
            init_point_linear_anim_with(
                obj_UI_char_select_scene_char_select_right,
                anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1
            )
            init_point_linear_anim_with(
                obj_UI_char_select_scene_char_select_right_char,
                anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
            )
            init_point_linear_anim_with(
                obj_UI_char_select_scene_char_select_right_text,
                anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
            )
        else
            obj_UI_char_select_scene_char_select_right[4] = 0
            obj_UI_char_select_scene_char_select_right_char[1] = 1600
            obj_UI_char_select_scene_char_select_right_char[2] = 900
            obj_UI_char_select_scene_char_select_right_char[7] = 0
            obj_UI_char_select_scene_char_select_right_text[1] = 1600
            obj_UI_char_select_scene_char_select_right_text[2] = 900
            obj_UI_char_select_scene_char_select_right_text[7] = 0
            init_point_linear_anim_with(
                obj_UI_char_select_scene_char_select_right,
                anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1
            )
        end
    elseif scene_timer < 75 then
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )


        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_char,
            anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_text,
            anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_char_select_right,
            anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1
        )
        if GAME_MODE ~= 0 then
            point_linear_animator(
                obj_UI_char_select_scene_char_select_right_char,
                anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
            )
            point_linear_animator(
                obj_UI_char_select_scene_char_select_right_text,
                anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
            )
        end

    elseif scene_timer == 75 then
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )


        point_linear_animator(
            obj_UI_char_select_scene_icon_select_L,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p5
        )


        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_char,
            anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_text,
            anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_char_select_right,
            anim_UI_point_linear_char_select_scene_char_select_flash_in_opacity_0_1
        )
        if GAME_MODE ~= 0 then
            point_linear_animator(
                obj_UI_char_select_scene_char_select_right_char,
                anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
            )
            point_linear_animator(
                obj_UI_char_select_scene_char_select_right_text,
                anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
            )
        end

    elseif scene_timer < 90 then
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )


        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_char,
            anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_text,
            anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
        )
        if GAME_MODE ~= 0 then
            point_linear_animator(
                obj_UI_char_select_scene_char_select_right_char,
                anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
            )
            point_linear_animator(
                obj_UI_char_select_scene_char_select_right_text,
                anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
            )
        end
        
    elseif scene_timer == 90 then
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )


        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_char,
            anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_char_select_left_text,
            anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
        )
        if GAME_MODE ~= 0 then
            point_linear_animator(
                obj_UI_char_select_scene_char_select_right_char,
                anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
            )
            point_linear_animator(
                obj_UI_char_select_scene_char_select_right_text,
                anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
            )
        end

        obj_UI_char_select_scene_char_select_left["select_state"] = "idle"
        obj_UI_char_select_scene_char_select_left["flash_state"] = "flash_in"
        obj_UI_char_select_scene_char_select_right["select_state"] = "idle"
        obj_UI_char_select_scene_char_select_right["flash_state"] = "flash_in"
    elseif scene_timer < 130 then
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt1_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt2_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt4_y
        )
        point_linear_animator(
            obj_UI_char_select_scene_glow["alpha_points"],
            anim_UI_point_linear_char_select_scene_glow_alpha_pt5_x
        )

        state_machine_UI_char_select_scene_char_select(1)
        if GAME_MODE ~= 0 then
            state_machine_UI_char_select_scene_char_select(2)
        end
    end

    -- 场景出口
    if scene_timer >= 130 then 
        state_machine_UI_char_select_scene_char_select(1)
        if GAME_MODE ~= 0 then
            state_machine_UI_char_select_scene_char_select(2)
        end

        -- 初始化此出口所需属性
        SCENE_TIMER = 0

        -- 初始化此出口所需要的动画机 

        -- 更新 current_update_block
        current_update_block = update_char_select_scene_main
        current_draw_block = draw_char_select_scene_main

    end

end

function update_char_select_scene_main()
    SCENE_TIMER = SCENE_TIMER + 1
    local scene_timer = SCENE_TIMER

    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_timer(obj_UI_char_select_scene_timer)
    state_machine_UI_char_select_scene_ring_blink(obj_UI_char_select_scene_ring)

    state_machine_UI_char_select_scene_char_select(1)
    if GAME_MODE ~= 0 then
        state_machine_UI_char_select_scene_char_select(2)
    end

    if GAME_MODE == 0 
    and obj_UI_char_select_scene_char_select_left["select_state"] == "locking" 
    then
        -- 初始化此出口所需属性
        SCENE_TIMER = 0
        CHAR_SELECT_LR[2] = CHAR_SELECT_LR[1]

        -- 初始化此出口所需要的动画机 
        obj_UI_char_select_scene_char_select_right["select_state"] = "idle"
        obj_UI_char_select_scene_char_select_right["flash_state"] = "flash_in"
        obj_UI_char_select_scene_char_select_right_char[1] = RIGHT_CHAR_SELECT_CHAR_POSITION[CHAR_SELECT_LR[1]][1]
        obj_UI_char_select_scene_char_select_right_char[2] = RIGHT_CHAR_SELECT_CHAR_POSITION[CHAR_SELECT_LR[1]][2]
        obj_UI_char_select_scene_char_select_right_char[7] = RIGHT_CHAR_SELECT_CHAR_POSITION[CHAR_SELECT_LR[1]][3]
        obj_UI_char_select_scene_char_select_right_text[1] = RIGHT_CHAR_SELECT_TEXT_POSITION[CHAR_SELECT_LR[1]][1]
        obj_UI_char_select_scene_char_select_right_text[2] = RIGHT_CHAR_SELECT_TEXT_POSITION[CHAR_SELECT_LR[1]][2]
        obj_UI_char_select_scene_char_select_right_text[7] = RIGHT_CHAR_SELECT_TEXT_POSITION[CHAR_SELECT_LR[1]][3]
        obj_UI_char_select_scene_char_select_right[8] = CHAR_SELECT_LR[1]

        init_point_linear_anim_with(
            obj_UI_char_select_scene_char_select_right_char,
            anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_char_select_right_text,
            anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
        )

        -- 更新 current_update_block
        current_update_block = update_char_select_scene_train_dummy_select

    elseif GAME_MODE ~= 0 
    and obj_UI_char_select_scene_char_select_left["select_state"] == "locked"
    and obj_UI_char_select_scene_char_select_right["select_state"] == "locked"
    then 
        -- 初始化此出口所需属性
        SCENE_TIMER = 0

        play_obj_audio(audio_SFX_char_select_scene_flash_out)

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_char_select_scene_black_solid,
            anim_UI_point_linear_char_select_scene_black_solid_scene_flash_out
        )
        init_point_linear_anim_with(
            audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit,
            anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1
        )

        update_BGM_VOLUME(audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit)

        -- 更新 current_update_block
        current_update_block = update_char_select_scene_flash_out

    end

end

function update_char_select_scene_train_dummy_select()
    SCENE_TIMER = SCENE_TIMER + 1
    local scene_timer = SCENE_TIMER

    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_timer(obj_UI_char_select_scene_timer)
    state_machine_UI_char_select_scene_ring_blink(obj_UI_char_select_scene_ring)

    state_machine_UI_char_select_scene_char_select_train_dummy()

    point_linear_animator(
        obj_UI_char_select_scene_char_select_left,
        anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5
    )
    point_linear_animator(
        obj_UI_char_select_scene_bar_mark_L,
        anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0
    )
    point_linear_animator(
        obj_UI_char_select_scene_control_method_L,
        anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0
    )

    common_char_select_scene_char_select_left_locked_exit()

    if obj_UI_char_select_scene_char_select_left["select_state"] == "locked"
    and obj_UI_char_select_scene_char_select_right["select_state"] == "locked"
    then 
        -- 初始化此出口所需属性
        SCENE_TIMER = 0

        play_obj_audio(audio_SFX_char_select_scene_flash_out)

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_char_select_scene_black_solid,
            anim_UI_point_linear_char_select_scene_black_solid_scene_flash_out
        )
        init_point_linear_anim_with(
            audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit,
            anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1
        )

        update_BGM_VOLUME(audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit)

        -- 更新 current_update_block
        current_update_block = update_char_select_scene_flash_out

    end

end 

function update_char_select_scene_flash_out()
    SCENE_TIMER = SCENE_TIMER + 1
    local scene_timer = SCENE_TIMER

    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_timer(obj_UI_char_select_scene_timer)
    state_machine_UI_char_select_scene_ring_blink(obj_UI_char_select_scene_ring)

    point_linear_animator(
        obj_UI_char_select_scene_black_solid,
        anim_UI_point_linear_char_select_scene_black_solid_scene_flash_out
    )
    point_linear_animator(
        audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit,
        anim_UI_point_linear_char_select_scene_audio_flash_out_1_0_volume_1
    )

    update_BGM_VOLUME(audio_BGM_char_select_scene_psychedelic_Parade_Re_Edit)

    if audio_SFX_char_select_scene_flash_out["audio"]:isPlaying() == false then
        -- 初始化/加载load_scene所需要的所有素材 对象 动画 图片 音频
        load_game_scene_prep()
        load_scene_prep_routine()

        -- 卸载所有资源 包括object anim image audio
        unload_char_select_scene_all()
    end
end 