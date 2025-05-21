-- 所有pushbox hitbox hurtbox的长宽都必须是双数 要能被2整除 使得box的每个判定均匀的分布在最小单位
-- 所有pushbox 必须在对象的左右中央 下方锚点在0上

function collision_box_to_real_world_box(obj,box_name,box)
    if box_name == "pushbox" then
        local res = {
            obj[box_name][1]*obj[5] + obj["x"],
            obj[box_name][2]*obj[6] + obj["y"],
            obj[box_name][3],
            obj[box_name][4]
        }
        return res
    else
        local res = {
            box[1]*obj[5] + obj["x"],
            box[2]*obj[6] + obj["y"],
            box[3],
            box[4]
        }
        return res
    end

end

function collision_box_aabb_detection(box_a,box_b)
    local box_a_L = box_a[1]-box_a[3]/2 -- 300 - 65 = 235
    local box_a_R = box_a[1]+box_a[3]/2 -- 365
    local box_a_T = box_a[2]-box_a[4]/2 -- 155 - 210 = -55
    local box_a_B = box_a[2]+box_a[4]/2 -- 155 + 210 = 365 

    local box_b_L = box_b[1]-box_b[3]/2 -- 320 - 65 = 255
    local box_b_R = box_b[1]+box_b[3]/2 -- 385
    local box_b_T = box_b[2]-box_b[4]/2 -- -55
    local box_b_B = box_b[2]+box_b[4]/2 -- 365

    local x_overlap = ( box_a_R >= box_b_L and box_b_R >= box_a_L )
    local y_overlap = ( box_a_T <= box_b_B and box_b_T <= box_a_B )

    return (x_overlap and y_overlap)    

end





function pushbox_relocate_y(obj)
    local box = collision_box_to_real_world_box(obj,"pushbox")
    local stage_B_collision = 365
    local box_B_collision = box[2]+box[4]/2
    obj["y"] = math.max(box_B_collision,stage_B_collision)

end

function pushbox_stage_relocate_x(obj)
    local box = collision_box_to_real_world_box(obj,"pushbox")
    local left_stage_collision = -1600.0
    local right_stage_collision = 1600.0
    if box[1] - box[3]/2 <= left_stage_collision then
        obj["x"] = left_stage_collision + box[3]/2
        obj["collision_move_available"] = {0,1}
    elseif box[1] + box[3]/2 >= right_stage_collision then
        obj["x"] = right_stage_collision - box[3]/2
        obj["collision_move_available"] = {1,0}
    else
        obj["collision_move_available"] = {1,1}
    end
    
end

function pushbox_dynamic_normal_aabb_relocate_x(obj_L,obj_R)
    local box_L = collision_box_to_real_world_box(obj_L,"pushbox")
    local box_R = collision_box_to_real_world_box(obj_R,"pushbox")
    if collision_box_aabb_detection(box_L,box_R) then
        local mid_v = (obj_L["velocity"][1]+obj_R["velocity"][1])/2
        obj_L["velocity"][1] = mid_v
        obj_R["velocity"][1] = mid_v
        local collision_state = table.concat({
            obj_L["collision_move_available"][1],
            obj_L["collision_move_available"][2],
            obj_R["collision_move_available"][1],
            obj_R["collision_move_available"][2]
        })
        if collision_state == "1111" then
            local branch_flag = -1
            if box_L[1] == box_R[1] then
                if math.random() < 0.5 then
                    branch_flag = 1
                else
                    branch_flag = 0
                end
            end
            if box_L[1] < box_R[1] or branch_flag == 1 then
                local mid = (box_L[1]+box_L[3]/2+box_R[1]-box_R[3]/2)/2
                obj_L["x"] = mid-box_L[3]/2
                obj_R["x"] = mid+box_R[3]/2
            elseif box_L[1] > box_R[1] or branch_flag == 0 then
                local mid = (box_R[1]+box_R[3]/2+box_L[1]-box_L[3]/2)/2
                obj_L["x"] = mid-box_R[3]/2
                obj_R["x"] = mid+box_L[3]/2
            end

        elseif collision_state == "0111" then
            obj_R["x"] = box_L[1]+box_L[3]/2+box_R[3]/2

        elseif collision_state == "1101" then
            obj_L["x"] = box_R[1]+box_R[3]/2+box_L[3]/2

        elseif collision_state == "0101" then
            local branch_flag = -1
            if obj_L["y"] == obj_R["y"] then
                if math.random() < 0.5 then
                    branch_flag = 1
                else
                    branch_flag = 0
                end
                
            end
            if obj_L["y"] > obj_R["y"] or branch_flag == 1 then
                obj_R["x"] = box_L[1]+box_L[3]/2+box_R[3]/2

            elseif obj_L["y"] < obj_R["y"] or branch_flag == 0 then
                obj_L["x"] = box_R[1]+box_R[3]/2+box_L[3]/2

            end

        elseif collision_state == "1011" then
            obj_R["x"] = box_L[1]-box_L[3]/2-box_R[3]/2

        elseif collision_state == "1110" then
            obj_L["x"] = box_R[1]-box_R[3]/2-box_L[3]/2

        elseif collision_state == "1010" then
            local branch_flag = -1
            if obj_L["y"] == obj_R["y"] then
                if math.random() < 0.5 then
                    branch_flag = 1
                else
                    branch_flag = 0
                end
                
            end
            if obj_L["y"] > obj_R["y"] or branch_flag == 1 then
                obj_R["x"] = box_L[1]-box_L[3]/2-box_R[3]/2

            elseif obj_L["y"] < obj_R["y"] or branch_flag == 0 then
                obj_L["x"] = box_R[1]-box_R[3]/2-box_L[3]/2

            end

        end
    end
end




