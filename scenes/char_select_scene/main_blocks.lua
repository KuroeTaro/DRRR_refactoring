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
        obj_UI_char_select_scene_timer[4] = 1
        obj_UI_char_select_scene_white_solid[4] = 1
        obj_UI_char_select_scene_second_glow[4] = 1
        obj_UI_char_select_scene_second_ring[4] = 0.75
        obj_UI_char_select_scene_char_select_bg[4] = 1

        -- 初始化此出口所需要的动画机
        init_point_linear_anim_with(
            obj_UI_char_select_scene_white_solid,
            anim_UI_point_linear_char_select_scene_white_solid_flash_out_opacity
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
        current_update_block = update_char_select_scene_flash_in_40f_2s10f
        current_draw_block = draw_char_select_scene_flash_in_40f_2s10f

    end

end

function update_char_select_scene_flash_in_40f_2s10f()
    SCENE_TIMER = SCENE_TIMER + 1
    local local_scene_timer = SCENE_TIMER

    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_timer(obj_UI_char_select_scene_timer)
    state_machine_UI_char_select_scene_second_ring_blink(obj_UI_char_select_scene_second_ring)
    
    if local_scene_timer < 45 then
        point_linear_animator(
            obj_UI_char_select_scene_white_solid,
            anim_UI_point_linear_char_select_scene_white_solid_flash_out_opacity
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
        point_linear_animator(
            obj_UI_char_select_scene_white_solid,
            anim_UI_point_linear_char_select_scene_white_solid_flash_out_opacity
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

        obj_UI_char_select_scene_icon_SRT[4] = 0
        obj_UI_char_select_scene_icon_SRT["image_x"] = 0

        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

    elseif local_scene_timer < 50 then
        point_linear_animator(
            obj_UI_char_select_scene_white_solid,
            anim_UI_point_linear_char_select_scene_white_solid_flash_out_opacity
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
        
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

    elseif local_scene_timer == 50 then
        point_linear_animator(
            obj_UI_char_select_scene_white_solid,
            anim_UI_point_linear_char_select_scene_white_solid_flash_out_opacity
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
        
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        obj_UI_char_select_scene_icon_SHINRA[4] = 0
        obj_UI_char_select_scene_icon_SHINRA["image_x"] = 0

        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

    elseif local_scene_timer < 55 then
        point_linear_animator(
            obj_UI_char_select_scene_white_solid,
            anim_UI_point_linear_char_select_scene_white_solid_flash_out_opacity
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
        
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

    elseif local_scene_timer == 55 then
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
        
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        obj_UI_char_select_scene_icon_CKG[4] = 0
        obj_UI_char_select_scene_icon_CKG["image_x"] = 0

        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        obj_UI_char_select_scene_white_solid[4] = 0

    elseif local_scene_timer < 60 then
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

        
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
    elseif local_scene_timer == 60 then
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

        
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        obj_UI_char_select_scene_icon_SZO[4] = 0
        obj_UI_char_select_scene_icon_SZO["image_x"] = 0

        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

    elseif local_scene_timer < 65 then
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

        
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

    elseif local_scene_timer == 65 then
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

        
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        obj_UI_char_select_scene_icon_IZY[4] = 0
        obj_UI_char_select_scene_icon_IZY["image_x"] = 0

        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        obj_UI_char_select_scene_icon_select_R[1] = ICON_COVER_POSITION[CHAR_SELECT_LR[2]][1]
        obj_UI_char_select_scene_icon_select_R[2] = ICON_COVER_POSITION[CHAR_SELECT_LR[2]][2]
        obj_UI_char_select_scene_icon_select_R[4] = 0
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_select_R,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p1
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

    elseif local_scene_timer < 70 then
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

        
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )


        point_linear_animator(
            obj_UI_char_select_scene_icon_select_R,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p1
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

    elseif local_scene_timer == 70 then
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

        
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )


        point_linear_animator(
            obj_UI_char_select_scene_icon_select_R,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p1
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

        obj_UI_char_select_scene_icon_ANRI[4] = 0
        obj_UI_char_select_scene_icon_ANRI["image_x"] = 0
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        obj_UI_char_select_scene_icon_select_L[1] = ICON_COVER_POSITION[CHAR_SELECT_LR[1]][1]
        obj_UI_char_select_scene_icon_select_L[2] = ICON_COVER_POSITION[CHAR_SELECT_LR[1]][2]
        obj_UI_char_select_scene_icon_select_L[4] = 0
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_select_L,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p1
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

    elseif local_scene_timer < 75 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )


        point_linear_animator(
            obj_UI_char_select_scene_icon_select_L,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p1
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

    elseif local_scene_timer == 75 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SRT,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )


        point_linear_animator(
            obj_UI_char_select_scene_icon_select_L,
            anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p1
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

        obj_UI_char_select_scene_icon_KTC[4] = 0
        obj_UI_char_select_scene_icon_KTC["image_x"] = 0
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

    elseif local_scene_timer < 80 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
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

    elseif local_scene_timer == 80 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SHINRA,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
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

        obj_UI_char_select_scene_icon_ERIKAWK3[4] = 0
        obj_UI_char_select_scene_icon_ERIKAWK3["image_x"] = 0
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        init_point_linear_anim_with(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

    elseif local_scene_timer < 85 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
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

    elseif local_scene_timer == 85 then
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

        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_CKG,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
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

    elseif local_scene_timer < 90 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
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

    elseif local_scene_timer == 90 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_SZO,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
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

    elseif local_scene_timer <= 95 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_IZY,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        state_machine_UI_char_select_scene_char_select(1)
        if GAME_MODE ~= 0 then
            state_machine_UI_char_select_scene_char_select(2)
        end

    elseif local_scene_timer <= 100 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ANRI,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        state_machine_UI_char_select_scene_char_select(1)
        if GAME_MODE ~= 0 then
            state_machine_UI_char_select_scene_char_select(2)
        end

    elseif local_scene_timer <= 105 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_KTC,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        state_machine_UI_char_select_scene_char_select(1)
        if GAME_MODE ~= 0 then
            state_machine_UI_char_select_scene_char_select(2)
        end

    elseif local_scene_timer <= 110 then
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


        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_flash_in_opacity_0_1
        )
        point_linear_animator(
            obj_UI_char_select_scene_icon_ERIKAWK3,
            anim_UI_point_linear_char_select_scene_icon_image_flash_in_x
        )

        state_machine_UI_char_select_scene_char_select(1)
        if GAME_MODE ~= 0 then
            state_machine_UI_char_select_scene_char_select(2)
        end
    elseif local_scene_timer < 130 then
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

        state_machine_UI_char_select_scene_char_select(1)
        if GAME_MODE ~= 0 then
            state_machine_UI_char_select_scene_char_select(2)
        end

    end

    -- 场景出口
    if local_scene_timer >= 130 then 
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
    local local_scene_timer = SCENE_TIMER

    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_timer(obj_UI_char_select_scene_timer)
    state_machine_UI_char_select_scene_second_ring_blink(obj_UI_char_select_scene_second_ring)

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
    local local_scene_timer = SCENE_TIMER

    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_timer(obj_UI_char_select_scene_timer)
    state_machine_UI_char_select_scene_second_ring_blink(obj_UI_char_select_scene_second_ring)

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
    local local_scene_timer = SCENE_TIMER

    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    state_machine_UI_char_select_scene_timer(obj_UI_char_select_scene_timer)
    state_machine_UI_char_select_scene_second_ring_blink(obj_UI_char_select_scene_second_ring)

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
        unload_char_select_scene_all()
        current_update_block = function() end
        current_draw_block = function() end
    end
end 