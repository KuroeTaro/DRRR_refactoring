function update_char_select_scene_flash_in_0f_36f()
    SCENE_TIMER = SCENE_TIMER + 1
    point_linear_animator(obj_UI_char_select_scene_black_solid,anim_UI_point_linear_char_select_scene_black_solid_flash_out_opacity)
    state_machine_UI_char_select_scene_movie_cover_loop(obj_UI_char_select_scene_movie_cover)
    frame_animator(obj_UI_char_select_scene_first_ring,anim_UI_frame_select_scene_first_ring_f)

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

    elseif SCENE_TIMER == 20 then
        play_obj_audio(audio_SFX_char_select_scene_start_SFX_2)

    end

end

function update_char_select_scene_flash_in_36f_40f()
    SCENE_TIMER = SCENE_TIMER + 1
    -- 场景出口
    if SCENE_TIMER >= 40 then 
        SCENE_TIMER = 0
        -- 初始化此出口所需属性
        obj_UI_char_select_scene_white_solid[4] = 1

        -- 初始化此出口所需要的动画机
        

        -- 更新 current_update_block
        current_update_block = update_char_select_scene_flash_in_40f_1s30f
        current_draw_block = draw_char_select_scene_flash_in_40f_1s30f
    end

end

function update_char_select_scene_flash_in_40f_1s30f()


end

function update_char_select_scene_flash_in_1s30f_1s50f()


end

function update_char_select_scene_general()


end 

function update_char_select_scene_flash_out()


end 