function strike_hurtbox_test(hit_obj,hurt_obj)
    if hit_obj["hit_type_state"] ~= "strike" or hurt_obj["strike_inv"] == true or hit_obj["strike_active"] == false then
        return false
    end
    for i=1,#hit_obj["hitbox_table"] do
        local current_hitbox = collision_box_to_real_world_box(hit_obj,"hitbox",hit_obj["hitbox_table"][i])
        for j=1,#hurt_obj["hurtbox_table"] do
            local current_hurtbox = collision_box_to_real_world_box(hurt_obj,"hurtbox",hurt_obj["hurtbox_table"][i])
            if collision_box_aabb_detection(current_hitbox,current_hurtbox) then
                hit_obj["strike_active"] = false
                return true
            end
        end
    end
    return false
end

function throw_hurtbox_test(hit_obj,hurt_obj)

end

function projectile_hurtbox_test(hit_obj,hurt_obj)

end

function strike_hitbox_clash_test()

end

-- 总流程
    -- 获得输入 更新角色 状态 速度 和 碰撞盒
    -- 存储角色位置速度
    -- loop * 10
        -- 角色更新位置 1/10
            -- 如果为第十次 使用存储角色位置速度
        -- 检测pushbox 更新Y位置
        -- 检测pushbox 更新X位置 static_relocate_x
        -- 检测pushbox 更新X位置 dynamic_relocate_x
        -- 检测打击受击盒 
            -- 如果命中 更新角色 状态 速度 和 碰撞盒 跳出loop
    -- 检测pushbox 更新Y位置
    -- 检测pushbox 更新X位置 static_relocate_x
    -- 检测pushbox 更新X位置 dynamic_relocate_x













-- optimal CCD algo but not 100% currect
-------------------------------------------------------------------------------------------------
    -- function pushbox_dynamic_CCD(obj_A,obj_B,time_enter,time_exit)
    --     local box_A_start = collision_box_to_real_world_box(obj_A,"pushbox")
    --     local box_B_start = collision_box_to_real_world_box(obj_B,"pushbox")
    --     local velocity_A = obj_A["velocity"]
    --     local velocity_B = obj_B["velocity"]
    --     local box_A_end = {
    --         box_A_start[1] + velocity_A[1],
    --         box_A_start[2] + velocity_A[2],
    --         box_A_start[3],
    --         box_A_start[4],
    --     }
    --     local box_B_end = {
    --         box_B_start[1] + velocity_B[1],
    --         box_B_start[2] + velocity_B[2],
    --         box_B_start[3],
    --         box_B_start[4],
    --     }

    --     local velocity_rel_x = velocity_A[1] - velocity_B[1]
    --     local velocity_rel_y = velocity_A[2] - velocity_B[2]

    --     local time_enter = 0
    --     local time_exit = 1

    --     -- X轴投影计算
    --     if velocity_rel_x ~= 0 then
    --         local overlap_start = (
    --             (box_B_start[1]-box_B_start[3]/2) - 
    --             (box_A_start[1]+box_A_start[3]/2)
    --         )/velocity_rel_x
    --         local overlap_end = (
    --             (box_B_start[1]+box_B_start[3]/2) - 
    --             (box_A_start[1]+box_A_start[3]/2)
    --         )/velocity_rel_x
            
    --         if velocity_rel_x > 0 then
    --             time_enter = math.max(time_enter, overlap_start)
    --             time_exit = math.min(time_exit, overlap_end)
    --         else
    --             time_enter = math.max(time_enter, overlap_end)
    --             time_exit = math.min(time_exit, overlap_start)
    --         end
    --     else
    --         -- X轴无相对速度，直接判断是否重叠
    --         if (box_A_start[1]+box_A_start[3]/2) < (box_B_start[1]-box_B_start[3]/2)
    --         or (box_A_start[1]-box_A_start[3]/2) > (box_A_start[1]+box_A_start[3]/2)
    --         then
    --             return nil -- 无碰撞
    --         end
    --     end

    --     -- Y轴投影计算
    --     if velocity_rel_y ~= 0 then
    --         local overlap_start = (
    --             (box_B_start[2]-box_B_start[4]/2) - 
    --             (box_A_start[2]+box_A_start[4]/2)
    --         )/velocity_rel_y
    --         local overlap_end = (
    --             (box_B_start[2]+box_B_start[4]/2) - 
    --             (box_A_start[2]+box_A_start[4]/2)
    --         )/velocity_rel_y
            
    --         if velocity_rel_y > 0 then
    --             time_enter = math.max(time_enter, overlap_start)
    --             time_exit = math.min(time_exit, overlap_end)
    --         else
    --             time_enter = math.max(time_enter, overlap_end)
    --             time_exit = math.min(time_exit, overlap_start)
    --         end
    --     else
    --         -- Y轴无相对速度，直接判断是否重叠
    --         if (box_A_start[2]+box_A_start[4]/2) < (box_B_start[2]-box_B_start[4]/2)
    --         or (box_A_start[2]-box_A_start[4]/2) > (box_A_start[2]+box_A_start[4]/2)
    --         then
    --             return nil -- 无碰撞
    --         end
    --     end

    --     -- 判断有效时间区间
    --     if time_enter > time_exit or time_exit < 0 or time_enter > 1 then
    --         return nil -- 无碰撞
    --     end

    --     -- 返回最早碰撞时间和碰撞点
    --     local t = math.max(time_enter, 0)
    --     obj_A["x"] = round(obj_A["x"] + velocity_A * t)
    --     obj_B["x"] = obj_A["x"] + box_A_end[3]/2 + box_B_end[3]/2
    --     local res_velocity = (obj_A["velocity"][1] + obj_B["velocity"][1])/2
    --     obj_A["velocity"][1] = res_velocity
    --     obj_B["velocity"][1] = res_velocity

    -- end