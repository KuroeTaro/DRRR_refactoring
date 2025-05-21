function load_game_scene_anim_char_IZY_stand_idle(char_obj)
    local res = {}
    res[0] = function() 
        -- draw
        char_obj[8] = 0
        char_obj["anchor_pos"] = {90,520}
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {44.625,516.875}
            ,{146.0625,496.1875}
        }


        -- state
        char_obj["height_state"] = "stand" -- stand crouch air
        char_obj["hit_type_state"] = "none" -- none strike throw burst
        char_obj["hit_counter_state"] = 1 -- 当前攻击counter等级 1 small 2 mid 3 big
        char_obj["hurt_state"] = "idle" -- idle punish counter GP parry
        char_obj["hurt_animation"] = nil
        char_obj["block_animation"] = nil

        char_obj["strike_active"] = false -- 防止在同一动作的active多次触发
        char_obj["throw_active"] = false -- 防止在同一动作的active多次触发

        char_obj["strike_inv"] = false
        char_obj["strike_inv_countdown"] = 0
        char_obj["throw_inv"] = false
        char_obj["throw_inv_countdown"] = 0
        char_obj["projectile_inv"] = false
        char_obj["projectile_inv_countdown"] = 0
        char_obj["burst_inv"] = false
        char_obj["burst_inv_countdown"] = 0

        char_obj["hit_function"] = function() end
        char_obj["hurt_function"] = function() end
        char_obj["parry_function"] = function() end

        char_obj["knife_anchor_pos"] = {168,210}

        -- state number
        obj_char_game_scene_char_LP["gravity"] = 9.8
        obj_char_game_scene_char_LP["friction"] = 9.8
        char_obj["hurt_horizontal_velocity_correction"] = 1
        char_obj["hurt_gravity_correction"] = 1
        char_obj["hurt_damage_correction"] = 1

        -- hit_hurt_pushbox
        char_obj["pushbox"] = {0, -185, 130, 370}
        char_obj["hitbox_table"] = {}
        char_obj["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}

    end
    for i = 1,16 do
        res[i*7] = function()
            -- draw
            char_obj[8] = i
        end
    end
    res[17*7] = function()
        -- draw
        char_obj["f"] = -1
        char_obj[8] = 0
    end
    return res

end

function load_game_scene_anim_char_IZY_overdrive(char_obj,side)
    local res = {}
    -- 更新hitbox table 有一个全屏的红框
    -- 更新逻辑为没有伤害 没有硬直 只是速度调为0

    local function drain_overdrive()
        if char_obj["overdrive"][1] > 0 then
            char_obj["overdrive"][1] = 
            char_obj["overdrive"][1] - char_obj["overdrive_drain_speed"]
        elseif char_obj["overdrive"][1] < 0 then
            char_obj["overdrive"][1] = 0
        end
    end

    for i = 0,79 do
        res[i] = function()
            -- state
            drain_overdrive()
        end
    end
    res[0] = function()
        -- draw
        char_obj[8] = 0
        char_obj["anchor_pos"] = {169,530}
        char_obj["knife_state"] = "off"
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {111.9,529.5}
            ,{228.6,515.3}
        }

        -- hit_hurt_pushbox
        char_obj["pushbox"] = {0, -185, 130, 370}
        char_obj["hitbox_table"] = {} --{ 攻击类型 是投还是打， function值 内部为命中后的逻辑, 具体的box形状}
        char_obj["hurtbox_table"] = {}

        --  state
        char_obj["strike_inv"] = true
        char_obj["strike_inv_countdown"] = 80
        char_obj["throw_inv"] = true
        char_obj["throw_inv_countdown"] = 80
        char_obj["projectile_inv"] = true
        char_obj["projectile_inv_countdown"] = 80
        char_obj["burst_inv"] = true
        char_obj["burst_inv_countdown"] = 80

        drain_overdrive()

        play_obj_audio(audio_SFX_game_scene_overdrive)

        -- VFX
        insert_VFX_game_scene_char_overdrive_badge(char_obj,side)
        insert_VFX_game_scene_char_overdrive_partical(char_obj)
        insert_VFX_game_scene_char_overdrive_black_overlay(char_obj)
        
    end
    res[3] = function() 
        -- draw
        char_obj[8] = 1
        char_obj["shadow_box_table"][2] = {
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
        char_obj["shadow_box_pos"] ={
            {104.5,529.5}
            ,{246.4,518.8}
        }

        -- state
        drain_overdrive()
            -- idle状态下OD 恢复为3+13
            -- 攻击状态下OD 恢复为3+3
            -- block_stun状态下OD 恢复为3+23
        local other_side_char_obj = common_game_scene_change_character(side)
        other_side_char_obj["game_speed"] = 0
        other_side_char_obj["game_speed_subframe"] = 0
        other_side_char_obj["game_speed_abnormal_realtime_countdown"] = 80 - 13
    end
    res[6] = function() 
        -- draw
        char_obj[8] = 2
        char_obj["shadow_box_pos"] ={
            {94.5,529.1}
            ,{253.8,518.4}
        }

        -- state
        drain_overdrive()
    end
    res[9] = function() 
        -- draw
        char_obj[8] = 3
        char_obj["shadow_box_table"][2] = {
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
        char_obj["shadow_box_pos"] ={
            {92.8,529.5}
            ,{256.8,519.4}
        }

        -- state
        drain_overdrive()
    end
    res[14] = function() 
        -- draw
        char_obj[8] = 4

        -- state
        drain_overdrive()
    end
    res[19] = function() 
        -- draw
        char_obj[8] = 5

        -- state
        drain_overdrive()
    end
    res[28] = function() 
        -- draw
        char_obj[8] = 6
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {70.8,523.375}
            ,{265.5,523.25}
        }

        -- state
        drain_overdrive()
    end
    res[30] = function()
        -- state
        drain_overdrive()

        -- VFX
        insert_VFX_game_scene_char_overdrive_airflow(char_obj)
    end
    res[32] = function() 
        -- draw
        char_obj[8] = 8
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {66.375,525.875}
            ,{271.625,525.125}
        }

        -- state
        drain_overdrive()
    end
    res[35] = function() 
        -- draw
        char_obj[8] = 7

        -- state
        drain_overdrive()
    end
    res[38] = function() 
        -- draw
        char_obj[8] = 9

        -- state
        drain_overdrive()
        if char_obj["health"][1]/char_obj["health"][3] > 0.85 then
            char_obj["overdrive_timer"] = {0,2,0,0}
        elseif char_obj["health"][1]/char_obj["health"][3] > 0.60 then
            char_obj["overdrive_timer"] = {0,3,0,0}
        elseif char_obj["health"][1]/char_obj["health"][3] > 0.45 then
            char_obj["overdrive_timer"] = {0,4,0,0}
        elseif char_obj["health"][1]/char_obj["health"][3] > 0.35 then
            char_obj["overdrive_timer"] = {0,5,0,0}
        else
            char_obj["overdrive_timer"] = {0,6,0,0}
        end
        char_obj["overdrive"][3] = "on"
    end
    res[41] = function() 
        -- draw
        char_obj[8] = 7

        -- state
        drain_overdrive()
    end
    res[44] = function() 
        -- state
        char_obj[8] = 8

        -- state
        drain_overdrive()
    end
    res[47] = function() 
        -- draw
        char_obj[8] = 9

        -- state
        drain_overdrive()
    end
    res[50] = function() 
        -- draw
        char_obj[8] = 7

        -- state
        drain_overdrive()
    end
    res[53] = function() 
        -- draw
        char_obj[8] = 8

        -- state
        drain_overdrive()
    end
    res[56] = function() 
        -- draw
        char_obj[8] = 9

        -- state
        drain_overdrive()
    end
    res[58] = function() 
        -- draw
        char_obj[8] = 10
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {79.875,518.375}
            ,{273.375,523.375}
        }

        -- state
        drain_overdrive()
    end
    res[60] = function() 
        -- draw
        char_obj[8] = 11
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {99.25,525.9}
            ,{251.8,517.1}
        }

        -- state
        drain_overdrive()
    end
    res[63] = function() 
        -- draw
        char_obj[8] = 12
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {121.0,525.8}
            ,{228.5,508.5}
        }

        -- state
        drain_overdrive()
    end
    res[67] = function() 
        -- draw
        char_obj[8] = 13
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {123.625,526.875}
            ,{225.0625,506.1875}
        }

        -- state
        drain_overdrive()
    end
    res[72] = function() 
        -- draw
        char_obj[8] = 14

        -- state
        drain_overdrive()
    end
    res[80] = function()
        -- animation end
    end

    return res

