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

function state_machine_UI_char_select_scene_char_select(input_id,side_id)
    local obj = nil
    local obj_char = nil
    local obj_text = nil
    local obj_icon_cover = nil
    local obj_bar_mark = nil
    local obj_control_method = nil

    if side_id == 1 then
        obj = obj_UI_char_select_scene_char_select_left
        obj_char = obj_UI_char_select_scene_char_select_left_char
        obj_text = obj_UI_char_select_scene_char_select_left_text
        obj_icon_cover = obj_UI_char_select_scene_icon_select_L
        obj_bar_mark = obj_UI_char_select_scene_bar_mark_L
        obj_control_method = obj_UI_char_select_scene_control_method_L
    else
        obj = obj_UI_char_select_scene_char_select_right
        obj_char = obj_UI_char_select_scene_char_select_right_char
        obj_text = obj_UI_char_select_scene_char_select_right_text
        obj_icon_cover = obj_UI_char_select_scene_icon_select_R
        obj_bar_mark = obj_UI_char_select_scene_bar_mark_R
        obj_control_method = obj_UI_char_select_scene_control_method_R
    end

    local local_switch = {
        ["idle"] = function()

            if INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Pressing" then
                obj["select_state"] = "selecting"

                obj[4] = 1
                obj_bar_mark[4] = 0
                obj_control_method[4] = 0

                init_point_linear_anim_with(
                    obj,
                    anim_UI_point_linear_char_select_scene_char_select_selecting_flash_out_opacity_1_0p25
                )
                init_point_linear_anim_with(
                    obj_bar_mark,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_flash_in_opacity_0_1
                )
                init_point_linear_anim_with(
                    obj_control_method,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_flash_in_opacity_0_1
                )

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["C"] == "Pressing" and GAME_MODE == 0 and side_id == 2 then
                obj_UI_char_select_scene_char_select_left["select_state"] = "unlocking"

                obj_UI_char_select_scene_char_select_left[4] = 0.5
                obj_UI_char_select_scene_bar_mark_L[4] = 1
                obj_UI_char_select_scene_control_method_L[4] = 1

                init_point_linear_anim_with(
                    obj_UI_char_select_scene_char_select_left,
                    anim_UI_point_linear_char_select_scene_char_select_unlocking_opacity_0p5_0p25
                )
                init_point_linear_anim_with(
                    obj_UI_char_select_scene_bar_mark_L,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unlocking_opacity_0_1
                )
                init_point_linear_anim_with(
                    obj_UI_char_select_scene_control_method_L,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unlocking_opacity_0_1
                )

                TRAINNING_SIDE = 1
                TRAINNING_OTHER_SIDE = 2

            end

        end,
        ["selecting"] = function()
            
            point_linear_animator(
                obj,
                anim_UI_point_linear_char_select_scene_char_select_selecting_flash_out_opacity_1_0p25
            )
            point_linear_animator(
                obj_bar_mark,
                anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_flash_in_opacity_0_1
            )
            point_linear_animator(
                obj_control_method,
                anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_flash_in_opacity_0_1
            )
            if get_point_linear_anim_end_state(obj,anim_UI_point_linear_char_select_scene_char_select_selecting_flash_out_opacity_1_0p25)
            and get_point_linear_anim_end_state(obj_bar_mark,anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_flash_in_opacity_0_1)
            and get_point_linear_anim_end_state(obj_control_method,anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_flash_in_opacity_0_1)
            then
                obj["select_state"] = "selected"

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["C"] == "Pressing" then
                obj["select_state"] = "unselecting"

                obj[4] = 0.25
                obj_bar_mark[4] = 1
                obj_control_method[4] = 1

                init_point_linear_anim_with(
                    obj,
                    anim_UI_point_linear_char_select_scene_char_select_unselecting_flash_in_opacity_0p25_1
                )
                init_point_linear_anim_with(
                    obj_bar_mark,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_flash_out_opacity_1_0
                )
                init_point_linear_anim_with(
                    obj_control_method,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_flash_out_opacity_1_0
                )

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Pressing" then
                obj["select_state"] = "locking"

                obj[4] = 0.25
                obj_bar_mark[4] = 1
                obj_control_method[4] = 1
                init_point_linear_anim_with(
                    obj,
                    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5
                )
                init_point_linear_anim_with(
                    obj_bar_mark,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0
                )
                init_point_linear_anim_with(
                    obj_control_method,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0
                )

            end
        end,
        ["selected"] = function()

            if INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["C"] == "Pressing" then
                obj["select_state"] = "unselecting"

                obj[4] = 0.25
                obj_bar_mark[4] = 1
                obj_control_method[4] = 1

                init_point_linear_anim_with(
                    obj,
                    anim_UI_point_linear_char_select_scene_char_select_unselecting_flash_in_opacity_0p25_1
                )
                init_point_linear_anim_with(
                    obj_bar_mark,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_flash_out_opacity_1_0
                )
                init_point_linear_anim_with(
                    obj_control_method,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_flash_out_opacity_1_0
                )

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Pressing" then
                obj["select_state"] = "locking"

                if side_id == 1 then
                    TRAINNING_SIDE = 2
                    TRAINNING_OTHER_SIDE = 1
                end

                obj[4] = 0.25
                obj_bar_mark[4] = 1
                obj_control_method[4] = 1
                init_point_linear_anim_with(
                    obj,
                    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5
                )
                init_point_linear_anim_with(
                    obj_bar_mark,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0
                )
                init_point_linear_anim_with(
                    obj_control_method,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0
                )

            end
        end,
        ["unselecting"] = function()

            point_linear_animator(
                obj,
                anim_UI_point_linear_char_select_scene_char_select_unselecting_flash_in_opacity_0p25_1
            )
            point_linear_animator(
                obj_bar_mark,
                anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_flash_out_opacity_1_0
            )
            point_linear_animator(
                obj_control_method,
                anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_flash_out_opacity_1_0
            )

            if get_point_linear_anim_end_state(obj,anim_UI_point_linear_char_select_scene_char_select_unselecting_flash_in_opacity_0p25_1)
            and get_point_linear_anim_end_state(obj_bar_mark,anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_flash_out_opacity_1_0)
            and get_point_linear_anim_end_state(obj_control_method,anim_UI_point_linear_char_select_scene_control_method_bar_mark_unselecting_flash_out_opacity_1_0)
            then
                obj["select_state"] = "idle"

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Pressing" then
                obj["select_state"] = "selecting"

                obj[4] = 1
                obj_bar_mark[4] = 0
                obj_control_method[4] = 0

                init_point_linear_anim_with(
                    obj,
                    anim_UI_point_linear_char_select_scene_char_select_selecting_flash_out_opacity_1_0p25
                )
                init_point_linear_anim_with(
                    obj_bar_mark,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_flash_in_opacity_0_1
                )
                init_point_linear_anim_with(
                    obj_control_method,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_selecting_flash_in_opacity_0_1
                )

            end

        end,
        ["locking"] = function()

            point_linear_animator(
                obj,
                anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5
            )
            point_linear_animator(
                obj_bar_mark,
                anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0
            )
            point_linear_animator(
                obj_control_method,
                anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0
            )

            if get_point_linear_anim_end_state(obj,anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5)
            and get_point_linear_anim_end_state(obj_bar_mark,anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0)
            and get_point_linear_anim_end_state(obj_control_method,anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0)
            then
                obj["select_state"] = "locked"

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["C"] == "Pressing" then
                obj["select_state"] = "unlocking"

                obj[4] = 0.5
                obj_bar_mark[4] = 1
                obj_control_method[4] = 1

                init_point_linear_anim_with(
                    obj,
                    anim_UI_point_linear_char_select_scene_char_select_unlocking_opacity_0p5_0p25
                )
                init_point_linear_anim_with(
                    obj_bar_mark,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unlocking_opacity_0_1
                )
                init_point_linear_anim_with(
                    obj_control_method,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unlocking_opacity_0_1
                )

            end

        end,
        ["locked"] = function()

            if INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["C"] == "Pressing" then
                obj["select_state"] = "unlocking"

                obj[4] = 0.5
                obj_bar_mark[4] = 1
                obj_control_method[4] = 1

                init_point_linear_anim_with(
                    obj,
                    anim_UI_point_linear_char_select_scene_char_select_unlocking_opacity_0p5_0p25
                )
                init_point_linear_anim_with(
                    obj_bar_mark,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unlocking_opacity_0_1
                )
                init_point_linear_anim_with(
                    obj_control_method,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_unlocking_opacity_0_1
                )

            end
        end,
        ["unlocking"] = function()

            point_linear_animator(
                obj,
                anim_UI_point_linear_char_select_scene_char_select_unlocking_opacity_0p5_0p25
            )
            point_linear_animator(
                obj_bar_mark,
                anim_UI_point_linear_char_select_scene_control_method_bar_mark_unlocking_opacity_0_1
            )
            point_linear_animator(
                obj_control_method,
                anim_UI_point_linear_char_select_scene_control_method_bar_mark_unlocking_opacity_0_1
            )

            if get_point_linear_anim_end_state(obj,anim_UI_point_linear_char_select_scene_char_select_unlocking_opacity_0p5_0p25)
            and get_point_linear_anim_end_state(obj_bar_mark,anim_UI_point_linear_char_select_scene_control_method_bar_mark_unlocking_opacity_0_1)
            and get_point_linear_anim_end_state(obj_control_method,anim_UI_point_linear_char_select_scene_control_method_bar_mark_unlocking_opacity_0_1)
            then 
                obj["select_state"] = "selected"

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["D"] == "Pressing" then
                obj["select_state"] = "locking"

                obj[4] = 0.25
                obj_bar_mark[4] = 1
                obj_control_method[4] = 1
                init_point_linear_anim_with(
                    obj,
                    anim_UI_point_linear_char_select_scene_char_select_locking_opacity_0p25_0p5
                )
                init_point_linear_anim_with(
                    obj_bar_mark,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0
                )
                init_point_linear_anim_with(
                    obj_control_method,
                    anim_UI_point_linear_char_select_scene_control_method_bar_mark_locking_flash_out_opacity_1_0
                )

            end
        end,

    }

    state_machine_UI_char_select_scene_char_select_flash_anim(obj,obj_char,obj_text,obj_icon_cover,input_id,side_id)
    state_machine_UI_char_select_scene_char_select_bar_mark_select(obj,obj_bar_mark,input_id,side_id)

    local this_function = local_switch[obj["select_state"]]
    if this_function then this_function() end

