-- -- state
-- obj_char["f"] = nil
-- obj_char["sprite_sheet_state"] = "stand_idle"
-- obj_char["height_state"] = "stand" -- stand crouch air
-- obj_char["hurt_state"] = "idle" -- idle block hurted punish counter GP parry
-- obj_char["hit_type_state"] = "none" -- none strike throw burst
-- obj_char["hit_counter_state"] = 1 -- 当前攻击counter等级 0 1 2 3
-- obj_char["stand_hurt_animation"] = nil
-- obj_char["stand_block_animation"] = nil
-- obj_char["crouch_hurt_animation"] = nil
-- obj_char["crouch_block_animation"] = nil
-- obj_char["air_hurt_animation"] = nil
-- obj_char["air_block_animation"] = nil

-- obj_char["current_animation_length"] = 0 -- 如果为0则是循环动画

-- obj_char["strike_active"] = false -- 防止在同一动作的active多次触发
-- obj_char["throw_active"] = false -- 防止在同一动作的active多次触发

-- obj_char["strike_inv"] = false
-- obj_char["strike_inv_countdown"] = 0
-- obj_char["throw_inv"] = false
-- obj_char["throw_inv_countdown"] = 0
-- obj_char["projectile_inv"] = false
-- obj_char["projectile_inv_countdown"] = 0
-- obj_char["burst_inv"] = false
-- obj_char["burst_inv_countdown"] = 0

-- obj_char["hit_function"] = function() end
-- obj_char["hurt_function"] = function() end
-- obj_char["parry_function"] = function() end

-- obj_char["knife_state"] = "off"
-- obj_char["knife_anchor_pos"] = {168,210}
-- obj_char["knife_animation"] = nil
-- obj_char["knife_8"] = 0 -- obj[knife_8]匕首图形上的帧数
-- obj_char["knife_f"] = 0 -- obj[knife_8]匕首逻辑上的帧数

-- -- state_number
-- obj_char["velocity"] = {0,0}
-- obj_char["velocity_cache"] = {0,0}
-- obj_char["gravity"] = 9.8
-- obj_char["friction"] = 4
-- obj_char["health"] = {11500, 11500, 11500, "fade_off"}
-- obj_char["heat"] = {0.0, 200.0} -- 0.0 - 200.0
-- obj_char["ability"] = {600.0, 600.0} -- 0.0 - 600.0
-- obj_char["overdrive"] = {600.0, 600.0, "off"} -- 0.0 - 600.0
-- obj_char["overdrive_timer"] = {0,0,0,0} -- 0f 00:00 
-- obj_char["overdrive_drain_speed"] = 24
-- obj_char["risk"] = {0.0, 300.0}-- 0.0 - 300.0
-- obj_char["positive_bouns"] = {0.0, 600.0} -- 0.0 - 600.0
-- obj_char["hurt_horizontal_velocity_correction"] = 1
-- obj_char["hurt_gravity_correction"] = 1
-- obj_char["hurt_damage_correction"] = 1

-- -- game_speed
-- obj_char["game_speed"] = 1
-- obj_char["game_speed_subframe"] = 1
-- obj_char["game_speed_abnormal_realtime_countdown"] = 0 -- 只能是game_speed的倍数
-- obj_char["hit_hurt_blockstop_countdown"] = 0
-- obj_char["hurtstop_wiggle_x"] = 0
-- obj_char["hurtstop_wiggle_y"] = 0
-- obj_char["FCT"]["hurtstop_wiggle_x"] = 0
-- obj_char["LCT"]["hurtstop_wiggle_x"] = 0
-- obj_char["LCD"]["hurtstop_wiggle_x"] = 0
-- obj_char["FCT"]["hurtstop_wiggle_y"] = 0
-- obj_char["LCT"]["hurtstop_wiggle_y"] = 0
-- obj_char["LCD"]["hurtstop_wiggle_y"] = 0
-- obj_char["current_hurtstop_wiggle_x_animation"] = {}
-- obj_char["current_hurtstop_wiggle_y_animation"] = {}

