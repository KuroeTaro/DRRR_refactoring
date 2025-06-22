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
    obj_char["state_cache"] = obj_char["state"]
    obj_char["state"] = "hitstop"
    obj_char["hit_cancel"] = true -- 取消链

    -- 后续要根据防御设置blockstop之类的

end

function common_game_scene_strike_hurt_function(obj_char)
    -- idle unblock punish counter GP parry
    -- stand crouch air OTG
    local hit_side_obj_char = common_game_scene_change_character(obj_char["player_side"])
    local function common_hurt()
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
        obj_char["hit_hurt_blockstop_countdown"] = hit_side_obj_char["hit_hurt_blockstop_countdown"]
        hit_side_obj_char["hit_VFX_insert_function"](
            hit_side_obj_char["hit_VFX_insert_function_argument"][1],
            hit_side_obj_char["hit_VFX_insert_function_argument"][2],
            hit_side_obj_char["hit_VFX_insert_function_argument"][3]
        )
    end
    local function stand_hurt()
        obj_char["state_cache"] = "hurt"
        obj_char["state"] = "hurtstop"
        obj_char["current_animation"] = hit_side_obj_char["stand_hurt_animation"]
        common_hurt()
    end
    local function crouch_hurt()
        obj_char["state_cache"] = "hurt"
        obj_char["state"] = "hurtstop"
        obj_char["current_animation"] = hit_side_obj_char["crouch_hurt_animation"]
        common_hurt()
    end
    local function air_hurt()
        obj_char["state_cache"] = "hurt"
        obj_char["state"] = "hurtstop"
        obj_char["current_animation"] = hit_side_obj_char["air_hurt_animation"]
        common_hurt()
    end
    local function OTG_hurt()
        obj_char["state_cache"] = "hurt"
        obj_char["state"] = "hurtstop"
        obj_char["current_animation"] = hit_side_obj_char["OTG_hurt_animation"]
        common_hurt()
    end
    local function GP_hurt()
    end
    -- idle block
    if (obj_char["hurt_state"] == "idle" and common_game_scene_check_block_direction(obj_char["player_side"])) then
        if obj_char["height_state"] == "stand" then
            if hit_side_obj_char["hit_guard_type_state"] == "low" then
                stand_hurt()
            else
                obj_char["state_cache"] = "block"
                obj_char["state"] = "blockstop"
                obj_char["current_animation"] = hit_side_obj_char["stand_block_animation"]
            end
        elseif obj_char["height_state"] == "crouch" then
            if hit_side_obj_char["hit_guard_type_state"] == "high" then
                crouch_hurt()
            else
                obj_char["state_cache"] = "block"
                obj_char["state"] = "blockstop"
                obj_char["current_animation"] = hit_side_obj_char["crouch_block_animation"]
            end
        elseif obj_char["height_state"] == "air" then
            obj_char["state_cache"] = "block"
            obj_char["state"] = "blockstop"
            obj_char["current_animation"] = hit_side_obj_char["air_block_animation"]
        end
    -- punish
    elseif obj_char["hurt_state"] == "punish" then
        -- insert punish
        ---- specific code
        if obj_char["height_state"] == "stand" then
            stand_hurt()
        elseif obj_char["height_state"] == "crouch" then
            crouch_hurt()
        elseif obj_char["height_state"] == "air" then
            air_hurt()
        end
    -- counter
    elseif obj_char["hurt_state"] == "counter" then -- idle unblock punish counter GP parry
        -- insert counter
        if obj_char["height_state"] == "stand" then
            stand_hurt()
        elseif obj_char["height_state"] == "crouch" then
            crouch_hurt()
        elseif obj_char["height_state"] == "air" then
            air_hurt()
        end
        hit_side_obj_char["hit_counter_ver_function"]()
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
        if obj_char["height_state"] == "stand" then
            stand_hurt()
        elseif obj_char["height_state"] == "crouch" then
            crouch_hurt()
        elseif obj_char["height_state"] == "air" then
            air_hurt()
        elseif obj_char["height_state"] == "OTG" then
            OTG_hurt()
        end
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





-- function common_game_scene_input_sys_cache(INPUT_SYS_CURRENT_COMMAND_STATE,obj_char)
--     if obj_char["command_cache_load_countdown"] == 0 then
--         return
--     end

