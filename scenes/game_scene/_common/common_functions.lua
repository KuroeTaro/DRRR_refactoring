function common_game_scene_draw_shadow(lines,shadow_anchor,x,y,sx,sy)
    for i = 1, #lines do
        -- 计算阴影
        local line = lines[i]
        local shadowPolygon = 
        common_game_scene_calculate_shadow(
            line, 
            shadow_anchor,
            x,
            y,
            sx,
            sy
        )
        -- 绘制阴影
        love.graphics.polygon("fill", shadowPolygon)

    end
end

function common_game_scene_calculate_shadow(line, shadow_anchor, x, y, sx, sy)
    local shadow = {}

    local x1 = line[1]*sx + x
    local dx = x1 - shadow_anchor[1]
    local extendedX = x1 + dx * 50
    local y1 = line[2]*sy + y
    local dy = y1 - shadow_anchor[2]
    local extendedY = y1 + dy * 50

    table.insert(shadow, x1)
    table.insert(shadow, y1)
    table.insert(shadow, extendedX)
    table.insert(shadow, extendedY)

    local x2 = line[3]*sx + x
    dx = x2 - shadow_anchor[1]
    extendedX = x2 + dx * 1000
    local y2 = line[4]*sy + y
    dy = y2 - shadow_anchor[2]
    extendedY = y2 + dy * 1000

    table.insert(shadow, extendedX)
    table.insert(shadow, extendedY)
    table.insert(shadow, x2)
    table.insert(shadow, y2)

    return shadow

end

function common_game_scene_toggle_dynamic_HUD(toggle_value)
    obj_HUD_game_scene_timer[4] = toggle_value
    obj_HUD_game_scene_win_marks_LP[4] = toggle_value
    obj_HUD_game_scene_win_marks_RP[4] = toggle_value
    obj_HUD_game_scene_match_point_LP[4] = MATCH_POINT["L"]
    obj_HUD_game_scene_match_point_RP[4] = MATCH_POINT["R"]
    obj_HUD_game_scene_health_bar_LP[4] = toggle_value
    obj_HUD_game_scene_health_bar_RP[4] = toggle_value
    obj_HUD_game_scene_health_bar_LP_fade[4] = toggle_value*0.5
    obj_HUD_game_scene_health_bar_RP_fade[4] = toggle_value*0.5
    obj_HUD_game_scene_heat_bar_LP[4] = toggle_value
    obj_HUD_game_scene_heat_bar_RP[4] = toggle_value
    obj_HUD_game_scene_ability_bar_LP[4] = toggle_value
    obj_HUD_game_scene_ability_bar_RP[4] = toggle_value
    obj_HUD_game_scene_overdrive_pie_LP[4] = toggle_value
    obj_HUD_game_scene_overdrive_pie_RP[4] = toggle_value
    obj_HUD_game_scene_overdrive_text_LP[4] = toggle_value
    obj_HUD_game_scene_overdrive_text_RP[4] = toggle_value
    obj_HUD_game_scene_risk_LP[4] = toggle_value
    obj_HUD_game_scene_risk_RP[4] = toggle_value
    obj_HUD_game_scene_background_gauge[4] = toggle_value

end

function common_game_scene_toggle_ease_in(toggle_value)
    obj_annoucer_game_scene_act_common[4] = toggle_value
    obj_annoucer_game_scene_act_num[4] = toggle_value
    obj_HUD_game_scene_ease_in[4] = toggle_value
    obj_annoucer_game_scene_lets_dance[4] = toggle_value

end





function common_game_scene_get_input_direction(obj_char)
    local input = INPUT_SYS_CURRENT_COMMAND_STATE[obj_char["player_side"]]
    if test_input_sys_press_or_hold(input["Left"]) and test_input_sys_press_or_hold(input["Right"]) then
        if test_input_sys_press_or_hold(input["Up"]) and test_input_sys_press_or_hold(input["Down"]) then
            return 5
        end
        if test_input_sys_press_or_hold(input["Up"]) then
            return 8
        end
        if test_input_sys_press_or_hold(input["Down"]) then
            return 2
        end
        return 5
    elseif test_input_sys_press_or_hold(input["Left"]) then
        if test_input_sys_press_or_hold(input["Up"]) and test_input_sys_press_or_hold(input["Down"]) then
            return 4
        end
        if test_input_sys_press_or_hold(input["Up"]) then
            return 7
        end
        if test_input_sys_press_or_hold(input["Down"]) then
            return 1
        end
        return 4
    elseif test_input_sys_press_or_hold(input["Right"]) then
        if test_input_sys_press_or_hold(input["Up"]) and test_input_sys_press_or_hold(input["Down"]) then
            return 6
        end
        if test_input_sys_press_or_hold(input["Up"]) then
            return 9
        end
        if test_input_sys_press_or_hold(input["Down"]) then
            return 3
        end
        return 6
    end
    if test_input_sys_press_or_hold(input["Up"]) and test_input_sys_press_or_hold(input["Down"]) then
        return 5
    end
    if test_input_sys_press_or_hold(input["Up"]) then
        return 8
    end
    if test_input_sys_press_or_hold(input["Down"]) then
        return 2
    end
    return 5
    