-- -- collide
-- obj_char["pushbox"] = {0, -185, 130, 370}
-- obj_char["collision_move_available"] = {1,1}
-- obj_char["hitbox_table"] = {}
-- obj_char["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}

-- -- sub_obj
-- obj_char["projectile_table"] = {}
-- obj_char["VFX_table"] = {}
-- obj_char["black_overlay_table"] = {}
-- obj_char["shadow_box_table"] = {}
-- obj_char["shadow_box_pos"] = {}

-- -- draw_correction
-- obj_char[8] = nil
-- obj_char["anchor_pos"] = {90,520}
-- obj_char["contrast"] = 1
-- obj_char["brightness"] = 0
-- obj_char["brightness_const"] = 0
-- obj_char["brightness_end_const"] = 0.2
-- obj_char["FCT"]["contrast"] = 0
-- obj_char["LCT"]["contrast"] = 0
-- obj_char["LCD"]["contrast"] = 0
-- obj_char["FCT"]["brightness"] = 0
-- obj_char["LCT"]["brightness"] = 0
-- obj_char["LCD"]["brightness"] = 0



function load_game_scene_anim_char_IZY_stand_idle(obj_char)
    local res = {}
    res[0] = function() 
        -- state
        obj_char["sprite_sheet_state"] = "stand_idle"
        obj_char["height_state"] = "stand" -- stand crouch air
        obj_char["hurt_state"] = "idle" -- idle block hurted punish counter GP parry
        obj_char["hit_type_state"] = "none" -- none strike throw burst
        obj_char["hit_counter_state"] = 1 -- 当前攻击counter等级 0 1 2 3
        obj_char["stand_hurt_animation"] = nil
        obj_char["stand_block_animation"] = nil
        obj_char["crouch_hurt_animation"] = nil
        obj_char["crouch_block_animation"] = nil
        obj_char["air_hurt_animation"] = nil
        obj_char["air_block_animation"] = nil

        obj_char["current_animation_length"] = 0 -- 如果为0则是循环动画

        obj_char["strike_active"] = false -- 防止在同一动作的active多次触发
        obj_char["throw_active"] = false -- 防止在同一动作的active多次触发

        obj_char["hit_function"] = function() end
        obj_char["hurt_function"] = function() end
        obj_char["parry_function"] = function() end

        -- state_number
        obj_char["gravity"] = 9.8
        obj_char["friction"] = 4
        obj_char["hurt_horizontal_velocity_correction"] = 1
        obj_char["hurt_gravity_correction"] = 1
        obj_char["hurt_damage_correction"] = 1


        -- collide
        obj_char["pushbox"] = {0, -185, 130, 370}
        obj_char["hitbox_table"] = {}
        obj_char["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-6.75, -20.00,
                -19.38, -3.88}
                ,
                {-19.38, -3.88,
                -15.88, 12.75}
                ,
                {-15.88, 12.75,
                -7.13, 21.13}
                ,
                {-7.13, 21.13,
                2.50, 22.00}
                ,
                {2.50, 22.00,
                19.13, 17.50}
                ,
                {19.13, 17.50,
                19.63, 5.38}
                ,
                {19.63, 5.38,
                12.46, -7.97}
                ,
                {12.46, -7.97,
                -6.75, -20.00}
            },
            {
                {-22.38, -8.50,
                -37.50, -2.38}
                ,
                {-37.50, -2.38,
                -37.56, 5.31}
                ,
                {-37.56, 5.31,
                -34.44, 8.81}
                ,
                {-34.44, 8.81,
                -28.51, 10.75}
                ,
                {-28.51, 10.75,
                -18.38, 10.44}
                ,
                {-18.38, 10.44,
                -2.63, 18.94}
                ,
                {-2.63, 18.94,
                8.94, 19.81}
                ,
                {8.94, 19.81,
                26.19, 17.75}
                ,
                {26.19, 17.75,
                34.02, 15.55}
                ,
                {34.02, 15.55,
                37.19, 11.00}
                ,
                {37.19, 11.00,
                36.50, 3.38}
                ,
                {36.50, 3.38,
                31.93, -0.54}
                ,
                {31.93, -0.54,
                25.50, -2.75}
                ,
                {25.50, -2.75,
                12.19, -3.44}
                ,
                {12.19, -3.44,
                7.38, -8.75}
                ,
                {7.38, -8.75,
                -22.38, -8.50}
            }
        }
        obj_char["shadow_box_pos"] = {
            {44.625,516.875}
            ,{146.0625,496.1875}
        }

        -- draw_correction
        obj_char[8] = 0
        obj_char["anchor_pos"] = {90,520}

    end
    for i = 1,16 do
        res[i*7] = function()
            -- draw
            obj_char[8] = i
        end
    end
    res[17*7] = function()
        -- draw
        obj_char["f"] = -1
        obj_char[8] = 0
    end
    return res

end

