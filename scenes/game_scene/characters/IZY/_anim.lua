-- -- state
-- obj_char["f"] = nil
-- obj_char["sprite_sheet_state"] = "stand_idle"
-- obj_char["height_state"] = "stand" -- stand crouch air
-- obj_char["hit_type_state"] = "none" -- none strike throw burst
-- obj_char["hit_guard_type_state"] = "none" -- none all low high
-- obj_char["hit_counter_state"] = 0 -- 当前攻击counter等级 0 1 2 3
-- obj_char["hurt_state"] = "idle" -- idle unblock punish counter GP parry
-- obj_char["move_state"] = "none" -- none startup active recovery
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
-- obj_char["current_hurtstop_wiggle_x_animation"] = nil
-- obj_char["current_hurtstop_wiggle_y_animation"] = nil

-- -- collide
-- obj_char["pushbox"] = {0, -185, 130, 370}
-- obj_char["collision_move_available"] = {1,1}
-- obj_char["hitbox_table"] = {}
-- obj_char["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}

-- -- sub_obj
-- obj_char["projectile_table"] = {}
-- obj_char["VFX_back_character_table"] = {}
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
-- obj_char["hurtstop_wiggle_x"] = 0
-- obj_char["hurtstop_wiggle_y"] = 0
-- obj_char["current_hurtstop_wiggle_x_animation"] = nil
-- obj_char["current_hurtstop_wiggle_y_animation"] = nil


function load_game_scene_anim_char_IZY_stand_idle(obj_char)
    local res = {}
    res[0] = function() 
        -- state
        obj_char["sprite_sheet_state"] = "stand_idle"
        obj_char["height_state"] = "stand" -- stand crouch air
        obj_char["hit_type_state"] = "none" -- none strike throw burst
        obj_char["hit_guard_type_state"] = "none" -- none all low high
        obj_char["hit_counter_state"] = 0 -- 当前攻击counter等级 0 1 2 3
        obj_char["hurt_state"] = "idle" -- idle unblock punish counter GP parry
        obj_char["move_state"] = "none" -- none startup active recovery

        obj_char["current_animation_length"] = 0 -- 如果为0则是循环动画

        obj_char["hit_cancel"] = false -- 取消链
        obj_char["idle_cancel"] = true -- 取消链

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

        -- command_cache
        obj_char["command_cache"] = {}
        obj_char["command_cache_load_countdown"] = 0

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



function load_game_scene_anim_char_IZY_6(obj_char)
    local walk_speed = 10.0
    local res = {}
    res[0] = function() 
        -- state
        obj_char["sprite_sheet_state"] = "6"
        obj_char["height_state"] = "stand" -- stand crouch air
        obj_char["hit_type_state"] = "none" -- none strike throw burst
        obj_char["hit_guard_type_state"] = "none" -- none all low high
        obj_char["hit_counter_state"] = 0 -- 当前攻击counter等级 0 1 2 3
        obj_char["hurt_state"] = "idle" -- idle unblock punish counter GP parry
        obj_char["move_state"] = "none" -- none startup active recovery

        obj_char["current_animation_length"] = 84 -- 如果为0则是循环动画

        obj_char["hit_cancel"] = false -- 取消链
        obj_char["idle_cancel"] = true -- 取消链

        obj_char["hit_function"] = function() end
        obj_char["hurt_function"] = function() end
        obj_char["parry_function"] = function() end

        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}
        obj_char["gravity"] = 9.8
        obj_char["friction"] = 1
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
                -18.88, -4.63}
                ,
                {-18.88, -4.63,
                -18.27, 3.57}
                ,
                {-18.27, 3.57,
                -15.88, 12.75}
                ,
                {-15.88, 12.75,
                -12.71, 17.35}
                ,
                {-12.71, 17.35,
                -7.13, 21.13}
                ,
                {-7.13, 21.13,
                2.50, 22.00}
                ,
                {2.50, 22.00,
                12.24, 20.71}
                ,
                {12.24, 20.71,
                19.13, 17.50}
                ,
                {19.13, 17.50,
                20.59, 13.10}
                ,
                {20.59, 13.10,
                19.63, 5.38}
                ,
                {19.63, 5.38,
                13.71, -8.85}
                ,
                {13.71, -8.85,
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
            {123.1,507.25}
            ,{210.4375,496.1875}
        }

        -- command_cache
        obj_char["command_cache"] = {}
        obj_char["command_cache_load_countdown"] = 0

        -- draw_correction
        obj_char[8] = 0
        obj_char["anchor_pos"] = {175,520}

    end
    for i = 1,89 do
        res[i] = function()
            -- state_number
            obj_char["velocity"] = {obj_char[5]*walk_speed,0}
        end
    end
    res[7] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-1.50, -18.75,
                -25.00, -13.13}
                ,
                {-25.00, -13.13,
                -27.61, -7.43}
                ,
                {-27.61, -7.43,
                -28.20, -2.20}
                ,
                {-28.20, -2.20,
                -25.71, 1.63}
                ,
                {-25.71, 1.63,
                -19.86, 5.40}
                ,
                {-19.86, 5.40,
                -10.13, 6.62}
                ,
                {-10.13, 6.62,
                -7.99, 12.79}
                ,
                {-7.99, 12.79,
                -2.62, 17.80}
                ,
                {-2.62, 17.80,
                7.41, 21.22}
                ,
                {7.41, 21.22,
                18.25, 22.00}
                ,
                {18.25, 22.00,
                35.75, 20.25}
                ,
                {35.75, 20.25,
                38.05, 17.28}
                ,
                {38.05, 17.28,
                39.12, 12.75}
                ,
                {39.12, 12.75,
                38.75, 7.50}
                ,
                {38.75, 7.50,
                36.64, 4.13}
                ,
                {36.64, 4.13,
                34.02, 2.17}
                ,
                {34.02, 2.17,
                25.00, 0.13}
                ,
                {25.00, 0.13,
                18.09, -6.60}
                ,
                {18.09, -6.60,
                -1.50, -18.75}
            },
            {
                {-22.38, -8.50,
                -37.06, -7.00}
                ,
                {-37.06, -7.00,
                -36.94, 1.31}
                ,
                {-36.94, 1.31,
                -34.69, 4.44}
                ,
                {-34.69, 4.44,
                -28.45, 7.06}
                ,
                {-28.45, 7.06,
                -18.13, 7.81}
                ,
                {-18.13, 7.81,
                -3.94, 17.19}
                ,
                {-3.94, 17.19,
                9.81, 19.31}
                ,
                {9.81, 19.31,
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
                15.19, -3.25}
                ,
                {15.19, -3.25,
                7.38, -8.75}
                ,
                {7.38, -8.75,
                -22.38, -8.50}
            }
        }
        obj_char["shadow_box_pos"] = {
            {110.75,500.625}
            ,{268.9375,499.6875}
        }

        -- draw
        obj_char[8] = 1
        obj_char["anchor_pos"] = {185,520}
    end
    res[14] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-24.99, -0.46,
                -19.62, 8.05}
                ,
                {-19.62, 8.05,
                -12.21, 11.22}
                ,
                {-12.21, 11.22,
                -1.38, 13.75}
                ,
                {-1.38, 13.75,
                14.75, 13.63}
                ,
                {14.75, 13.63,
                18.43, 11.53}
                ,
                {18.43, 11.53,
                21.25, 5.25}
                ,
                {21.25, 5.25,
                20.88, -3.38}
                ,
                {20.88, -3.38,
                17.39, -5.99}
                ,
                {17.39, -5.99,
                13.02, -6.96}
                ,
                {13.02, -6.96,
                4.00, -13.88}
                ,
                {4.00, -13.88,
                -24.99, -0.46}
            },
            {
                {-11.88, -13.75,
                -26.56, -1.75}
                ,
                {-26.56, -1.75,
                -23.44, 13.56}
                ,
                {-23.44, 13.56,
                -18.94, 16.31}
                ,
                {-18.94, 16.31,
                -13.07, 17.06}
                ,
                {-13.07, 17.06,
                -4.63, 13.44}
                ,
                {-4.63, 13.44,
                4.28, 13.42}
                ,
                {4.28, 13.42,
                17.06, 14.56}
                ,
                {17.06, 14.56,
                25.93, 12.45}
                ,
                {25.93, 12.45,
                33.06, 8.81}
                ,
                {33.06, 8.81,
                45.81, 1.13}
                ,
                {45.81, 1.13,
                49.39, -5.08}
                ,
                {49.39, -5.08,
                -11.88, -13.75}
            }
        }
        obj_char["shadow_box_pos"] = {
            {101.875,509.375}
            ,{286.0625,500.1875}
        }

        -- draw
        obj_char[8] = 2
        obj_char["anchor_pos"] = {195,520}
    end
    res[21] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-19.83, -0.46,
                -12.82, 7.05}
                ,
                {-12.82, 7.05,
                -3.39, 11.26}
                ,
                {-3.39, 11.26,
                6.32, 14.29}
                ,
                {6.32, 14.29,
                11.89, 14.76}
                ,
                {11.89, 14.76,
                17.27, 12.53}
                ,
                {17.27, 12.53,
                20.21, 6.16}
                ,
                {20.21, 6.16,
                19.74, 0.29}
                ,
                {19.74, 0.29,
                15.69, -3.65}
                ,
                {15.69, -3.65,
                9.48, -9.10}
                ,
                {9.48, -9.10,
                -19.83, -0.46}
            },
            {
                {-17.04, -14.15,
                -34.93, -5.76}
                ,
                {-34.93, -5.76,
                -34.45, 9.86}
                ,
                {-34.45, 9.86,
                -30.68, 13.56}
                ,
                {-30.68, 13.56,
                -24.26, 14.23}
                ,
                {-24.26, 14.23,
                -15.22, 13.47}
                ,
                {-15.22, 13.47,
                -7.03, 15.46}
                ,
                {-7.03, 15.46,
                5.16, 18.57}
                ,
                {5.16, 18.57,
                13.90, 18.50}
                ,
                {13.90, 18.50,
                21.67, 17.94}
                ,
                {21.67, 17.94,
                35.82, 13.32}
                ,
                {35.82, 13.32,
                40.70, 8.08}
                ,
                {40.70, 8.08,
                41.20, 2.25}
                ,
                {41.20, 2.25,
                37.73, -3.56}
                ,
                {37.73, -3.56,
                26.51, -5.81}
                ,
                {26.51, -5.81,
                18.03, -4.42}
                ,
                {18.03, -4.42,
                12.90, -6.07}
                ,
                {12.90, -6.07,
                7.64, -11.71}
                ,
                {7.64, -11.71,
                -17.04, -14.15}
            }
        }
        obj_char["shadow_box_pos"] = {
            {85.125,505.875}
            ,{279.0625,508.1875}
        }

        -- draw
        obj_char[8] = 3
        obj_char["anchor_pos"] = {203,520}
    end
    res[28] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-17.70, -15.70,
                -35.97, -8.18}
                ,
                {-35.97, -8.18,
                -36.50, 8.32}
                ,
                {-36.50, 8.32,
                -33.48, 12.44}
                ,
                {-33.48, 12.44,
                -26.48, 14.24}
                ,
                {-26.48, 14.24,
                -16.77, 13.10}
                ,
                {-16.77, 13.10,
                -8.07, 15.67}
                ,
                {-8.07, 15.67,
                2.90, 18.06}
                ,
                {2.90, 18.06,
                11.63, 18.42}
                ,
                {11.63, 18.42,
                19.42, 18.23}
                ,
                {19.42, 18.23,
                33.78, 14.30}
                ,
                {33.78, 14.30,
                38.91, 9.31}
                ,
                {38.91, 9.31,
                39.68, 3.50}
                ,
                {39.68, 3.50,
                36.50, -2.47}
                ,
                {36.50, -2.47,
                25.40, -5.26}
                ,
                {25.40, -5.26,
                16.87, -4.29}
                ,
                {16.87, -4.29,
                11.82, -6.18}
                ,
                {11.82, -6.18,
                6.84, -12.06}
                ,
                {6.84, -12.06,
                -17.70, -15.70}
            }
        }
        obj_char["shadow_box_pos"] = {
            {250.9237,507.9183}
        }

        -- draw
        obj_char[8] = 4
    end
    res[35] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-13.95, -19.19,
                -33.34, -15.44}
                ,
                {-33.34, -15.44,
                -36.95, -0.55}
                ,
                {-36.95, -0.55,
                -36.70, 2.74}
                ,
                {-36.70, 2.74,
                -35.54, 6.22}
                ,
                {-35.54, 6.22,
                -28.02, 9.98}
                ,
                {-28.02, 9.98,
                -17.81, 9.78}
                ,
                {-17.81, 9.78,
                -11.11, 14.15}
                ,
                {-11.11, 14.15,
                -0.42, 17.96}
                ,
                {-0.42, 17.96,
                8.07, 20.04}
                ,
                {8.07, 20.04,
                15.74, 21.39}
                ,
                {15.74, 21.39,
                30.59, 20.37}
                ,
                {30.59, 20.37,
                36.61, 16.49}
                ,
                {36.61, 16.49,
                38.52, 10.95}
                ,
                {38.52, 10.95,
                36.57, 4.47}
                ,
                {36.57, 4.47,
                26.24, -0.46}
                ,
                {26.24, -0.46,
                17.68, -1.18}
                ,
                {17.68, -1.18,
                13.11, -4.03}
                ,
                {13.11, -4.03,
                9.39, -10.79}
                ,
                {9.39, -10.79,
                -13.95, -19.19}
            }
        }
        obj_char["shadow_box_pos"] = {
            {164.2987,504.9183}
        }

        -- draw
        obj_char[8] = 5
    end
    res[42] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-11.88, -18.01,
                -36.21, -9.67}
                ,
                {-36.21, -9.67,
                -34.38, -5.02}
                ,
                {-34.38, -5.02,
                -25.85, -0.16}
                ,
                {-25.85, -0.16,
                -20.47, 0.84}
                ,
                {-20.47, 0.84,
                -16.88, 3.17}
                ,
                {-16.88, 3.17,
                -9.92, 11.28}
                ,
                {-9.92, 11.28,
                -0.69, 17.28}
                ,
                {-0.69, 17.28,
                7.04, 19.61}
                ,
                {7.04, 19.61,
                14.41, 20.29}
                ,
                {14.41, 20.29,
                22.77, 21.12}
                ,
                {22.77, 21.12,
                30.08, 20.68}
                ,
                {30.08, 20.68,
                35.03, 17.31}
                ,
                {35.03, 17.31,
                36.24, 9.82}
                ,
                {36.24, 9.82,
                34.07, 5.81}
                ,
                {34.07, 5.81,
                25.74, 0.82}
                ,
                {25.74, 0.82,
                18.20, -2.33}
                ,
                {18.20, -2.33,
                13.41, -7.05}
                ,
                {13.41, -7.05,
                -11.88, -18.01}
            },
        }
        obj_char["shadow_box_pos"] = {
            {124.0098,506.4881}
        }

        -- draw
        obj_char[8] = 6
    end
    res[49] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-25.45, -5.89,
                -18.64, 4.74}
                ,
                {-18.64, 4.74,
                -10.68, 8.85}
                ,
                {-10.68, 8.85,
                -2.67, 9.80}
                ,
                {-2.67, 9.80,
                5.80, 10.29}
                ,
                {5.80, 10.29,
                12.71, 10.37}
                ,
                {12.71, 10.37,
                17.54, 8.65}
                ,
                {17.54, 8.65,
                21.01, 3.23}
                ,
                {21.01, 3.23,
                20.57, -4.59}
                ,
                {20.57, -4.59,
                18.72, -7.07}
                ,
                {18.72, -7.07,
                6.58, -12.21}
                ,
                {6.58, -12.21,
                1.43, -17.69}
                ,
                {1.43, -17.69,
                -25.45, -5.89}
            },
            {
                {-20.59, -16.30,
                -35.88, -5.27}
                ,
                {-35.88, -5.27,
                -34.44, 3.04}
                ,
                {-34.44, 3.04,
                -31.74, 11.97}
                ,
                {-31.74, 11.97,
                -27.77, 16.46}
                ,
                {-27.77, 16.46,
                -18.58, 16.63}
                ,
                {-18.58, 16.63,
                -11.57, 13.01}
                ,
                {-11.57, 13.01,
                -0.69, 13.06}
                ,
                {-0.69, 13.06,
                12.14, 12.95}
                ,
                {12.14, 12.95,
                21.88, 9.53}
                ,
                {21.88, 9.53,
                28.74, 6.37}
                ,
                {28.74, 6.37,
                36.58, 2.38}
                ,
                {36.58, 2.38,
                40.81, -2.62}
                ,
                {40.81, -2.62,
                42.04, -7.42}
                ,
                {42.04, -7.42,
                -20.59, -16.30}
            }
        }
        obj_char["shadow_box_pos"] = {
            {110.2598,518.7381}
            ,{310.2987,510.9183}
        }

        -- draw
        obj_char[8] = 7
    end
    res[56] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-20.39, -9.02,
                -16.80, 3.26}
                ,
                {-16.80, 3.26,
                -11.23, 7.46}
                ,
                {-11.23, 7.46,
                -3.91, 11.73}
                ,
                {-3.91, 11.73,
                3.62, 13.95}
                ,
                {3.62, 13.95,
                10.75, 16.24}
                ,
                {10.75, 16.24,
                16.57, 14.94}
                ,
                {16.57, 14.94,
                21.26, 11.03}
                ,
                {21.26, 11.03,
                22.09, 4.49}
                ,
                {22.09, 4.49,
                22.16, 0.74}
                ,
                {22.16, 0.74,
                9.37, -9.22}
                ,
                {9.37, -9.22,
                -20.39, -9.02}
            },
            {
                {-16.27, -21.74,
                -35.07, -11.61}
                ,
                {-35.07, -11.61,
                -34.49, -6.46}
                ,
                {-34.49, -6.46,
                -33.73, 5.50}
                ,
                {-33.73, 5.50,
                -31.37, 8.95}
                ,
                {-31.37, 8.95,
                -26.90, 10.66}
                ,
                {-26.90, 10.66,
                -14.83, 10.14}
                ,
                {-14.83, 10.14,
                -2.67, 13.02}
                ,
                {-2.67, 13.02,
                8.16, 14.74}
                ,
                {8.16, 14.74,
                18.56, 14.35}
                ,
                {18.56, 14.35,
                27.12, 13.37}
                ,
                {27.12, 13.37,
                35.21, 11.33}
                ,
                {35.21, 11.33,
                40.67, 7.54}
                ,
                {40.67, 7.54,
                42.18, 2.45}
                ,
                {42.18, 2.45,
                40.38, -3.14}
                ,
                {40.38, -3.14,
                37.25, -5.79}
                ,
                {37.25, -5.79,
                31.68, -7.07}
                ,
                {31.68, -7.07,
                23.58, -7.73}
                ,
                {23.58, -7.73,
                16.93, -8.08}
                ,
                {16.93, -8.08,
                9.28, -11.89}
                ,
                {9.28, -11.89,
                4.27, -19.06}
                ,
                {4.27, -19.06,
                -16.27, -21.74}
            }
        }
        obj_char["shadow_box_pos"] = {
            {65.0098,506.4881}
            ,{291.4237,511.6683}
        }

        -- draw
        obj_char[8] = 8
    end
    res[63] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-16.27, -21.74,
                -33.82, -13.24}
                ,
                {-33.82, -13.24,
                -33.74, -5.46}
                ,
                {-33.74, -5.46,
                -33.73, 5.50}
                ,
                {-33.73, 5.50,
                -31.74, 9.08}
                ,
                {-31.74, 9.08,
                -26.90, 10.66}
                ,
                {-26.90, 10.66,
                -14.83, 10.14}
                ,
                {-14.83, 10.14,
                -1.42, 13.40}
                ,
                {-1.42, 13.40,
                8.16, 14.74}
                ,
                {8.16, 14.74,
                18.56, 14.35}
                ,
                {18.56, 14.35,
                27.12, 13.37}
                ,
                {27.12, 13.37,
                35.21, 11.33}
                ,
                {35.21, 11.33,
                40.67, 7.54}
                ,
                {40.67, 7.54,
                42.18, 2.45}
                ,
                {42.18, 2.45,
                40.38, -3.14}
                ,
                {40.38, -3.14,
                37.25, -5.79}
                ,
                {37.25, -5.79,
                31.68, -7.07}
                ,
                {31.68, -7.07,
                18.33, -7.73}
                ,
                {18.33, -7.73,
                15.05, -8.46}
                ,
                {15.05, -8.46,
                5.52, -19.06}
                ,
                {5.52, -19.06,
                -16.27, -21.74}
            }
        }
        obj_char["shadow_box_pos"] = {
            {217.9237,512.6683}
        }

        -- draw
        obj_char[8] = 9
    end
    res[70] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-8.66, -27.71,
                -35.37, -8.74}
                ,
                {-35.37, -8.74,
                -34.47, -2.88}
                ,
                {-34.47, -2.88,
                -29.88, 1.10}
                ,
                {-29.88, 1.10,
                -18.38, 3.44}
                ,
                {-18.38, 3.44,
                -7.99, 10.99}
                ,
                {-7.99, 10.99,
                1.57, 15.86}
                ,
                {1.57, 15.86,
                11.46, 18.61}
                ,
                {11.46, 18.61,
                20.20, 20.29}
                ,
                {20.20, 20.29,
                27.62, 21.19}
                ,
                {27.62, 21.19,
                33.81, 19.15}
                ,
                {33.81, 19.15,
                37.25, 13.53}
                ,
                {37.25, 13.53,
                37.12, 7.29}
                ,
                {37.12, 7.29,
                33.86, 4.10}
                ,
                {33.86, 4.10,
                27.71, 0.20}
                ,
                {27.71, 0.20,
                18.92, -2.55}
                ,
                {18.92, -2.55,
                16.10, -4.37}
                ,
                {16.10, -4.37,
                11.84, -11.37}
                ,
                {11.84, -11.37,
                -8.66, -27.71}
            }
        }
        obj_char["shadow_box_pos"] = {
            {136.9237,506.2933}
        }

        -- draw
        obj_char[8] = 10
    end
    res[77] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-23.23, 2.54,
                -18.23, 10.86}
                ,
                {-18.23, 10.86,
                -10.18, 14.98}
                ,
                {-10.18, 14.98,
                -2.16, 16.40}
                ,
                {-2.16, 16.40,
                5.96, 16.50}
                ,
                {5.96, 16.50,
                13.95, 16.26}
                ,
                {13.95, 16.26,
                19.74, 12.85}
                ,
                {19.74, 12.85,
                21.61, 6.68}
                ,
                {21.61, 6.68,
                20.65, 0.99}
                ,
                {20.65, 0.99,
                18.77, -1.41}
                ,
                {18.77, -1.41,
                10.22, -4.04}
                ,
                {10.22, -4.04,
                3.14, -9.49}
                ,
                {3.14, -9.49,
                0.22, -15.47}
                ,
                {0.22, -15.47,
                -23.23, 2.54}
            },
            {
                {-16.62, -23.45,
                -38.03, -15.87}
                ,
                {-38.03, -15.87,
                -37.92, -8.95}
                ,
                {-37.92, -8.95,
                -38.00, -1.88}
                ,
                {-38.00, -1.88,
                -35.88, 5.83}
                ,
                {-35.88, 5.83,
                -30.62, 8.87}
                ,
                {-30.62, 8.87,
                -19.39, 8.98}
                ,
                {-19.39, 8.98,
                -8.25, 16.17}
                ,
                {-8.25, 16.17,
                0.43, 19.52}
                ,
                {0.43, 19.52,
                11.91, 19.47}
                ,
                {11.91, 19.47,
                22.07, 19.09}
                ,
                {22.07, 19.09,
                30.40, 17.19}
                ,
                {30.40, 17.19,
                34.84, 14.52}
                ,
                {34.84, 14.52,
                36.54, 10.98}
                ,
                {36.54, 10.98,
                36.40, 6.09}
                ,
                {36.40, 6.09,
                34.96, 2.24}
                ,
                {34.96, 2.24,
                31.16, -0.28}
                ,
                {31.16, -0.28,
                24.38, -2.93}
                ,
                {24.38, -2.93,
                15.98, -3.97}
                ,
                {15.98, -3.97,
                12.11, -6.60}
                ,
                {12.11, -6.60,
                4.44, -17.24}
                ,
                {4.44, -17.24,
                -16.62, -23.45}
            }
        }
        obj_char["shadow_box_pos"] = {
            {120.7598,508.6131}
            ,{281.9237,505.7933}
        }

        -- draw
        obj_char[8] = 11
    end
    res[84] = function()
        -- state_number
        obj_char["velocity"] = {obj_char[5]*walk_speed,0}

        -- sub_obj
        obj_char["shadow_box_table"] = {
            {
                {-19.83, -0.46,
                -12.82, 7.05}
                ,
                {-12.82, 7.05,
                -3.39, 11.26}
                ,
                {-3.39, 11.26,
                6.32, 14.29}
                ,
                {6.32, 14.29,
                11.89, 14.76}
                ,
                {11.89, 14.76,
                17.27, 12.53}
                ,
                {17.27, 12.53,
                20.21, 6.16}
                ,
                {20.21, 6.16,
                19.74, 0.29}
                ,
                {19.74, 0.29,
                15.69, -3.65}
                ,
                {15.69, -3.65,
                9.48, -9.10}
                ,
                {9.48, -9.10,
                -19.83, -0.46}
            },
            {
                {-17.04, -14.15,
                -34.93, -5.76}
                ,
                {-34.93, -5.76,
                -34.45, 9.86}
                ,
                {-34.45, 9.86,
                -30.68, 13.56}
                ,
                {-30.68, 13.56,
                -24.26, 14.23}
                ,
                {-24.26, 14.23,
                -15.22, 13.47}
                ,
                {-15.22, 13.47,
                -7.03, 15.46}
                ,
                {-7.03, 15.46,
                5.16, 18.57}
                ,
                {5.16, 18.57,
                13.90, 18.50}
                ,
                {13.90, 18.50,
                21.67, 17.94}
                ,
                {21.67, 17.94,
                35.82, 13.32}
                ,
                {35.82, 13.32,
                40.70, 8.08}
                ,
                {40.70, 8.08,
                41.20, 2.25}
                ,
                {41.20, 2.25,
                37.73, -3.56}
                ,
                {37.73, -3.56,
                26.51, -5.81}
                ,
                {26.51, -5.81,
                18.03, -4.42}
                ,
                {18.03, -4.42,
                12.90, -6.07}
                ,
                {12.90, -6.07,
                7.64, -11.71}
                ,
                {7.64, -11.71,
                -17.04, -14.15}
            }
        }
        obj_char["shadow_box_pos"] = {
            {85.125,505.875}
            ,{279.0625,508.1875}
        }

        -- draw
        obj_char["f"] = 21
        obj_char[8] = 3
    end
    
    return res