end

function common_game_scene_check_6_and_4_move(obj_char)
    local other_side_obj_char = common_game_scene_change_character(obj_char["player_side"])
    local input = INPUT_SYS_CURRENT_COMMAND_STATE[obj_char["player_side"]]
    local anim_char_6_walk = common_game_scene_get_character_walk_animation(obj_char["player_side"],"6")
    local anim_char_4_walk = common_game_scene_get_character_walk_animation(obj_char["player_side"],"4") 
    if obj_char["x"] < other_side_obj_char["x"] then
        if common_game_scene_get_input_direction(obj_char) == 4 then
            if obj_char[5] == -1 then
                obj_char[5] = 1
                obj_char["f"] = -1
            end
            obj_char["current_animation"] = anim_char_4_walk
            if obj_char["sprite_sheet_state"] == "6" then
                init_character_anim_without(obj_char,obj_char["current_animation"])
            end
            character_animator(obj_char,obj_char["current_animation"])

        elseif common_game_scene_get_input_direction(obj_char) == 6 then
            if obj_char[5] == -1 then
                obj_char[5] = 1
                obj_char["f"] = -1
            end
            obj_char["current_animation"] = anim_char_6_walk
            if obj_char["sprite_sheet_state"] == "4" then
                init_character_anim_without(obj_char,obj_char["current_animation"])
            end
            character_animator(obj_char,obj_char["current_animation"])

        end
    elseif obj_char["x"] == other_side_obj_char["x"] then
        if common_game_scene_get_input_direction(obj_char) == 4 then
            -- 如果sx == 1 保持正面行走 如果 sx == -1 保持倒着走
            if obj_char[5] == 1 then
                if obj_char["sprite_sheet_state"] == "6" then
                    obj_char["sprite_sheet_state"] = "4"
                    obj_char["current_animation"] = anim_char_4_walk
                    init_character_anim_without(obj_char,obj_char["current_animation"])
                end
            elseif obj_char[5] == -1 then
                if obj_char["sprite_sheet_state"] == "4" then
                    obj_char["sprite_sheet_state"] = "6"
                    obj_char["current_animation"] = anim_char_6_walk
                    init_character_anim_without(obj_char,obj_char["current_animation"])
                end
            end
            character_animator(obj_char,obj_char["current_animation"])

        elseif common_game_scene_get_input_direction(obj_char) == 6 then
            -- 如果sx == 1 保持倒着走 如果 sx == -1 保持正面行走
            if obj_char[5] == 1 then
                if obj_char["sprite_sheet_state"] == "4" then
                    obj_char["sprite_sheet_state"] = "6"
                    obj_char["current_animation"] = anim_char_6_walk
                    init_character_anim_without(obj_char,obj_char["current_animation"])
                end
            elseif obj_char[5] == -1 then
                if obj_char["sprite_sheet_state"] == "6" then
                    obj_char["sprite_sheet_state"] = "4"
                    obj_char["current_animation"] = anim_char_4_walk
                    init_character_anim_without(obj_char,obj_char["current_animation"])
                end
            end
            character_animator(obj_char,obj_char["current_animation"])

        end
    elseif obj_char["x"] > other_side_obj_char["x"] then
        if common_game_scene_get_input_direction(obj_char) == 4 then
            if obj_char[5] == 1 then
                obj_char[5] = -1
                obj_char["f"] = -1
            end
            obj_char["current_animation"] = anim_char_6_walk
            if obj_char["sprite_sheet_state"] == "4" then
                init_character_anim_without(obj_char,obj_char["current_animation"])
            end
            character_animator(obj_char,obj_char["current_animation"])

        elseif common_game_scene_get_input_direction(obj_char) == 6 then
            if obj_char[5] == 1 then
                obj_char[5] = -1
                obj_char["f"] = -1
            end
            obj_char["current_animation"] = anim_char_4_walk
            if obj_char["sprite_sheet_state"] == "6" then
                init_character_anim_without(obj_char,obj_char["current_animation"])
            end
            character_animator(obj_char,obj_char["current_animation"])

        end
    end
end





function common_game_scene_change_character(side)
    if side == "L" then
        return obj_char_game_scene_char_RP
    elseif side == "R" then
        return obj_char_game_scene_char_LP
    end