--     -- 上下二选一 "Up","Down","Left","Right",
--     if INPUT_SYS_CURRENT_COMMAND_STATE["Up"] == "Pressing" then
--         obj_char["command_cache"]["Up"] = true
--         obj_char["command_cache"]["Down"] = false
--     elseif INPUT_SYS_CURRENT_COMMAND_STATE["Down"] == "Pressing" then
--         obj_char["command_cache"]["Up"] = false
--         obj_char["command_cache"]["Down"] = true
--     end

--     -- 左右二选一
--     if INPUT_SYS_CURRENT_COMMAND_STATE["Left"] == "Pressing" then
--         obj_char["command_cache"]["Left"] = true
--         obj_char["command_cache"]["Right"] = false
--     elseif INPUT_SYS_CURRENT_COMMAND_STATE["Right"] == "Pressing" then
--         obj_char["command_cache"]["Left"] = false
--         obj_char["command_cache"]["Right"] = true
--     end

--     -- PKSHL五选一 "P","S","HS","K","Launcher"
--     if INPUT_SYS_CURRENT_COMMAND_STATE["P"] == "Pressing" then
--         obj_char["command_cache"]["P"] = true
--         obj_char["command_cache"]["S"] = false
--         obj_char["command_cache"]["HS"] = false
--         obj_char["command_cache"]["K"] = false
--         obj_char["command_cache"]["Launcher"] = false
--     elseif INPUT_SYS_CURRENT_COMMAND_STATE["S"] == "Pressing" then
--         obj_char["command_cache"]["P"] = false
--         obj_char["command_cache"]["S"] = true
--         obj_char["command_cache"]["HS"] = false
--         obj_char["command_cache"]["K"] = false
--         obj_char["command_cache"]["Launcher"] = false
--     elseif INPUT_SYS_CURRENT_COMMAND_STATE["HS"] == "Pressing" then
--         obj_char["command_cache"]["P"] = false
--         obj_char["command_cache"]["S"] = false
--         obj_char["command_cache"]["HS"] = true
--         obj_char["command_cache"]["K"] = false
--         obj_char["command_cache"]["Launcher"] = false
--     elseif INPUT_SYS_CURRENT_COMMAND_STATE["K"] == "Pressing" then
--         obj_char["command_cache"]["P"] = false
--         obj_char["command_cache"]["S"] = false
--         obj_char["command_cache"]["HS"] = false
--         obj_char["command_cache"]["K"] = true
--         obj_char["command_cache"]["Launcher"] = false
--     elseif INPUT_SYS_CURRENT_COMMAND_STATE["Launcher"] == "Pressing" then
--         obj_char["command_cache"]["P"] = false
--         obj_char["command_cache"]["S"] = false
--         obj_char["command_cache"]["HS"] = false
--         obj_char["command_cache"]["K"] = false
--         obj_char["command_cache"]["Launcher"] = true
--     end

--     -- "RC","Dash","Burst","UA" 默认受cache影响
--     if INPUT_SYS_CURRENT_COMMAND_STATE["RC"] == "Pressing" then
--         obj_char["command_cache"]["RC"] = true
--     end
--     if INPUT_SYS_CURRENT_COMMAND_STATE["Dash"] == "Pressing" then
--         obj_char["command_cache"]["Dash"] = true
--     end
--     if INPUT_SYS_CURRENT_COMMAND_STATE["Burst"] == "Pressing" then
--         obj_char["command_cache"]["Burst"] = true
--     end
--     if INPUT_SYS_CURRENT_COMMAND_STATE["UA"] == "Pressing" then
--         obj_char["command_cache"]["UA"] = true
--     end
--     -- "SP","Back","Start" 默认不受cache影响

--     -- command缓存应用倒计时
--     obj_char["command_cache_load_countdown"] = obj_char["command_cache_load_countdown"] - 1
--     if obj_char["command_cache_load_countdown"] == 0 then
--         -- pressing 应用
--         for i=1,16 do
--             if obj_char["command_cache"][INPUT_SYS_COMMAND_TABLE[i]] == true then
--                 INPUT_SYS_CURRENT_COMMAND_STATE[INPUT_SYS_COMMAND_TABLE[i]] = "Pressing"
--                 obj_char["command_cache"][INPUT_SYS_COMMAND_TABLE[i]] = false
--             end
--         end
--     end
-- end

function common_game_scene_input_sys_cacahe_init(obj_char)
    for i=1,16 do
        obj_char["command_cache"][INPUT_SYS_COMMAND_TABLE[i]] = false
    end
end