function load_game_scene_anim_char_IZY_overdrive(obj_char,side)
    local res = {}
    -- 更新hitbox table 有一个全屏的红框
    -- 更新逻辑为没有伤害 没有硬直 只是速度调为0

    local function drain_overdrive()
        if obj_char["overdrive"][1] > 0 then
            obj_char["overdrive"][1] = 
            obj_char["overdrive"][1] - obj_char["overdrive_drain_speed"]
        elseif obj_char["overdrive"][1] < 0 then
            obj_char["overdrive"][1] = 0
        end
    end

    for i = 0,79 do
        res[i] = function()
            -- state
            drain_overdrive()
        end
    end
    res[0] = function()
        --  state
        obj_char["sprite_sheet_state"] = "overdrive"
        obj_char["height_state"] = "stand"
        obj_char["hurt_state"] = "idle"
        obj_char["hit_type_state"] = "none"
        obj_char["hit_counter_state"] = 1
        obj_char["stand_hurt_animation"] = nil
        obj_char["stand_block_animation"] = nil
        obj_char["crouch_hurt_animation"] = nil
        obj_char["crouch_block_animation"] = nil
        obj_char["air_hurt_animation"] = nil
        obj_char["air_block_animation"] = nil

        obj_char["current_animation_length"] = 80 -- 如果为0则是循环动画

        obj_char["strike_active"] = false -- 防止在同一动作的active多次触发
        obj_char["throw_active"] = false -- 防止在同一动作的active多次触发

        obj_char["strike_inv"] = true
        obj_char["strike_inv_countdown"] = 80
        obj_char["throw_inv"] = true
        obj_char["throw_inv_countdown"] = 80
        obj_char["projectile_inv"] = true
        obj_char["projectile_inv_countdown"] = 80
        obj_char["burst_inv"] = true
        obj_char["burst_inv_countdown"] = 80

        obj_char["hit_function"] = function() end
        obj_char["hurt_function"] = function() end
        obj_char["parry_function"] = function() end

        -- state_number
        drain_overdrive()
        obj_char["velocity"] = {0,0}
        obj_char["velocity_cache"] = {0,0}
        obj_char["gravity"] = 9.8
        obj_char["friction"] = 4
        obj_char["overdrive"][3] = "on"

        play_obj_audio(audio_SFX_game_scene_overdrive)

        -- game_speed
        obj_char["game_speed"] = 1
        obj_char["game_speed_subframe"] = 1
        obj_char["game_speed_abnormal_realtime_countdown"] = 0 -- 只能是game_speed的倍数
        obj_char["hit_hurt_blockstop_countdown"] = 0
        obj_char["hurtstop_wiggle_x"] = 0
        obj_char["hurtstop_wiggle_y"] = 0
        obj_char["FCT"]["hurtstop_wiggle_x"] = 0
        obj_char["LCT"]["hurtstop_wiggle_x"] = 0
        obj_char["LCD"]["hurtstop_wiggle_x"] = 0
        obj_char["FCT"]["hurtstop_wiggle_y"] = 0
        obj_char["LCT"]["hurtstop_wiggle_y"] = 0
        obj_char["LCD"]["hurtstop_wiggle_y"] = 0
        obj_char["current_hurtstop_wiggle_x_animation"] = {}
        obj_char["current_hurtstop_wiggle_y_animation"] = {}

        -- collide
        obj_char["pushbox"] = {0, -185, 130, 370}
        obj_char["hitbox_table"] = {} --{ 攻击类型 是投还是打， function值 内部为命中后的逻辑, 具体的box形状}
        obj_char["hurtbox_table"] = {}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-5.25, -22.00,
                -21.61, -11.93}
                ,
                {-21.61, -11.93,
                -19.66, 6.51}
                ,
                {-19.66, 6.51,
                -16.36, 14.58}
                ,
                {-16.36, 14.58,
                -10.00, 17.50}
                ,
                {-10.00, 17.50,
                0.48, 19.53}
                ,
                {0.48, 19.53,
                10.00, 18.00}
                ,
                {10.00, 18.00,
                16.48, 15.11}
                ,
                {16.48, 15.11,
                19.10, 7.99}
                ,
                {19.10, 7.99,
                16.72, 0.20}
                ,
                {16.72, 0.20,
                9.94, -15.44}
                ,
                {9.94, -15.44,
                -5.25, -22.00}
            },
            {
                {-4.50, -26.13,
                -39.11, -12.93}
                ,
                {-39.11, -12.93,
                -26.66, 1.26}
                ,
                {-26.66, 1.26,
                -20.36, 11.58}
                ,
                {-20.36, 11.58,
                -10.00, 17.50}
                ,
                {-10.00, 17.50,
                0.48, 19.53}
                ,
                {0.48, 19.53,
                10.00, 18.00}
                ,
                {10.00, 18.00,
                15.98, 15.99}
                ,
                {15.98, 15.99,
                18.23, 8.87}
                ,
                {18.23, 8.87,
                15.72, 0.70}
                ,
                {15.72, 0.70,
                2.94, -4.94}
                ,
                {2.94, -4.94,
                -4.50, -26.13}
            }
        }
        obj_char["shadow_box_pos"] = {
            {111.9,529.5}
            ,{228.6,515.3}
        }

        -- draw_correction
        obj_char[8] = 0
        obj_char["anchor_pos"] = {169,530}

        -- VFX
        insert_VFX_game_scene_char_overdrive_badge(obj_char,side)
        insert_VFX_game_scene_char_overdrive_partical(obj_char)
        insert_VFX_game_scene_char_overdrive_black_overlay(obj_char)
    end
    res[3] = function() 
        -- state & state_number
        drain_overdrive()
            -- idle状态下OD 恢复为3+13
            -- 攻击状态下OD 恢复为3+3
            -- block_stun状态下OD 恢复为3+23
        local other_side_obj_char = common_game_scene_change_character(side)
        other_side_obj_char["game_speed"] = 0
        other_side_obj_char["game_speed_subframe"] = 0
        if obj_char["hurt_state"] == "idle" then
            other_side_obj_char["game_speed_abnormal_realtime_countdown"] = 80 - 13 ---- 之后对面玩家根据情况不同要改
        elseif other_side_obj_char["hurt_state"] == "hurted" then
            other_side_obj_char["game_speed_abnormal_realtime_countdown"] = 80 - 3 ---- 之后对面玩家根据情况不同要改
        elseif obj_char["hurt_state"] == "block" then
            other_side_obj_char["game_speed_abnormal_realtime_countdown"] = 80 - 23 ---- 之后对面玩家根据情况不同要改
        end

        -- sub_obj
        obj_char["shadow_box_table"][2] = {
            {-4.50, -26.13,
            -39.48, -9.43}
            ,
            {-39.48, -9.43,
            -28.41, -0.49}
            ,
            {-28.41, -0.49,
            -22.11, 11.58}
            ,
            {-22.11, 11.58,
            -11.25, 18.38}
            ,
            {-11.25, 18.38,
            0.48, 19.16}
            ,
            {0.48, 19.16,
            9.13, 17.50}
            ,
            {9.13, 17.50,
            14.23, 15.11}
            ,
            {14.23, 15.11,
            16.85, 8.87}
            ,
            {16.85, 8.87,
            15.22, 0.70}
            ,
            {15.22, 0.70,
            1.56, -4.44}
            ,
            {1.56, -4.44,
            -4.50, -26.13}
        }
        obj_char["shadow_box_pos"] = {
            {104.5,529.5}
            ,{246.4,518.8}
        }

        -- draw_correction
        obj_char[8] = 1
    end
    res[6] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 2
        obj_char["shadow_box_pos"] = {
            {94.5,529.1}
            ,{253.8,518.4}
        }
    end
    res[9] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 3
        obj_char["shadow_box_table"][2] = {
            {-6.75, -24.88,
            -37.36, -9.43}
            ,
            {-37.36, -9.43,
            -28.41, -0.49}
            ,
            {-28.41, -0.49,
            -22.11, 11.58}
            ,
            {-22.11, 11.58,
            -11.25, 18.38}
            ,
            {-11.25, 18.38,
            0.48, 19.16}
            ,
            {0.48, 19.16,
            9.13, 17.50}
            ,
            {9.13, 17.50,
            14.23, 15.11}
            ,
            {14.23, 15.11,
            16.85, 8.87}
            ,
            {16.85, 8.87,
            15.22, 0.70}
            ,
            {15.22, 0.70,
            1.56, -4.44}
            ,
            {1.56, -4.44,
            -6.75, -24.88}
        }
        obj_char["shadow_box_pos"] = {
            {92.8,529.5}
            ,{256.8,519.4}
        }
    end
    res[14] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 4
    end
    res[19] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 5
    end
    res[28] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 6
        obj_char["shadow_box_table"] = {
            {
                {-3.75, -18.13,
                -11.61, -5.31}
                ,
                {-11.61, -5.31,
                -15.16, 4.89}
                ,
                {-15.16, 4.89,
                -13.74, 13.71}
                ,
                {-13.74, 13.71,
                -10.00, 17.50}
                ,
                {-10.00, 17.50,
                0.48, 19.53}
                ,
                {0.48, 19.53,
                8.63, 17.50}
                ,
                {8.63, 17.50,
                13.48, 13.86}
                ,
                {13.48, 13.86,
                19.10, 7.12}
                ,
                {19.10, 7.12,
                26.35, -3.05}
                ,
                {26.35, -3.05,
                16.44, -24.19}
                ,
                {16.44, -24.19,
                -3.75, -18.13}
            },
            {
                {-10.63, -21.88,
                -18.98, -7.43}
                ,
                {-18.98, -7.43,
                -22.29, 1.64}
                ,
                {-22.29, 1.64,
                -18.99, 10.71}
                ,
                {-18.99, 10.71,
                -9.88, 18.00}
                ,
                {-9.88, 18.00,
                -0.02, 18.66}
                ,
                {-0.02, 18.66,
                7.38, 16.13}
                ,
                {7.38, 16.13,
                12.48, 11.99}
                ,
                {12.48, 11.99,
                14.98, 7.87}
                ,
                {14.98, 7.87,
                15.22, 0.70}
                ,
                {15.22, 0.70,
                11.56, -10.19}
                ,
                {11.56, -10.19,
                -10.63, -21.88}
            }
        }
        obj_char["shadow_box_pos"] = {
            {70.8,523.375}
            ,{265.5,523.25}
        }
    end
    res[30] = function()
        -- state & state_number
        drain_overdrive()

        -- VFX
        insert_VFX_game_scene_char_overdrive_airflow(obj_char)
    end
    res[32] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 8
        obj_char["shadow_box_table"] = {
            {
                {-10.63, -17.25,
                -14.11, -7.06}
                ,
                {-14.11, -7.06,
                -15.16, 4.89}
                ,
                {-15.16, 4.89,
                -13.74, 13.71}
                ,
                {-13.74, 13.71,
                -10.00, 17.50}
                ,
                {-10.00, 17.50,
                0.48, 19.53}
                ,
                {0.48, 19.53,
                8.63, 17.50}
                ,
                {8.63, 17.50,
                13.48, 13.86}
                ,
                {13.48, 13.86,
                19.10, 6.62}
                ,
                {19.10, 6.62,
                21.97, -8.30}
                ,
                {21.97, -8.30,
                9.94, -27.19}
                ,
                {9.94, -27.19,
                -10.63, -17.25}                    
            },
            {
                {-7.88, -22.75,
                -18.98, -7.43}
                ,
                {-18.98, -7.43,
                -19.29, 0.76}
                ,
                {-19.29, 0.76,
                -18.61, 10.71}
                ,
                {-18.61, 10.71,
                -9.88, 18.00}
                ,
                {-9.88, 18.00,
                -0.02, 18.66}
                ,
                {-0.02, 18.66,
                7.38, 16.13}
                ,
                {7.38, 16.13,
                12.48, 11.99}
                ,
                {12.48, 11.99,
                14.98, 7.87}
                ,
                {14.98, 7.87,
                15.22, 0.70}
                ,
                {15.22, 0.70,
                11.56, -10.19}
                ,
                {11.56, -10.19,
                -7.88, -22.75}
            }
        }
        obj_char["shadow_box_pos"] = {
            {66.375,525.875}
            ,{271.625,525.125}
        }
    end
    res[35] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 7
    end
    res[38] = function() 
        -- state & state_number
        drain_overdrive()
        if obj_char["health"][1]/obj_char["health"][3] > 0.85 then
            obj_char["overdrive_timer"] = {0,2,0,0}
        elseif obj_char["health"][1]/obj_char["health"][3] > 0.60 then
            obj_char["overdrive_timer"] = {0,3,0,0}
        elseif obj_char["health"][1]/obj_char["health"][3] > 0.45 then
            obj_char["overdrive_timer"] = {0,4,0,0}
        elseif obj_char["health"][1]/obj_char["health"][3] > 0.35 then
            obj_char["overdrive_timer"] = {0,5,0,0}
        else
            obj_char["overdrive_timer"] = {0,6,0,0}
        end
        obj_char["overdrive"][3] = "on"

        -- draw_correction
        obj_char[8] = 9
    end
    res[41] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 7
    end
    res[44] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 8
    end
    res[47] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 9
    end
    res[50] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 7
    end
    res[53] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 8
    end
    res[56] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 9
    end
    res[58] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 10
        obj_char["shadow_box_table"] = {
            {
                {-7.00, -15.38,
                -12.86, -4.93}
                ,
                {-12.86, -4.93,
                -15.16, 4.39}
                ,
                {-15.16, 4.39,
                -13.74, 13.71}
                ,
                {-13.74, 13.71,
                -10.00, 17.50}
                ,
                {-10.00, 17.50,
                0.48, 19.53}
                ,
                {0.48, 19.53,
                8.63, 17.50}
                ,
                {8.63, 17.50,
                13.48, 13.86}
                ,
                {13.48, 13.86,
                20.98, 4.49}
                ,
                {20.98, 4.49,
                28.10, -7.05}
                ,
                {28.10, -7.05,
                15.94, -29.94}
                ,
                {15.94, -29.94,
                -7.00, -15.38}
            },
            {
                {-10.38, -29.00,
                -24.23, -8.81}
                ,
                {-24.23, -8.81,
                -22.79, 0.39}
                ,
                {-22.79, 0.39,
                -19.61, 10.71}
                ,
                {-19.61, 10.71,
                -9.88, 18.00}
                ,
                {-9.88, 18.00,
                -0.02, 18.66}
                ,
                {-0.02, 18.66,
                7.38, 16.13}
                ,
                {7.38, 16.13,
                12.48, 11.99}
                ,
                {12.48, 11.99,
                14.98, 7.87}
                ,
                {14.98, 7.87,
                15.22, 0.70}
                ,
                {15.22, 0.70,
                9.31, -18.06}
                ,
                {9.31, -18.06,
                -10.38, -29.00}
            }
        }
        obj_char["shadow_box_pos"] = {
            {79.875,518.375}
            ,{273.375,523.375}
        }
    end
    res[60] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 11
        obj_char["shadow_box_table"] = {
            {
                {-8.00, -16.13,
                -12.86, -4.93}
                ,
                {-12.86, -4.93,
                -15.16, 4.39}
                ,
                {-15.16, 4.39,
                -13.74, 13.71}
                ,
                {-13.74, 13.71,
                -10.00, 17.50}
                ,
                {-10.00, 17.50,
                0.48, 19.53}
                ,
                {0.48, 19.53,
                8.63, 17.50}
                ,
                {8.63, 17.50,
                15.23, 15.11}
                ,
                {15.23, 15.11,
                18.35, 12.74}
                ,
                {18.35, 12.74,
                21.23, 1.26}
                ,
                {21.23, 1.26,
                20.97, -9.68}
                ,
                {20.97, -9.68,
                12.44, -33.69}
                ,
                {12.44, -33.69,
                -8.00, -16.13}                    
            },
            {
                {-25.63, -30.38,
                -41.23, -9.31}
                ,
                {-41.23, -9.31,
                -35.54, -5.36}
                ,
                {-35.54, -5.36,
                -30.61, 2.46}
                ,
                {-30.61, 2.46,
                -25.13, 11.38}
                ,
                {-25.13, 11.38,
                -15.02, 16.66}
                ,
                {-15.02, 16.66,
                -5.75, 18.38}
                ,
                {-5.75, 18.38,
                4.10, 18.11}
                ,
                {4.10, 18.11,
                11.85, 14.49}
                ,
                {11.85, 14.49,
                16.25, 5.88}
                ,
                {16.25, 5.88,
                13.97, 2.45}
                ,
                {13.97, 2.45,
                0.44, -6.81}
                ,
                {0.44, -6.81,
                -3.60, -10.66}
                ,
                {-3.60, -10.66,
                -6.34, -14.55}
                ,
                {-6.34, -14.55,
                -25.63, -30.38}
            }
        }
        obj_char["shadow_box_pos"] = {
            {99.25,525.9}
            ,{251.8,517.1}
        }
    end
    res[63] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 12
        obj_char["shadow_box_table"] = {
            {
                {-3.88, -21.50,
                -19.00, -17.38}
                ,
                {-19.00, -17.38,
                -20.88, -12.00}
                ,
                {-20.88, -12.00,
                -14.25, 15.63}
                ,
                {-14.25, 15.63,
                -7.63, 20.50}
                ,
                {-7.63, 20.50,
                3.25, 22.13}
                ,
                {3.25, 22.13,
                13.63, 21.25}
                ,
                {13.63, 21.25,
                22.50, 16.38}
                ,
                {22.50, 16.38,
                21.88, 4.63}
                ,
                {21.88, 4.63,
                11.88, -14.63}
                ,
                {11.88, -14.63,
                -3.88, -21.50}
            },
            {
                {-17.38, -6.38,
                -37.88, -4.50}
                ,
                {-37.88, -4.50,
                -37.63, 6.13}
                ,
                {-37.63, 6.13,
                -31.01, 10.17}
                ,
                {-31.01, 10.17,
                -17.60, 10.46}
                ,
                {-17.60, 10.46,
                -3.88, 18.75}
                ,
                {-3.88, 18.75,
                8.88, 19.50}
                ,
                {8.88, 19.50,
                20.75, 18.75}
                ,
                {20.75, 18.75,
                32.84, 15.79}
                ,
                {32.84, 15.79,
                38.25, 11.63}
                ,
                {38.25, 11.63,
                37.88, 5.00}
                ,
                {37.88, 5.00,
                35.88, 0.24}
                ,
                {35.88, 0.24,
                30.38, -2.75}
                ,
                {30.38, -2.75,
                23.96, -4.23}
                ,
                {23.96, -4.23,
                12.00, -5.00}
                ,
                {12.00, -5.00,
                -17.38, -6.38}
            }
        }
        obj_char["shadow_box_pos"] = {
            {121.0,525.8}
            ,{228.5,508.5}
        }
    end
    res[67] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 13
        obj_char["shadow_box_table"] = {
            {
                {-6.75, -20.00,
                -19.38, -3.88}
                ,
                {-19.38, -3.88,
                -15.88, 12.75}
                ,
                {-15.88, 12.75,
                -7.13, 21.13}
                ,
                {-7.13, 21.13,
                2.50, 22.00}
                ,
                {2.50, 22.00,
                19.13, 17.50}
                ,
                {19.13, 17.50,
                19.63, 5.38}
                ,
                {19.63, 5.38,
                12.46, -7.97}
                ,
                {12.46, -7.97,
                -6.75, -20.00}
            },
            {
                {-22.38, -8.50,
                -37.50, -2.38}
                ,
                {-37.50, -2.38,
                -37.56, 5.31}
                ,
                {-37.56, 5.31,
                -34.44, 8.81}
                ,
                {-34.44, 8.81,
                -28.51, 10.75}
                ,
                {-28.51, 10.75,
                -18.38, 10.44}
                ,
                {-18.38, 10.44,
                -2.63, 18.94}
                ,
                {-2.63, 18.94,
                8.94, 19.81}
                ,
                {8.94, 19.81,
                26.19, 17.75}
                ,
                {26.19, 17.75,
                34.02, 15.55}
                ,
                {34.02, 15.55,
                37.19, 11.00}
                ,
                {37.19, 11.00,
                36.50, 3.38}
                ,
                {36.50, 3.38,
                31.93, -0.54}
                ,
                {31.93, -0.54,
                25.50, -2.75}
                ,
                {25.50, -2.75,
                12.19, -3.44}
                ,
                {12.19, -3.44,
                7.38, -8.75}
                ,
                {7.38, -8.75,
                -22.38, -8.50}
            }
        }
        obj_char["shadow_box_pos"] = {
            {123.625,526.875}
            ,{225.0625,506.1875}
        }
    end
    res[72] = function() 
        -- state & state_number
        drain_overdrive()

        -- draw_correction
        obj_char[8] = 14
    end
    res[80] = function()
        -- animation end
    end

    return res