end

function common_game_scene_change_character_hurtbox(side)
    if side == "L" then
        return obj_hurtboxs_data_game_scene_char_RP
    elseif side == "R" then
        return obj_hurtboxs_data_game_scene_char_LP
    end
end

function common_game_scene_change_character_shadowbox(side)
    if side == "L" then
        return obj_shadowboxs_data_game_scene_char_RP
    elseif side == "R" then
        return obj_shadowboxs_data_game_scene_char_LP
    end
end

function common_game_scene_get_character_walk_animation(side,direction)
    if side == "L" then
        if direction == "6" then
            return anim_char_LP_6_walk
        elseif direction == "4" then
            return anim_char_LP_4_walk
        end
    elseif side == "R" then
        if direction == "6" then
            return anim_char_RP_6_walk
        elseif direction == "4" then
            return anim_char_RP_4_walk
        end
    end
end





function common_game_scene_check_block_direction(side)

end





function common_game_scene_hit_function(obj_char)
    -- 只需要设置hitstop
    local hurt_side_obj_char = common_game_scene_change_character(obj_char["player_side"])
    obj_char["state_cache"] = obj_char["state"]
    obj_char["state"] = "hitstop"
    obj_char["hit_cancel"] = true -- 取消链
    obj_char["hit_VFX_insert_function"](
        obj_char["hit_VFX_insert_function_argument"][1],
        obj_char["hit_VFX_insert_function_argument"][2],
        obj_char["hit_VFX_insert_function_argument"][3]
    )
    if hurt_side_obj_char["hurt_state"] == "counter" then -- idle unblock punish counter GP parry
        obj_char["hit_counter_ver_function"](obj_char,hurt_side_obj_char)
    end

    -- 后续要根据防御设置blockstop之类的

end

function common_game_scene_strike_hurt_function(obj_char)
    -- idle unblock punish counter GP parry
    -- stand crouch air OTG
    local hit_side_obj_char = common_game_scene_change_character(obj_char["player_side"])
    local function stand_hurt()
        obj_char["state_cache"] = "hurt"
        obj_char["state"] = "hurtstop"
        obj_char["current_animation"] = hit_side_obj_char["stand_hurt_animation"]
    end
    local function crouch_hurt()
        obj_char["state_cache"] = "hurt"
        obj_char["state"] = "hurtstop"
        obj_char["current_animation"] = hit_side_obj_char["crouch_hurt_animation"]
    end
    local function air_hurt()
        obj_char["state_cache"] = "hurt"
        obj_char["state"] = "hurtstop"
        obj_char["current_animation"] = hit_side_obj_char["air_hurt_animation"]
    end
    local function OTG_hurt()
        obj_char["state_cache"] = "hurt"
        obj_char["state"] = "hurtstop"
        obj_char["current_animation"] = hit_side_obj_char["OTG_hurt_animation"]
    end
    local function GP_hurt()
    end
    local function sub_block()
        obj_char["state_cache"] = "block"
        obj_char["state"] = "blockstop"
        obj_char["current_animation"] = hit_side_obj_char["stand_block_animation"]
        obj_char["hit_hurt_blockstop_countdown"] = hit_side_obj_char["hit_hurt_blockstop_countdown"]
        init_character_anim_with(obj_char,obj_char["current_animation"])
    end
    local function common_hurt()
        if obj_char["height_state"] == "stand" then
            stand_hurt()
        elseif obj_char["height_state"] == "crouch" then
            crouch_hurt()
        elseif obj_char["height_state"] == "air" then
            air_hurt()
        elseif obj_char["height_state"] == "OTG" then
            OTG_hurt()
        end
        obj_char["hit_hurt_blockstop_countdown"] = hit_side_obj_char["hit_hurt_blockstop_countdown"]
        init_character_anim_with(obj_char,obj_char["current_animation"])
        obj_char["current_hurtstop_wiggle_x_animation"] = 
            common_game_scene_create_wiggle_animation(
                obj_char["hit_hurt_blockstop_countdown"],
                "hurtstop_wiggle_x",
                5
            )
        obj_char["current_hurtstop_wiggle_y_animation"] = 
            common_game_scene_create_wiggle_animation(
                obj_char["hit_hurt_blockstop_countdown"],
                "hurtstop_wiggle_y",
                5
            )
        init_point_linear_anim_with(obj_char,obj_char["current_hurtstop_wiggle_x_animation"])
        init_point_linear_anim_with(obj_char,obj_char["current_hurtstop_wiggle_y_animation"])
    end
    local function common_block()
        if obj_char["height_state"] == "stand" then
            if hit_side_obj_char["hit_guard_type_state"] == "low" then
                common_hurt()
            else
                sub_block()
            end
        elseif obj_char["height_state"] == "crouch" then
            if hit_side_obj_char["hit_guard_type_state"] == "high" then
                common_hurt()
            else
                sub_block()
            end
        elseif obj_char["height_state"] == "air" then
            sub_block()
        end
    end
    -- idle block
    if (obj_char["hurt_state"] == "idle" and common_game_scene_check_block_direction(obj_char["player_side"])) then
        common_block()
    -- punish
    elseif obj_char["hurt_state"] == "punish" then
        -- insert punish VFX

        -- hurt_logic
        common_hurt()

    -- counter
    elseif obj_char["hurt_state"] == "counter" then -- idle unblock punish counter GP parry
        -- insert counter VFX

        -- hurt_logic
        common_hurt()
    -- GP
    elseif obj_char["hurt_state"] == "GP" then -- idle unblock punish counter GP parry
        -- insert GP
        GP_hurt()
    -- parry
    elseif obj_char["hurt_state"] == "parry" then -- idle unblock punish counter GP parry
        -- parry function
        hit_side_obj_char["parry_function"](hit_side_obj_char,obj_char)

    -- idle and unblock
    else
        common_hurt()
    end