end

function load_game_scene_anim_char_IZY_5P(char_obj,side)
    local res = {}
    local overdrive_add = 0.05
    local heat_add = 0.05
    local ability_add = 0.05
    local function add_heat_ability_overdrive()
        if char_obj["overdrive"][1] < char_obj["overdrive"][2] then
            char_obj["overdrive"][1] = 
            math.min(char_obj["overdrive"][1] + overdrive_add,char_obj["overdrive"][2])
        end
        if char_obj["heat"][1] < char_obj["heat"][2] then
            char_obj["heat"][1] = 
            math.min(char_obj["heat"][1] + heat_add,char_obj["heat"][2])
        end
        if char_obj["ability"][1] < char_obj["ability"][2] then
            char_obj["ability"][1] = 
            math.min(char_obj["ability"][1] + ability_add,char_obj["ability"][2])
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
        -- draw
        char_obj[8] = 0
        char_obj["anchor_pos"] = {193,515}
        char_obj["knife_anchor_pos"] = {168,210}
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {147.625,511.875}
            ,{249.0625,491.1875}
        }

        -- hit_hurt_pushbox
        char_obj["pushbox"] = {0, -185, 130, 370}
        char_obj["hitbox_table"] = {}
        char_obj["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}

        -- state
        char_obj["height_state"] = "stand"
        char_obj["hit_type_state"] = "strike" -- none strike throw burst
        char_obj["hit_counter_state"] = 1 -- 当前攻击counter等级 0 1 2 3
        char_obj["hurt_state"] = "counter" -- idle punish counter block fd_block GP parry
        char_obj["friction"] = friction
        char_obj["throw_inv"] = true
        char_obj["throw_inv_countdown"] = 8
        add_heat_ability_overdrive()
    end
    res[2] = function() 
        -- draw
        char_obj[8] = 1

        -- state
        add_heat_ability_overdrive()
    end
    res[4] = function() 
        -- draw
        char_obj[8] = 2

        -- hit_hurt_pushbox
        char_obj["hitbox_table"] = {{119, -416, 260, 98}} --{ 攻击类型 打 投 指令投, 具体的box形状}
        char_obj["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50},{119, -416, 320, 128}}

        -- state
        add_heat_ability_overdrive()
        char_obj["strike_active"] = true 
        char_obj["hit_function"] = common_game_scene_hit_function
        char_obj["hit_hurt_block_stop_countdown"] = 10
            -- 根据状态设置hitstop状态和动画 存储缓存状态 使得结束hitstop状态后可以回到5p后续动画
        char_obj["hurt_function"] = function() 
            -- 根据对方的状态设置hurtstop状态 动画
            -- 或者blockstop GP parry

        end
    end
    res[6] = function() 
        -- draw
        char_obj[8] = 3

        -- state
        add_heat_ability_overdrive()
    end
    res[8] = function() 
        -- draw
        char_obj[8] = 4

        -- hit_hurt_pushbox
        char_obj["pushbox"] = {0, -185, 130, 370}
        char_obj["hitbox_table"] = {}
        char_obj["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}

        -- state
        add_heat_ability_overdrive()
        char_obj["strike_active"] = false
        char_obj["hit_function"] = function() end
        char_obj["hit_type_state"] = "none" -- none strike throw burst
        char_obj["hurt_state"] = "punish" -- idle punish counter block fd_block GP parry
        char_obj["hit_counter_state"] = 1
    end
    res[10] = function() 
        -- draw
        char_obj[8] = 5
    end
    res[14] = function() 
        -- draw
        char_obj[8] = 6
    end
    res[18] = function() 
        -- draw
        char_obj[8] = 7
        char_obj["shadow_box_table"] = {
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
    end
    res[22] = function() 
        -- draw
        char_obj[8] = 8
        char_obj["shadow_box_table"] = {
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
    end
    res[25] = function() 
        -- draw
        char_obj[8] = 9
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {147.625,511.875}
            ,{249.0625,491.1875}
        }

    end
    res[31] = function() 
        -- animation end
    end

    return res

end

function load_game_scene_anim_char_IZY_5P_hurt_stand_high(char_obj,side)
    local res = {}
    local overdrive_add = 0.05
    local heat_add = 0.05
    local ability_add = 0.05
    local other_side_hurtbox_data = common_game_scene_change_character_hurtbox(side)
    local function add_heat_ability_overdrive()
        if char_obj["overdrive"][1] < char_obj["overdrive"][2] then
            char_obj["overdrive"][1] = 
            math.min(char_obj["overdrive"][1] + overdrive_add,char_obj["overdrive"][2])
        end
        if char_obj["heat"][1] < char_obj["heat"][2] then
            char_obj["heat"][1] = 
            math.min(char_obj["heat"][1] + heat_add,char_obj["heat"][2])
        end
        if char_obj["ability"][1] < char_obj["ability"][2] then
            char_obj["ability"][1] = 
            math.min(char_obj["ability"][1] + ability_add,char_obj["ability"][2])
        end
    end

    for i = 0,13 do
        res[i] = function()
            -- state
            add_heat_ability_overdrive()
        end
    end

    res[0] = function() 
        -- draw
        char_obj[8] = 0
        char_obj["anchor_pos"] = {209,520}
        char_obj["knife_state"] = "off"
        char_obj["knife_anchor_pos"] = {168,210}
        char_obj["knife_animation"] = nil
        char_obj["knife_8"] = 0 -- obj[knife_8]匕首图形上的帧数
        char_obj["knife_f"] = 0 -- obj[knife_8]匕首逻辑上的帧数
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {44.0,517.0}
            ,{146.0,497.0}
        }

        -- hit_hurt_pushbox
        char_obj["pushbox"] = {0, -185, 130, 370}
        char_obj["hitbox_table"] = {}
        char_obj["hurtbox_table"] = other_side_hurtbox_data["stand_hurt_high"][0]

        -- state
        if char_obj["x"] < common_game_scene_change_character(side)["x"] then
            char_obj["velocity"] = {10,0} -- 根据当前敌我x位置变化
        elseif char_obj["x"] > common_game_scene_change_character(side)["x"] then
            char_obj["velocity"] = {-10,0} -- 根据当前敌我x位置变化
        else
            char_obj["velocity"] = {0,0} -- 根据当前敌我x位置变化
        end
        char_obj["height_state"] = "stand"
        char_obj["hit_type_state"] = "none" -- none strike throw burst
        char_obj["hit_counter_state"] = 1 -- 当前攻击counter等级 1 small 2 mid 3 big
        char_obj["friction"] = 9.8
        char_obj["throw_inv"] = true
        char_obj["throw_inv_countdown"] = 18
        add_heat_ability_overdrive()
    end

    res[2] = function() 
        -- draw
        char_obj[8] = 2
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {44.0,517.0}
            ,{146.0,497.0}
        }

        -- hit_hurt_pushbox
        char_obj["hurtbox_table"] = other_side_hurtbox_data["stand_hurt_high"][2]

        -- state
        add_heat_ability_overdrive()
    end

    res[6] = function() 
        -- draw
        char_obj[8] = 3
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {44.0,517.0}
            ,{146.0,497.0}
        }

        -- state
        add_heat_ability_overdrive()
    end

    res[9] = function() 
        -- draw
        char_obj[8] = 4
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {44.0,517.0}
            ,{146.0,497.0}
        }

        -- hit_hurt_pushbox
        char_obj["hurtbox_table"] = other_side_hurtbox_data["stand_hurt_high"][4]

        -- state
        add_heat_ability_overdrive()
    end

    res[11] = function() 
        -- draw
        char_obj[8] = 5
        char_obj["shadow_box_table"] = {
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
        char_obj["shadow_box_pos"] ={
            {44.0,517.0}
            ,{146.0,497.0}
        }

        -- state
        add_heat_ability_overdrive()
    end

    res[13] = function() 
        -- animation end
    end

    return res

end