end

function load_game_scene_anim_char_IZY_4(obj_char)
end



function load_game_scene_anim_char_IZY_overdrive(obj_char)
    local res = {}
    local other_side_obj_char = common_game_scene_change_character(obj_char["player_side"])
    -- 更新hitbox table 有一个全屏的红框
    -- 更新逻辑为没有伤害 没有硬直 只是速度调为0

    local function update_move_overdrive_state()
        if obj_char["overdrive"][1] > 0 then
            obj_char["overdrive"][1] = 
            obj_char["overdrive"][1] - obj_char["overdrive_drain_speed"]
        elseif obj_char["overdrive"][1] < 0 then
            obj_char["overdrive"][1] = 0
        end
        if other_side_obj_char["game_speed_abnormal_realtime_countdown"] == 0 and obj_char["f"] > 3 then
            obj_char["move_state"] = "recovery"
        end
    end

    for i = 0,79 do
        res[i] = function()
            -- state
            update_move_overdrive_state()
        end
    end
    res[0] = function()
        -- state
        obj_char["sprite_sheet_state"] = "overdrive"
        obj_char["height_state"] = "stand"
        obj_char["hit_type_state"] = "none"
        obj_char["hit_guard_type_state"] = "none" -- none all low high
        obj_char["hit_counter_state"] = 0
        obj_char["hurt_state"] = "idle" -- idle unblock punish counter GP parry
        obj_char["move_state"] = "startup" -- none startup active recovery

        obj_char["current_animation_length"] = 80 -- 如果为0则是循环动画

        obj_char["hit_cancel"] = false -- 取消链

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

        obj_char["knife_state"] = "off"
        obj_char["knife_anchor_pos"] = {168,210}

        -- state_number
        update_move_overdrive_state()
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

        -- command_cache
        obj_char["command_cache"] = {}
        obj_char["command_cache_load_countdown"] = 80

        -- draw_correction
        obj_char[8] = 0
        obj_char["anchor_pos"] = {169,530}
        obj_char["hurtstop_wiggle_x"] = 0
        obj_char["hurtstop_wiggle_y"] = 0
        obj_char["current_hurtstop_wiggle_x_animation"] = nil
        obj_char["current_hurtstop_wiggle_y_animation"] = nil

        -- VFX
        insert_VFX_game_scene_char_overdrive_badge(obj_char)
        insert_VFX_game_scene_char_overdrive_partical(obj_char)
        insert_VFX_game_scene_char_overdrive_black_overlay(obj_char)
    end
    res[3] = function() 
        -- state & state_number
        update_move_overdrive_state()
            -- idle状态下OD 恢复为3+13
            -- 攻击状态下OD 恢复为3+3
            -- block_stun状态下OD 恢复为3+23
        other_side_obj_char["game_speed"] = 0
        other_side_obj_char["game_speed_subframe"] = 0
        if obj_char["hurt_state"] == "idle" or  obj_char["unblock"] == "idle" then
            other_side_obj_char["game_speed_abnormal_realtime_countdown"] = 80 - 13 ---- 之后对面玩家根据情况不同要改
        elseif obj_char["state"] == "hitstop" then
            other_side_obj_char["game_speed_abnormal_realtime_countdown"] = 80 - 3 ---- 之后对面玩家根据情况不同要改
        elseif obj_char["state"] == "blockstop" then
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
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 2
        obj_char["shadow_box_pos"] = {
            {94.5,529.1}
            ,{253.8,518.4}
        }
    end
    res[9] = function() 
        -- state & state_number
        update_move_overdrive_state()

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
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 4
    end
    res[19] = function() 
        -- state & state_number
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 5
    end
    res[28] = function() 
        -- state & state_number
        update_move_overdrive_state()

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
        update_move_overdrive_state()

        -- VFX
        insert_VFX_game_scene_char_overdrive_airflow(obj_char)
    end
    res[32] = function() 
        -- state & state_number
        update_move_overdrive_state()

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
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 7
    end
    res[38] = function() 
        -- state & state_number
        update_move_overdrive_state()
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
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 7
    end
    res[44] = function() 
        -- state & state_number
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 8
    end
    res[47] = function() 
        -- state & state_number
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 9
    end
    res[50] = function() 
        -- state & state_number
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 7
    end
    res[53] = function() 
        -- state & state_number
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 8
    end
    res[56] = function() 
        -- state & state_number
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 9
    end
    res[58] = function() 
        -- state & state_number
        update_move_overdrive_state()

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
        update_move_overdrive_state()

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
        update_move_overdrive_state()

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
        update_move_overdrive_state()

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
        update_move_overdrive_state()

        -- draw_correction
        obj_char[8] = 14
    end
    res[80] = function()
        -- animation end
    end

    return res