end




function common_game_scene_create_wiggle_animation(length,prop,wiggle_amount)
    local mid_length = (length-length%2)/2
    local res_anim = {}
    res_anim[0] = {0, mid_length}
    res_anim[mid_length] = {wiggle_amount, length}
    res_anim[length] = {0, length}
    res_anim["prop"] = prop
    res_anim["length"] = length
    res_anim["loop"] = false
    res_anim["fix_type"] = true
    return res_anim
end




function common_game_scene_counter_ver_0(hit_obj,hurt_obj)
    insert_VFX_scene_counter_sign(hit_obj)
    hit_obj["hit_hurt_blockstop_countdown"] = 0
    hit_obj["hit_hurt_block_slowdown_countdown"] = 0
    hurt_obj["hit_hurt_block_slowdown_countdown"] = 0
    hurt_obj["hit_hurt_blockstop_countdown"] = 0
end

function common_game_scene_counter_ver_1(hit_obj,hurt_obj)
    insert_VFX_scene_counter_sign(hit_obj)
    hit_obj["hit_hurt_blockstop_countdown"] = 0
    hit_obj["hit_hurt_block_slowdown_countdown"] = 0
    hurt_obj["hit_hurt_block_slowdown_countdown"] = 11
    hurt_obj["hit_hurt_blockstop_countdown"] = 0
end

function common_game_scene_counter_ver_2(hit_obj,hurt_obj)
    insert_VFX_scene_counter_sign(hit_obj)
    hit_obj["hit_hurt_blockstop_countdown"] = 21
    hit_obj["hit_hurt_block_slowdown_countdown"] = 0
    hurt_obj["hit_hurt_block_slowdown_countdown"] = 25
    hurt_obj["hit_hurt_blockstop_countdown"] = 21
end

function common_game_scene_counter_ver_3(hit_obj,hurt_obj)
    local camera_obj = obj_stage_game_scene_camera
    insert_VFX_scene_counter_sign(hit_obj)
    anim_stage_point_linear_game_scene_camera_enclosing = common_game_scene_counter_ver3_load_camera_anim()
    init_point_linear_anim_with(camera_obj,anim_stage_point_linear_game_scene_camera_enclosing)
    camera_obj["enclose_position_offset"] = {0, 80, 100}
    camera_obj["state"] = "hit_enclosing"
    hit_obj["hit_hurt_blockstop_countdown"] = 31
    hit_obj["hit_hurt_block_slowdown_countdown"] = 0
    hurt_obj["hit_hurt_block_slowdown_countdown"] = 35
    hurt_obj["hit_hurt_blockstop_countdown"] = 31
end

function common_game_scene_counter_ver3_load_camera_anim()
    local anim = {}
    anim = {}
    anim[0] = {0.00, 1}
    anim[1] = {0.56, 2}
    anim[2] = {0.70, 4}
    anim[4] = {0.82, 6}
    anim[6] = {0.86, 8}
    anim[8] = {0.90, 10}
    anim[10] = {0.94, 20}
    anim[20] = {0.98, 30}
    anim[30] = {0.99, 40}
    anim[40] = {1.00, 45}
    anim[45] = {1.00, 50}
    anim[50] = {0.97, 60}
    anim[60] = {0.69, 70}
    anim[70] = {0.20, 80}
    anim[80] = {0.03, 90}
    anim[90] = {0.00, 90}
    anim["prop"] = "enclose_percentage"
    anim["length"] = 90
    anim["loop"] = false
    anim["fix_type"] = false

    return anim
end