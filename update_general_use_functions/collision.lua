function collision_box_to_real_world_location(char,box_name)

end
function collision_box_aabb_detection(box_a,box_b)
    local box_a_L = box_a[1]-box_a[3]/2
    local box_a_R = box_a[1]+box_a[3]/2
    local box_a_T = box_a[2]-box_a[4]/2
    local box_a_B = box_a[2]+box_a[4]/2

    local box_b_L = box_b[1]-box_b[3]/2
    local box_b_R = box_b[1]+box_b[3]/2
    local box_b_T = box_b[2]-box_b[4]/2
    local box_b_B = box_b[2]+box_b[4]/2

    local x_overlap = box_a_R >= box_b_L and box_b_R >= box_a_L
    local y_overlap = box_a_T >= box_b_B and box_b_T >= box_a_B

    return x_overlap and y_overlap
    
end

function collision_box_relocate_y(char_a,char_b)
    local box_a = collision_box_to_real_world_location(char_a,"collision_box")
    local box_b = collision_box_to_real_world_location(char_b,"collision_box")

    local stage_B_collision = 365

    local box_a_B = box_a[2]+box_a[4]/2
    local box_b_B = box_b[2]+box_b[4]/2
    
    char_a["y"] = math.min(box_a_B,stage_B_collision)
    char_b["y"] = math.min(box_b_B,stage_B_collision)

end

function collision_box_stage_relocate_x(char_a,char_b)
    local box_a = collision_box_to_real_world_location(char_a,"collision_box")
    local box_b = collision_box_to_real_world_location(char_b,"collision_box")

    local stage_L_collision = -1650
    local stage_R_collision = 1650

    local box_a_L = box_a[1]-box_a[3]/2
    local box_a_R = box_a[1]+box_a[3]/2
    local box_a_T = box_a[2]-box_a[4]/2
    local box_a_B = box_a[2]+box_a[4]/2
    
    local box_b_L = box_b[1]-box_b[3]/2
    local box_b_R = box_b[1]+box_b[3]/2
    local box_b_T = box_b[2]-box_b[4]/2
    local box_b_B = box_b[2]+box_b[4]/2

    if box_a_L < stage_L_collision then
        char_a["x"] = stage_L_collision + box_a[3]/2
    elseif box_a_R > stage_R_collision then
        char_a["x"] = stage_R_collision - box_a[3]/2
    end
    if box_b_L < stage_L_collision then
        char_b["x"] = stage_L_collision + box_b[3]/2
    elseif box_b_R > stage_R_collision then
        char_b["x"] = stage_R_collision - box_b[3]/2
    end

end

function collision_box_camera_relocate_x(char_a,char_b,camera)
    local box_a = collision_box_to_real_world_location(char_a,"collision_box")
    local box_b = collision_box_to_real_world_location(char_b,"collision_box")

    local camera_L_collision = camera[1]-925
    local camera_R_collision = camera[1]+925

    local box_a_L = box_a[1]-box_a[3]/2
    local box_a_R = box_a[1]+box_a[3]/2
    local box_a_T = box_a[2]-box_a[4]/2
    local box_a_B = box_a[2]+box_a[4]/2
    
    local box_b_L = box_b[1]-box_b[3]/2
    local box_b_R = box_b[1]+box_b[3]/2
    local box_b_T = box_b[2]-box_b[4]/2
    local box_b_B = box_b[2]+box_b[4]/2

    if box_a_L <= camera_L_collision then
        char_a["x"] = camera_L_collision + box_a[3]/2
    end
    if box_a_R >= camera_R_collision then
        char_a["x"] = camera_R_collision - box_a[3]/2
    end
    if box_b_L <= camera_L_collision then
        char_b["x"] = camera_L_collision + box_b[3]/2
    end
    if box_b_R >= camera_R_collision then
        char_b["x"] = camera_R_collision - box_b[3]/2
    end

end

function collision_box_character_relocate_x(char_a,char_b)
    local box_a = collision_box_to_real_world_location(char_a,"collision_box")
    local box_b = collision_box_to_real_world_location(char_b,"collision_box")

    local stage_L_collision = -1650
    local stage_R_collision = 1650

    local box_a_L = box_a[1]-box_a[3]/2
    local box_a_R = box_a[1]+box_a[3]/2
    local box_a_T = box_a[2]-box_a[4]/2
    local box_a_B = box_a[2]+box_a[4]/2
    
    local box_b_L = box_b[1]-box_b[3]/2
    local box_b_R = box_b[1]+box_b[3]/2
    local box_b_T = box_b[2]-box_b[4]/2
    local box_b_B = box_b[2]+box_b[4]/2

    -- 以下几种情况 { a是否在左侧，a是否在右侧，b是否在左侧，b是否在右侧 }
    -- 0000 0001 0010 0011 0100 0101 0111 1000 1001 1010 1011 1100 1101 1110 1111
    -- 0000 0001 0010 0100 0101 1000 1010 
    local collision_state = ""
    if collision_state == "0000" then

    end
    local switch = {
        ["1000"] = function()
        end,
        ["0100"] = function()
        end,
        ["0010"] = function()
        end,
        ["0001"] = function()
        end,
        ["1010"] = function()
        end,
        ["0101"] = function()
        end,
    }
    local this_function = switch[collision_state]
    if this_function then this_function() end
    
end

function collision_hit_hurt_detection(char_a,char_b)

end

-- 版边检测
-- 版中检测
-- 打击检测
function collision_box_1f_process(char_a,char_b)
    local detection_accuracy = 10
    local camera_obj = obj_stage_game_scene_camera
    local char_a_dx = char_a["velocity"][1]/detection_accuracy
    local char_a_dy = char_a["velocity"][2]/detection_accuracy
    local char_b_dx = char_b["velocity"][1]/detection_accuracy
    local char_b_dy = char_b["velocity"][2]/detection_accuracy
    for i = 0, detection_accuracy do
        char_a["x"] = char_a["x"] + char_a_dx
        char_a["y"] = char_a["y"] + char_a_dy
        char_b["x"] = char_b["x"] + char_b_dx
        char_b["y"] = char_b["y"] + char_b_dy
        collision_box_relocate_y(char_a,char_b)
        collision_box_stage_relocate_x(char_a,char_b)
        collision_box_camera_relocate_x(char_a,char_b,camera_obj)


    end

end