end



function load_game_scene_anim_char_IZY_5P(obj_char)
    local res = {}
    local overdrive_add = 0.05
    local heat_add = 0.05
    local ability_add = 0.05
    local side = obj_char["player_side"]
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

    local friction = 4

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
        obj_char["hit_type_state"] = "strike" -- none strike throw burst
        obj_char["hit_guard_type_state"] = "all" -- none all low high
        obj_char["hit_counter_state"] = 1 -- 当前攻击counter等级 0 1 2 3
        obj_char["hurt_state"] = "counter" -- idle unblock punish counter GP parry
        obj_char["move_state"] = "startup" -- none startup active recovery
        if side == "L" then
            obj_char["stand_hurt_animation"] = anim_char_LP_5P_stand_hurt_high
            obj_char["stand_counter_animation"] = nil
            obj_char["stand_block_animation"] = nil
            obj_char["crouch_hurt_animation"] = nil
            obj_char["crouch_counter_animation"] = nil
            obj_char["crouch_block_animation"] = nil
            obj_char["air_hurt_animation"] = nil
            obj_char["air_counter_animation"] = nil
            obj_char["air_block_animation"] = nil
        elseif side == "R" then
            obj_char["stand_hurt_animation"] = anim_char_RP_5P_stand_hurt_high
            obj_char["stand_counter_animation"] = nil
            obj_char["stand_block_animation"] = nil
            obj_char["crouch_hurt_animation"] = nil
            obj_char["crouch_counter_animation"] = nil
            obj_char["crouch_block_animation"] = nil
            obj_char["air_hurt_animation"] = nil
            obj_char["air_counter_animation"] = nil
            obj_char["air_block_animation"] = nil
        end

        obj_char["current_animation_length"] = 31 -- 如果为0则是循环动画

        obj_char["hit_cancel"] = false -- 取消链

        obj_char["throw_inv"] = true
        obj_char["throw_inv_countdown"] = 8

        obj_char["hit_function"] = function() end
        obj_char["hurt_function"] = function() end
        obj_char["parry_function"] = function() end

        -- state_number
        add_heat_ability_overdrive()
        obj_char["friction"] = friction

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
        obj_char["hit_VFX_insert_function"] = insert_VFX_game_scene_char_light_blast
        obj_char["hit_VFX_insert_function_argument"] = {obj_char,99,-514}
        obj_char["hit_SFX"] = nil

        -- command_cache
        obj_char["command_cache"] = {}
        obj_char["command_cache_load_countdown"] = 0
        obj_char["block_command_cache_countdown"] = 0

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
        obj_char["move_state"] = "active" -- none startup active recovery
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

        -- VFX
        insert_VFX_game_scene_char_IZY_5P_whiff(obj_char)
        
    end
    res[6] = function() 
        -- state & state_number
        add_heat_ability_overdrive()

        -- draw_correction
        obj_char[8] = 3
    end
    res[8] = function() 
        -- state
        obj_char["hit_type_state"] = "none" -- none strike throw burst
        obj_char["hit_guard_type_state"] = "none" -- none all low high
        obj_char["hit_counter_state"] = 1
        obj_char["hurt_state"] = "punish" -- idle unblock punish counter GP parry
        obj_char["move_state"] = "recovery" -- none startup active recovery
        obj_char["strike_active"] = false
        obj_char["hit_function"] = function() end
        add_heat_ability_overdrive()

        -- collide
        obj_char["pushbox"] = {0, -185, 130, 370}
        obj_char["hitbox_table"] = {}
        obj_char["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}

        -- draw_correction
        obj_char[8] = 4
    end
    res[10] = function() 
        -- input_sys_cache
        obj_char["command_cache_load_countdown"] = 5
        -- draw_correction
        obj_char[8] = 5
    end
    res[14] = function() 
        -- draw_correction
        obj_char[8] = 6
    end
    res[15] = function() 
        obj_char["idle_cancel"] = true
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
    res[28] = function() 
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
    res[31] = function() 
        -- animation end
    end

    return res

end

function load_game_scene_anim_char_IZY_5P_stand_hurt_high(obj_char)
    local res = {}
    local overdrive_add = 0.05
    local heat_add = 0.05
    local ability_add = 0.05
    local side = obj_char["player_side"]
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
        local hurt_horizontal_velocity = 44
        if other_side_obj_char["hurt_state"] == "counter" then
            hurt_horizontal_velocity = hurt_horizontal_velocity * 1.5
        end

        -- state
        other_side_obj_char["sprite_sheet_state"] = "stand_hurt_high"
        other_side_obj_char["height_state"] = "stand" -- stand crouch air
        other_side_obj_char["hit_type_state"] = "none" -- none strike throw burst
        other_side_obj_char["hit_guard_type_state"] = "none" -- none all low high
        other_side_obj_char["hit_counter_state"] = 0 -- 当前攻击counter等级 0 1 2 3
        other_side_obj_char["hurt_state"] = "unblock" -- idle unblock punish counter GP parry
        other_side_obj_char["move_state"] = "none" -- none startup active recovery

        other_side_obj_char["current_animation_length"] = 13

        other_side_obj_char["strike_inv"] = false
        other_side_obj_char["strike_inv_countdown"] = 0
        other_side_obj_char["throw_inv"] = true
        other_side_obj_char["throw_inv_countdown"] = 18
        other_side_obj_char["projectile_inv"] = false
        other_side_obj_char["projectile_inv_countdown"] = 0
        other_side_obj_char["burst_inv"] = false
        other_side_obj_char["burst_inv_countdown"] = 0

        other_side_obj_char["hit_function"] = function() end
        other_side_obj_char["hurt_function"] = function() end
        other_side_obj_char["parry_function"] = function() end

         -- state_number
        other_side_obj_char["velocity"] = {0,0}
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

        other_side_obj_char["friction"] = 1.5
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
        other_side_obj_char["hurtstop_wiggle_x"] = 0
        other_side_obj_char["hurtstop_wiggle_y"] = 0
        other_side_obj_char["current_hurtstop_wiggle_x_animation"] = 
            common_game_scene_create_wiggle_animation(
                obj_char["hit_hurt_blockstop_countdown"],
                "hurtstop_wiggle_x",
                12
            )
        other_side_obj_char["current_hurtstop_wiggle_y_animation"] = 
            common_game_scene_create_wiggle_animation(
                obj_char["hit_hurt_blockstop_countdown"],
                "hurtstop_wiggle_y",
                4
            )
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