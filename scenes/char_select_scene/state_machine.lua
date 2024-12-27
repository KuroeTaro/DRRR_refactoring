function state_machine_UI_char_select_scene_movie_cover_loop(obj)
    local speed = 2
    obj["FCT"][8] = obj["FCT"][8] + 1
    if obj["FCT"][8] > speed then
        obj[8] = obj[8] + 1
        obj["FCT"][8] = 0
    end
    if obj[8] > 9 then
        obj[8] = 0
    end
end

function state_machine_UI_char_select_scene_timer(obj)
    if obj["time"][1] == 0 and obj["time"][2] == 0 then
        return
    end
    obj["time"][3] = obj["time"][3]-1
    if obj["time"][3] == -1 then 
        obj["time"][2] = obj["time"][2]-1
        obj["time"][3] = 60
    end
    if obj["time"][2] == -1 then 
        obj["time"][1] = obj["time"][1]-1
        obj["time"][2] = 9
    end
    if obj["time"][1] == -1 then 
        obj["time"][1] = 0
    end
end

function state_machine_UI_char_select_scene_second_ring_blink(obj)
    obj[4] = 0.8+math.random(-1, 1)*0.03
end

function state_machine_UI_char_select_scene_char_select(obj,obj_char,obj_text,icon_cover,input_id)
    local local_switch = {
        ["idle"] = function() 
            if INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Left"] == "Pressing" then
                obj["state"] = "flash_out"
                obj["sub_animation_time"] = 0

                commmon_char_select_scene_reset_char_text_flash_out(obj_char,obj_text,icon_cover,input_id)

                CHAR_SELECT_LR[input_id] = CHAR_SELECT_LR[input_id] - 1
                if CHAR_SELECT_LR[input_id] == 0 then
                    CHAR_SELECT_LR[input_id] = 8
                end

                init_point_linear_anim_with(
                    obj_char,
                    anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x
                )
                init_point_linear_anim_with(
                    obj_text,
                    anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x
                )

                obj["sub_animation_time"] = obj["sub_animation_time"] + 1

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Right"] == "Pressing" then
                obj["state"] = "flash_out"
                obj["sub_animation_time"] = 0

                commmon_char_select_scene_reset_char_text_flash_out(obj_char,obj_text,icon_cover,input_id)

                CHAR_SELECT_LR[input_id] = CHAR_SELECT_LR[input_id] + 1
                if CHAR_SELECT_LR[input_id] == 9 then
                    CHAR_SELECT_LR[input_id] = 1
                end

                init_point_linear_anim_with(
                    obj_char,
                    anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x
                )
                init_point_linear_anim_with(
                    obj_text,
                    anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x
                )

                obj["sub_animation_time"] = obj["sub_animation_time"] + 1
            end
        end,
        ["flash_in"] = function() 
            point_linear_animator(
                obj_char,
                anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
            )
            point_linear_animator(
                obj_text,
                anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
            )
            point_linear_animator(
                icon_cover,
                anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p1
            )

            obj["sub_animation_time"] = obj["sub_animation_time"] + 1

            if obj["sub_animation_time"] >= 120 then
                obj["state"] = "idle"
                obj["sub_animation_time"] = 0

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Left"] == "Pressing" then
                obj["state"] = "flash_out"
                obj["sub_animation_time"] = 0

                commmon_char_select_scene_reset_char_text_flash_out(obj_char,obj_text,icon_cover,input_id)

                CHAR_SELECT_LR[input_id] = CHAR_SELECT_LR[input_id] - 1
                if CHAR_SELECT_LR[input_id] == 0 then
                    CHAR_SELECT_LR[input_id] = 8
                end

                init_point_linear_anim_with(
                    obj_char,
                    anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x
                )
                init_point_linear_anim_with(
                    obj_text,
                    anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x
                )
                
                obj["sub_animation_time"] = obj["sub_animation_time"] + 1

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Right"] == "Pressing" then
                obj["state"] = "flash_out"
                obj["sub_animation_time"] = 0

                commmon_char_select_scene_reset_char_text_flash_out(obj_char,obj_text,icon_cover,input_id)

                CHAR_SELECT_LR[input_id] = CHAR_SELECT_LR[input_id] + 1
                if CHAR_SELECT_LR[input_id] == 9 then
                    CHAR_SELECT_LR[input_id] = 1
                end

                init_point_linear_anim_with(
                    obj_char,
                    anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x
                )
                init_point_linear_anim_with(
                    obj_text,
                    anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x
                )

                obj["sub_animation_time"] = obj["sub_animation_time"] + 1

            end

        end,
        ["flash_out"] = function()
            point_linear_animator(
                obj_char,
                anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x
            )
            point_linear_animator(
                obj_text,
                anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x
            )
            point_linear_animator(
                icon_cover,
                anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0p1_0
            )

            obj["sub_animation_time"] = obj["sub_animation_time"] + 1

            if obj["sub_animation_time"] >= 5 then
                obj["state"] = "flash_in"
                obj["sub_animation_time"] = 0

                commmon_char_select_scene_reset_char_text_flash_in(obj_char,obj_text,icon_cover,input_id)

                obj[8] = CHAR_SELECT_LR[input_id]

                init_point_linear_anim_with(
                    obj_char,
                    anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
                )
                init_point_linear_anim_with(
                    obj_text,
                    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
                )

                obj["sub_animation_time"] = obj["sub_animation_time"] + 1

            end

        end,
    }
    local this_function = local_switch[obj["state"]]
    if this_function then this_function() end
end