end

function state_machine_UI_char_select_scene_char_select_flash_anim(obj,obj_char,obj_text,obj_icon_cover,input_id,side_id)
    local local_switch = {
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
                obj_icon_cover,
                anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p1
            )

            if INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Left"] == "Pressing" 
            and (obj["select_state"] == "idle" or obj["select_state"] == "unselecting") 
            then
                obj["flash_state"] = "flash_out"

                commmon_char_select_scene_reset_char_text_flash_out(obj_char,obj_text,obj_icon_cover,input_id,side_id)

                CHAR_SELECT_LR[side_id] = CHAR_SELECT_LR[side_id] - 1
                if CHAR_SELECT_LR[side_id] == 0 then
                    CHAR_SELECT_LR[side_id] = 8
                end

                init_point_linear_anim_with(
                    obj_char,
                    anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x
                )
                init_point_linear_anim_with(
                    obj_text,
                    anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x
                )

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Right"] == "Pressing"
            and (obj["select_state"] == "idle" or obj["select_state"] == "unselecting") 
            then
                obj["flash_state"] = "flash_out"

                commmon_char_select_scene_reset_char_text_flash_out(obj_char,obj_text,obj_icon_cover,input_id,side_id)

                CHAR_SELECT_LR[side_id] = CHAR_SELECT_LR[side_id] + 1
                if CHAR_SELECT_LR[side_id] == 9 then
                    CHAR_SELECT_LR[side_id] = 1
                end

                init_point_linear_anim_with(
                    obj_char,
                    anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x
                )
                init_point_linear_anim_with(
                    obj_text,
                    anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x
                )
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
                obj_icon_cover,
                anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0p1_0
            )

            if get_point_linear_anim_end_state(obj_char,anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x)
            and get_point_linear_anim_end_state(obj_text,anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x)
            and get_point_linear_anim_end_state(obj_icon_cover,anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0p1_0)
            then
                obj["flash_state"] = "flash_in"

                commmon_char_select_scene_reset_char_text_flash_in(obj_char,obj_text,obj_icon_cover,input_id,side_id)

                obj[8] = CHAR_SELECT_LR[side_id]

                init_point_linear_anim_with(
                    obj_char,
                    anim_UI_point_linear_char_select_scene_char_select_char_flash_in_x
                )
                init_point_linear_anim_with(
                    obj_text,
                    anim_UI_point_linear_char_select_scene_char_select_text_flash_in_x
                )
            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Left"] == "Pressing" 
            and (obj["select_state"] == "idle" or obj["select_state"] == "unselecting") 
            then
                obj["flash_state"] = "flash_out"

                commmon_char_select_scene_reset_char_text_flash_out(obj_char,obj_text,obj_icon_cover,input_id,side_id)

                CHAR_SELECT_LR[side_id] = CHAR_SELECT_LR[side_id] - 1
                if CHAR_SELECT_LR[side_id] == 0 then
                    CHAR_SELECT_LR[side_id] = 8
                end

                init_point_linear_anim_with(
                    obj_char,
                    anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x
                )
                init_point_linear_anim_with(
                    obj_text,
                    anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x
                )

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Right"] == "Pressing"
            and (obj["select_state"] == "idle" or obj["select_state"] == "unselecting") 
            then
                obj["flash_state"] = "flash_out"

                commmon_char_select_scene_reset_char_text_flash_out(obj_char,obj_text,obj_icon_cover,input_id,side_id)

                CHAR_SELECT_LR[side_id] = CHAR_SELECT_LR[side_id] + 1
                if CHAR_SELECT_LR[side_id] == 9 then
                    CHAR_SELECT_LR[side_id] = 1
                end

                init_point_linear_anim_with(
                    obj_char,
                    anim_UI_point_linear_char_select_scene_char_select_char_flash_out_x
                )
                init_point_linear_anim_with(
                    obj_text,
                    anim_UI_point_linear_char_select_scene_char_select_text_flash_out_x
                )
            end
        end,
    }
    local this_function = local_switch[obj["flash_state"]]
    if this_function then this_function() end
