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





function common_game_scene_hit_function(obj_char)
    -- 只需要设置hitstop
    obj_char["state_cache"] = obj_char["state"]
    obj_char["state"] = "hitstop"

    -- 后续要根据防御设置blockstop之类的

end

function common_game_scene_hurt_function(obj_char)
    local hit_side_obj_char = common_game_scene_change_character(obj_char["player_side"])
    obj_char["state_cache"] = "hurt"
    obj_char["state"] = "hurtstop"
    if obj_char["height_state"] == "stand" then
        obj_char["current_animation"] = hit_side_obj_char["stand_hurt_animation"]
    elseif obj_char["height_state"] == "crouch" then
        obj_char["current_animation"] = hit_side_obj_char["crouch_hurt_animation"]
    elseif obj_char["height_state"] == "air" then
        obj_char["current_animation"] = hit_side_obj_char["air_hurt_animation"]
    end

    init_character_anim_with(obj_char,obj_char["current_animation"])
    obj_char["hit_hurt_blockstop_countdown"] = hit_side_obj_char["hit_hurt_blockstop_countdown"] 

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