end


function load_game_scene_anim_char_IZY_5P(obj_char,side)
    local res = {}
    local overdrive_add = 0.05
    local heat_add = 0.05
    local ability_add = 0.05
    local function add_heat_ability_overdrive()
        if obj_char["overdrive"][1] < obj_char["overdrive"][2] then
            obj_char["overdrive"][1] = 
            math.min(obj_char["overdrive"][1] + overdrive_add,obj_char["overdrive"][2])
        end
        if obj_char["heat"][1] < obj_char["heat"][2] then
            obj_char["heat"][1] = 
            math.min(obj_char["heat"][1] + heat_add,obj_char["heat"][2])
        end
        if obj_char["ability"][1] < obj_char["ability"][2] then
            obj_char["ability"][1] = 
            math.min(obj_char["ability"][1] + ability_add,obj_char["ability"][2])
        end
    end

    local friction = 5.0

    for i = 0,29 do
        res[i] = function()
            -- state
            add_heat_ability_overdrive()
        end
    end

    res[0] = function() 
        -- state
        obj_char["sprite_sheet_state"] = "5P"
        obj_char["height_state"] = "stand" -- stand crouch air
        obj_char["hurt_state"] = "counter" -- idle block hurted punish counter GP parry
        obj_char["hit_type_state"] = "strike" -- none strike throw burst
        obj_char["hit_counter_state"] = 1 -- 当前攻击counter等级 0 1 2 3
        obj_char["stand_hurt_animation"] = anim_char_LP_5P_stand_hurt_high
        obj_char["stand_block_animation"] = nil
        obj_char["crouch_hurt_animation"] = nil
        obj_char["crouch_block_animation"] = nil
        obj_char["air_hurt_animation"] = nil
        obj_char["air_block_animation"] = nil

        obj_char["current_animation_length"] = 31 -- 如果为0则是循环动画

        obj_char["strike_active"] = false -- 防止在同一动作的active多次触发
        obj_char["throw_active"] = false -- 防止在同一动作的active多次触发

        obj_char["throw_inv"] = true
        obj_char["throw_inv_countdown"] = 8

        obj_char["hit_function"] = function() end
        obj_char["hurt_function"] = function() end
        obj_char["parry_function"] = function() end

        -- state_number
        obj_char["friction"] = friction
        add_heat_ability_overdrive()

        -- collide
        obj_char["pushbox"] = {0, -185, 130, 370}
        obj_char["hitbox_table"] = {}
        obj_char["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-6.75, -20.00,
                -19.63, -3.19}
                ,
                {-19.63, -3.19,
                -17.44, 14.50}
                ,
                {-17.44, 14.50,
                -9.00, 20.44}
                ,
                {-9.00, 20.44,
                0.88, 21.25}
                ,
                {0.88, 21.25,
                8.86, 20.11}
                ,
                {8.86, 20.11,
                16.53, 16.59}
                ,
                {16.53, 16.59,
                16.56, 3.88}
                ,
                {16.56, 3.88,
                12.02, -7.60}
                ,
                {12.02, -7.60,
                -6.75, -20.00}
            },
            {
                {-22.38, -9.38,
                -31.06, -5.31}
                ,
                {-31.06, -5.31,
                -31.31, -0.44}
                ,
                {-31.31, -0.44,
                -31.13, 5.69}
                ,
                {-31.13, 5.69,
                -25.63, 9.88}
                ,
                {-25.63, 9.88,
                -15.75, 10.06}
                ,
                {-15.75, 10.06,
                -4.31, 19.50}
                ,
                {-4.31, 19.50,
                8.56, 20.88}
                ,
                {8.56, 20.88,
                27.44, 19.31}
                ,
                {27.44, 19.31,
                34.39, 15.49}
                ,
                {34.39, 15.49,
                37.19, 11.44}
                ,
                {37.19, 11.44,
                36.63, 4.25}
                ,
                {36.63, 4.25,
                32.99, 0.96}
                ,
                {32.99, 0.96,
                28.25, -1.25}
                ,
                {28.25, -1.25,
                15.63, -3.44}
                ,
                {15.63, -3.44,
                5.13, -9.75}
                ,
                {5.13, -9.75,
                -22.38, -9.38}
            }
        }
        obj_char["shadow_box_pos"] = {
            {147.625,511.875}
            ,{249.0625,491.1875}
        }

        -- draw_correction
        obj_char[8] = 0
        obj_char["anchor_pos"] = {193,515}
    end
    res[2] = function() 
        -- state & state_number
        add_heat_ability_overdrive()

        -- draw_correction
        obj_char[8] = 1
    end
    res[4] = function() 
        -- state & state_number
        obj_char["strike_active"] = true 
        obj_char["hit_function"] = common_game_scene_hit_function
        obj_char["hit_hurt_blockstop_countdown"] = 10
            -- 根据状态设置hitstop状态和动画 存储缓存状态 使得结束hitstop状态后可以回到5p后续动画
        obj_char["hurt_function"] = common_game_scene_hurt_function
        add_heat_ability_overdrive()

        -- collide
        obj_char["hitbox_table"] = {{119, -416, 260, 98}} --{ 攻击类型 打 投 指令投, 具体的box形状}
        obj_char["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50},{119, -416, 320, 128}}

        -- draw_correction
        obj_char[8] = 2
    end
    res[6] = function() 
        -- state & state_number
        add_heat_ability_overdrive()

        -- draw_correction
        obj_char[8] = 3
    end
    res[8] = function() 
        -- state
        obj_char["strike_active"] = false
        obj_char["hit_function"] = function() end
        obj_char["hit_type_state"] = "none" -- none strike throw burst
        obj_char["hurt_state"] = "punish" -- idle punish counter block fd_block GP parry
        obj_char["hit_counter_state"] = 1
        add_heat_ability_overdrive()

        -- collide
        obj_char["pushbox"] = {0, -185, 130, 370}
        obj_char["hitbox_table"] = {}
        obj_char["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}

        -- draw_correction
        obj_char[8] = 4
    end
    res[10] = function() 
        -- draw_correction
        obj_char[8] = 5
    end
    res[14] = function() 
        -- draw_correction
        obj_char[8] = 6
    end
    res[18] = function() 
        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-6.75, -20.00,
                -19.63, -3.19}
                ,
                {-19.63, -3.19,
                -16.94, 14.50}
                ,
                {-16.94, 14.50,
                -9.00, 20.44}
                ,
                {-9.00, 20.44,
                0.88, 21.25}
                ,
                {0.88, 21.25,
                12.86, 19.23}
                ,
                {12.86, 19.23,
                17.78, 14.84}
                ,
                {17.78, 14.84,
                17.31, 3.75}
                ,
                {17.31, 3.75,
                12.02, -7.60}
                ,
                {12.02, -7.60,
                -6.75, -20.00}
            },
            {
                {-22.38, -9.38,
                -31.06, -5.31}
                ,
                {-31.06, -5.31,
                -31.31, -0.44}
                ,
                {-31.31, -0.44,
                -31.13, 5.69}
                ,
                {-31.13, 5.69,
                -25.63, 9.88}
                ,
                {-25.63, 9.88,
                -15.75, 10.06}
                ,
                {-15.75, 10.06,
                -4.31, 19.50}
                ,
                {-4.31, 19.50,
                8.56, 20.88}
                ,
                {8.56, 20.88,
                27.44, 19.31}
                ,
                {27.44, 19.31,
                34.39, 15.49}
                ,
                {34.39, 15.49,
                37.19, 11.44}
                ,
                {37.19, 11.44,
                36.63, 4.25}
                ,
                {36.63, 4.25,
                32.99, 0.96}
                ,
                {32.99, 0.96,
                28.25, -1.25}
                ,
                {28.25, -1.25,
                15.63, -3.44}
                ,
                {15.63, -3.44,
                5.13, -9.75}
                ,
                {5.13, -9.75,
                -22.38, -9.38}
            }
        }
        -- draw_correction
        obj_char[8] = 7
    end
    res[22] = function() 
        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-6.75, -20.00,
                -19.63, -3.19}
                ,
                {-19.63, -3.19,
                -16.94, 14.50}
                ,
                {-16.94, 14.50,
                -9.00, 20.44}
                ,
                {-9.00, 20.44,
                0.88, 21.25}
                ,
                {0.88, 21.25,
                12.86, 19.23}
                ,
                {12.86, 19.23,
                17.78, 14.84}
                ,
                {17.78, 14.84,
                17.31, 3.75}
                ,
                {17.31, 3.75,
                12.02, -7.60}
                ,
                {12.02, -7.60,
                -6.75, -20.00}
            },
            {
                {-22.38, -9.38,
                -34.94, -5.31}
                ,
                {-34.94, -5.31,
                -35.19, -0.44}
                ,
                {-35.19, -0.44,
                -32.00, 5.69}
                ,
                {-32.00, 5.69,
                -27.38, 9.50}
                ,
                {-27.38, 9.50,
                -15.75, 10.06}
                ,
                {-15.75, 10.06,
                -4.31, 19.50}
                ,
                {-4.31, 19.50,
                8.56, 20.88}
                ,
                {8.56, 20.88,
                27.44, 19.31}
                ,
                {27.44, 19.31,
                34.39, 15.49}
                ,
                {34.39, 15.49,
                37.19, 11.44}
                ,
                {37.19, 11.44,
                36.63, 4.25}
                ,
                {36.63, 4.25,
                32.99, 0.96}
                ,
                {32.99, 0.96,
                28.25, -1.25}
                ,
                {28.25, -1.25,
                15.63, -3.44}
                ,
                {15.63, -3.44,
                5.13, -9.75}
                ,
                {5.13, -9.75,
                -22.38, -9.38}
            }
        }
        -- draw_correction
        obj_char[8] = 8
    end
    res[25] = function() 
        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-6.75, -20.00,
                -19.38, -3.88}
                ,
                {-19.38, -3.88,
                -15.88, 12.75}
                ,
                {-15.88, 12.75,
                -7.13, 21.13}
                ,
                {-7.13, 21.13,
                2.50, 22.00}
                ,
                {2.50, 22.00,
                19.13, 17.50}
                ,
                {19.13, 17.50,
                19.63, 5.38}
                ,
                {19.63, 5.38,
                12.46, -7.97}
                ,
                {12.46, -7.97,
                -6.75, -20.00}
            },
            {
                {-22.38, -8.50,
                -37.50, -2.38}
                ,
                {-37.50, -2.38,
                -37.56, 5.31}
                ,
                {-37.56, 5.31,
                -34.44, 8.81}
                ,
                {-34.44, 8.81,
                -28.51, 10.75}
                ,
                {-28.51, 10.75,
                -18.38, 10.44}
                ,
                {-18.38, 10.44,
                -2.63, 18.94}
                ,
                {-2.63, 18.94,
                8.94, 19.81}
                ,
                {8.94, 19.81,
                26.19, 17.75}
                ,
                {26.19, 17.75,
                34.02, 15.55}
                ,
                {34.02, 15.55,
                37.19, 11.00}
                ,
                {37.19, 11.00,
                36.50, 3.38}
                ,
                {36.50, 3.38,
                31.93, -0.54}
                ,
                {31.93, -0.54,
                25.50, -2.75}
                ,
                {25.50, -2.75,
                12.19, -3.44}
                ,
                {12.19, -3.44,
                7.38, -8.75}
                ,
                {7.38, -8.75,
                -22.38, -8.50}
            }
        }
        obj_char["shadow_box_pos"] = {
            {147.625,511.875}
            ,{249.0625,491.1875}
        }
        -- draw_correction
        obj_char[8] = 9
    end
    res[30] = function() 
        obj_char["hurt_state"] = "idle"
    end
    res[31] = function() 
        -- animation end
    end

    return res