end

function state_machine_UI_char_select_scene_char_select_bar_mark_select(obj,obj_bar_mark,input_id,side_id)
    local local_switch = {
        ["idle"] = function() 
            if INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Up"] == "Pressing" then
                obj_bar_mark["state"] = "up_twitch"
                if CONTROL_METHOD[side_id] == 1 then
                    if side_id == 1 then
                        obj_bar_mark[2] = 469
                    else
                        obj_bar_mark[2] = 699
                    end
                    CONTROL_METHOD[side_id] = 0
                end
                init_point_linear_anim_with(obj_bar_mark,anim_UI_point_linear_char_select_scene_bar_mark_up_y)

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Down"] == "Pressing" then
                obj_bar_mark["state"] = "down_twitch"
                if CONTROL_METHOD[side_id] == 0 then
                    if side_id == 1 then
                        obj_bar_mark[2] = 509
                    else
                        obj_bar_mark[2] = 739
                    end
                    CONTROL_METHOD[side_id] = 1
                end
                init_point_linear_anim_with(obj_bar_mark,anim_UI_point_linear_char_select_scene_bar_mark_down_y)
            end
        end,
        ["up_twitch"] = function() 
            point_linear_animator(obj_bar_mark,anim_UI_point_linear_char_select_scene_bar_mark_up_y)
            if get_point_linear_anim_end_state(obj_bar_mark,anim_UI_point_linear_char_select_scene_bar_mark_up_y) then
                obj_bar_mark["state"] = "idle"
            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Up"] == "Pressing" then
                obj_bar_mark["state"] = "up_twitch"
                if CONTROL_METHOD[side_id] == 1 then
                    if side_id == 1 then
                        obj_bar_mark[2] = 469
                    else
                        obj_bar_mark[2] = 699
                    end
                    CONTROL_METHOD[side_id] = 0
                end
                init_point_linear_anim_with(obj_bar_mark,anim_UI_point_linear_char_select_scene_bar_mark_up_y)

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[side_id]["Down"] == "Pressing" then
                obj_bar_mark["state"] = "down_twitch"
                if CONTROL_METHOD[side_id] == 0 then
                    if side_id == 1 then
                        obj_bar_mark[2] = 509
                    else
                        obj_bar_mark[2] = 739
                    end
                    CONTROL_METHOD[side_id] = 1
                end
                init_point_linear_anim_with(obj_bar_mark,anim_UI_point_linear_char_select_scene_bar_mark_down_y)
            end
        end,
        ["down_twitch"] = function() 
            point_linear_animator(obj_bar_mark,anim_UI_point_linear_char_select_scene_bar_mark_down_y)
            if get_point_linear_anim_end_state(obj_bar_mark,anim_UI_point_linear_char_select_scene_bar_mark_down_y) then
                obj_bar_mark["state"] = "idle"
            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Up"] == "Pressing" then
                obj_bar_mark["state"] = "up_twitch"
                if CONTROL_METHOD[side_id] == 1 then
                    if side_id == 1 then
                        obj_bar_mark[2] = 469
                    else
                        obj_bar_mark[2] = 699
                    end
                    CONTROL_METHOD[side_id] = 0
                end
                init_point_linear_anim_with(obj_bar_mark,anim_UI_point_linear_char_select_scene_bar_mark_up_y)

            elseif INPUT_SYS_CURRENT_COMMAND_STATE[input_id]["Down"] == "Pressing" then
                obj_bar_mark["state"] = "down_twitch"
                if CONTROL_METHOD[side_id] == 0 then
                    if side_id == 1 then
                        obj_bar_mark[2] = 509
                    else
                        obj_bar_mark[2] = 739
                    end
                    CONTROL_METHOD[side_id] = 1
                end
                init_point_linear_anim_with(obj_bar_mark,anim_UI_point_linear_char_select_scene_bar_mark_down_y)
            end
        end,
    }
    local this_function = local_switch[obj_bar_mark["state"]]
    if this_function then this_function() end

end