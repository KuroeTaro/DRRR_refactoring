function commmon_char_select_scene_reset_char_text_flash_out(obj_char,obj_text,obj_icon_cover,input_id,side_id)
    local id = CHAR_SELECT_LR[side_id]
    if side_id == 1 then
        obj_char[1] = LEFT_CHAR_SELECT_CHAR_POSITION[id][1] - 60
        obj_char[2] = LEFT_CHAR_SELECT_CHAR_POSITION[id][2]
        obj_char[7] = LEFT_CHAR_SELECT_CHAR_POSITION[id][3]
        obj_text[1] = LEFT_CHAR_SELECT_TEXT_POSITION[id][1] - 226
        obj_text[2] = LEFT_CHAR_SELECT_TEXT_POSITION[id][2]
        obj_text[7] = LEFT_CHAR_SELECT_TEXT_POSITION[id][3]
    else
        obj_char[1] = RIGHT_CHAR_SELECT_CHAR_POSITION[id][1] - 60
        obj_char[2] = RIGHT_CHAR_SELECT_CHAR_POSITION[id][2]
        obj_char[7] = RIGHT_CHAR_SELECT_CHAR_POSITION[id][3]
        obj_text[1] = RIGHT_CHAR_SELECT_TEXT_POSITION[id][1] - 226
        obj_text[2] = RIGHT_CHAR_SELECT_TEXT_POSITION[id][2]
        obj_text[7] = RIGHT_CHAR_SELECT_TEXT_POSITION[id][3]
    end
    obj_icon_cover[4] = 0.1
    init_point_linear_anim_with(obj_icon_cover,anim_UI_point_linear_char_select_scene_icon_select_flash_out_opacity_0p1_0)
end

function commmon_char_select_scene_reset_char_text_flash_in(obj_char,obj_text,obj_icon_cover,input_id,side_id)
    local id = CHAR_SELECT_LR[side_id]
    if side_id == 1 then
        obj_char[1] = LEFT_CHAR_SELECT_CHAR_POSITION[id][1]
        obj_char[2] = LEFT_CHAR_SELECT_CHAR_POSITION[id][2]
        obj_char[7] = LEFT_CHAR_SELECT_CHAR_POSITION[id][3]
        obj_text[1] = LEFT_CHAR_SELECT_TEXT_POSITION[id][1]
        obj_text[2] = LEFT_CHAR_SELECT_TEXT_POSITION[id][2]
        obj_text[7] = LEFT_CHAR_SELECT_TEXT_POSITION[id][3]
    else
        obj_char[1] = RIGHT_CHAR_SELECT_CHAR_POSITION[id][1]
        obj_char[2] = RIGHT_CHAR_SELECT_CHAR_POSITION[id][2]
        obj_char[7] = RIGHT_CHAR_SELECT_CHAR_POSITION[id][3]
        obj_text[1] = RIGHT_CHAR_SELECT_TEXT_POSITION[id][1]
        obj_text[2] = RIGHT_CHAR_SELECT_TEXT_POSITION[id][2]
        obj_text[7] = RIGHT_CHAR_SELECT_TEXT_POSITION[id][3]
    end
    obj_icon_cover[1] = ICON_COVER_POSITION[id][1]
    obj_icon_cover[2] = ICON_COVER_POSITION[id][2]
    obj_icon_cover[8] = id
    obj_icon_cover[4] = 0
    init_point_linear_anim_with(obj_icon_cover,anim_UI_point_linear_char_select_scene_icon_select_flash_in_opacity_0_0p1)
end

function common_char_select_scene_update_char_left_state()
    return obj_UI_char_select_scene_char_select_left["select_state"] == "locked" 
    or obj_UI_char_select_scene_char_select_left["select_state"] == "locking"
end