end

function load_game_scene_anim_char_IZY_5P_stand_hurt_high(obj_char,side)
    local res = {}
    local overdrive_add = 0.05
    local heat_add = 0.05
    local ability_add = 0.05
    local other_side_obj_char = common_game_scene_change_character(side)
    local other_side_hurtbox_data = common_game_scene_change_character_hurtbox(side)
    local other_side_shadowbox_data = common_game_scene_change_character_shadowbox(side)
    local function add_heat_ability_overdrive()
        if other_side_obj_char["overdrive"][1] < other_side_obj_char["overdrive"][2] then
            other_side_obj_char["overdrive"][1] = 
            math.min(other_side_obj_char["overdrive"][1] + overdrive_add,other_side_obj_char["overdrive"][2])
        end
        if other_side_obj_char["heat"][1] < other_side_obj_char["heat"][2] then
            other_side_obj_char["heat"][1] = 
            math.min(other_side_obj_char["heat"][1] + heat_add,other_side_obj_char["heat"][2])
        end
        if other_side_obj_char["ability"][1] < other_side_obj_char["ability"][2] then
            other_side_obj_char["ability"][1] = 
            math.min(other_side_obj_char["ability"][1] + ability_add,other_side_obj_char["ability"][2])
        end
    end

    for i = 0,13 do
        res[i] = function()
            -- state
            add_heat_ability_overdrive()
        end
    end

    res[0] = function() 
        -- state
        other_side_obj_char["sprite_sheet_state"] = "stand_hurt_high"
        local hurt_horizontal_velocity = 44
        if other_side_obj_char["hurt_state"] == "counter" then
            hurt_horizontal_velocity = hurt_horizontal_velocity * 1.5
        end
        if other_side_obj_char["x"] < obj_char["x"] then
            other_side_obj_char["velocity_cache"] = {
                - hurt_horizontal_velocity,
                other_side_obj_char["velocity"][1]
            } -- 根据当前敌我x位置变化
        elseif other_side_obj_char["x"] > obj_char["x"] then
            other_side_obj_char["velocity_cache"] = {
                hurt_horizontal_velocity,
                other_side_obj_char["velocity"][1]
            } -- 根据当前敌我x位置变化
        else
            other_side_obj_char["velocity_cache"] = {
                0,
                other_side_obj_char["velocity"][1]
            } -- 根据当前敌我x位置变化
        end
        other_side_obj_char["velocity"] = {0,0}
        other_side_obj_char["hit_type_state"] = "none" -- none strike throw burst
        other_side_obj_char["hit_counter_state"] = 1 -- 当前攻击counter等级 1 small 2 mid 3 big
        other_side_obj_char["throw_inv"] = true
        other_side_obj_char["throw_inv_countdown"] = 18
        
        other_side_obj_char["current_animation_length"] = 13

        -- state_number
        other_side_obj_char["friction"] = 4
        add_heat_ability_overdrive()

        -- collide
        other_side_obj_char["pushbox"] = {0, -185, 130, 370}
        other_side_obj_char["hitbox_table"] = {}
        other_side_obj_char["hurtbox_table"] = other_side_hurtbox_data["stand_hurt_high"][0]

        -- sub_obj
        other_side_obj_char["shadow_box_table"] = other_side_shadowbox_data["stand_hurt_high"][0][1]
        other_side_obj_char["shadow_box_pos"] = other_side_shadowbox_data["stand_hurt_high"][0][2]

        -- draw_correction
        other_side_obj_char[8] = 0
        other_side_obj_char["anchor_pos"] = {209,520}
    end
    res[2] = function() 
        -- state
        add_heat_ability_overdrive()

        -- collide
        other_side_obj_char["hurtbox_table"] = other_side_hurtbox_data["stand_hurt_high"][2]

        -- sub_obj
        other_side_obj_char["shadow_box_table"] = other_side_shadowbox_data["stand_hurt_high"][2][1]
        other_side_obj_char["shadow_box_pos"] = other_side_shadowbox_data["stand_hurt_high"][2][2]
        
        -- draw_correction
        other_side_obj_char[8] = 2
    end
    res[6] = function() 
        -- state
        add_heat_ability_overdrive()

        -- sub_obj
        other_side_obj_char["shadow_box_table"] = other_side_shadowbox_data["stand_hurt_high"][3][1]
        other_side_obj_char["shadow_box_pos"] = other_side_shadowbox_data["stand_hurt_high"][3][2]

        -- draw_correction
        other_side_obj_char[8] = 3
    end
    res[9] = function() 
        -- state
        add_heat_ability_overdrive()

        -- collide
        other_side_obj_char["hurtbox_table"] = other_side_hurtbox_data["stand_hurt_high"][4]

        -- sub_obj
        other_side_obj_char["shadow_box_table"] = other_side_shadowbox_data["stand_hurt_high"][4][1]
        other_side_obj_char["shadow_box_pos"] = other_side_shadowbox_data["stand_hurt_high"][4][2]

        -- draw_correction
        other_side_obj_char[8] = 4
    end
    res[11] = function() 
        -- state
        add_heat_ability_overdrive()

        -- sub_obj
        other_side_obj_char["shadow_box_table"] = other_side_shadowbox_data["stand_hurt_high"][5][1]
        other_side_obj_char["shadow_box_pos"] = other_side_shadowbox_data["stand_hurt_high"][5][2]

        -- draw_correction
        other_side_obj_char[8] = 5
    end
    res[13] = function() 
        -- animation end
    end

    return res

end