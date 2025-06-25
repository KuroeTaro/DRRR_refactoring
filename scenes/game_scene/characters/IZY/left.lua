-- LP -> RP
-- ASSET_DATA[2] -> ASSET_DATA[3]
-- "L" -> "R"
-- obj_char_game_scene_char_LP = {0, 0, 0, 1, 1, 1, 0, 0} -> obj_char_game_scene_char_RP = {0, 0, 0, 1, -1, 1, 0, 0}
-- obj_char_game_scene_char_LP["x"] = -320 -> obj_char_game_scene_char_RP["x"] = 320

function load_game_scene_obj_char_LP()
    -- x y z opacity sx sy r f
    obj_char_game_scene_char_LP = {0, 0, 0, 1, 1, 1, 0, 0} -- obj[1-8]都为图形上的数据 obj[8]为图形上的帧数
    obj_char_game_scene_char_LP["x"] = -320
    obj_char_game_scene_char_LP["y"] = 365
    obj_char_game_scene_char_LP["f"] = -1 -- obj["f"] 逻辑上的帧数
    obj_char_game_scene_char_LP["FCT"] = {0,0,0,0,0,0,0,0}
    obj_char_game_scene_char_LP["LCT"] = {0,0,0,0,0,0,0,0}
    obj_char_game_scene_char_LP["LCD"] = {0,0,0,0,0,0,0,0}

    -- state
    obj_char_game_scene_char_LP["player_side"] = "L"
    obj_char_game_scene_char_LP["type"] = "character"
    obj_char_game_scene_char_LP["state"] = "before_ease_in"
    obj_char_game_scene_char_LP["state_cache"] = "none"
    obj_char_game_scene_char_LP["sprite_sheet_state"] = "stand_idle"
    obj_char_game_scene_char_LP["height_state"] = "stand" -- stand crouch air
    obj_char_game_scene_char_LP["hit_type_state"] = "none" -- none strike throw burst projectile
    obj_char_game_scene_char_LP["hit_guard_type_state"] = "none" -- none all low high
    obj_char_game_scene_char_LP["hit_counter_state"] = 0 -- 当前攻击counter等级 0 1 2 3
    obj_char_game_scene_char_LP["hurt_state"] = "idle" -- idle unblock punish counter GP parry
    obj_char_game_scene_char_LP["move_state"] = "none" -- none startup active recovery

    obj_char_game_scene_char_LP["input_sys_state"] = "none" -- none save load
    obj_char_game_scene_char_LP["input_sys_cache"] = {}
    init_input_sys_cache(obj_char_game_scene_char_LP)

    obj_char_game_scene_char_LP["hit_SFX"] = nil
    obj_char_game_scene_char_LP["stand_hurt_animation"] = nil
    obj_char_game_scene_char_LP["stand_block_animation"] = nil
    obj_char_game_scene_char_LP["crouch_hurt_animation"] = nil
    obj_char_game_scene_char_LP["crouch_block_animation"] = nil
    obj_char_game_scene_char_LP["air_hurt_animation"] = nil
    obj_char_game_scene_char_LP["air_block_animation"] = nil
    obj_char_game_scene_char_LP["OTG_hurt_animation"] = nil

    obj_char_game_scene_char_LP["current_animation"] = nil
    obj_char_game_scene_char_LP["current_animation_length"] = 0 -- 如果为0则是循环动画

    obj_char_game_scene_char_LP["hit_cancel"] = false -- 取消链
    obj_char_game_scene_char_LP["idle_cancel"] = true -- 取消链

    obj_char_game_scene_char_LP["strike_active"] = false -- 防止在同一动作的active多次触发
    obj_char_game_scene_char_LP["throw_active"] = false -- 防止在同一动作的active多次触发

    obj_char_game_scene_char_LP["strike_inv"] = false
    obj_char_game_scene_char_LP["strike_inv_countdown"] = 0
    obj_char_game_scene_char_LP["throw_inv"] = false
    obj_char_game_scene_char_LP["throw_inv_countdown"] = 0
    obj_char_game_scene_char_LP["projectile_inv"] = false
    obj_char_game_scene_char_LP["projectile_inv_countdown"] = 0
    obj_char_game_scene_char_LP["burst_inv"] = false
    obj_char_game_scene_char_LP["burst_inv_countdown"] = 0

    obj_char_game_scene_char_LP["hit_function"] = function() end
    obj_char_game_scene_char_LP["hurt_function"] = function() end
    obj_char_game_scene_char_LP["parry_function"] = function() end
    obj_char_game_scene_char_LP["hit_counter_ver_function"] = function() end

    obj_char_game_scene_char_LP["knife_state"] = "off"
    obj_char_game_scene_char_LP["knife_anchor_pos"] = {168,210}
    obj_char_game_scene_char_LP["knife_animation"] = nil
    obj_char_game_scene_char_LP["knife_8"] = 0 -- obj[knife_8]匕首图形上的帧数
    obj_char_game_scene_char_LP["knife_f"] = 0 -- obj[knife_8]匕首逻辑上的帧数

    -- state_number
    obj_char_game_scene_char_LP["velocity"] = {0,0}
    obj_char_game_scene_char_LP["velocity_cache"] = {0,0}
    obj_char_game_scene_char_LP["gravity"] = 9.8
    obj_char_game_scene_char_LP["friction"] = 4
    obj_char_game_scene_char_LP["health"] = {11500, 11500, 11500, "fade_off"}
    obj_char_game_scene_char_LP["heat"] = {0.0, 200.0} -- 0.0 - 200.0
    obj_char_game_scene_char_LP["ability"] = {600.0, 600.0} -- 0.0 - 600.0
    obj_char_game_scene_char_LP["overdrive"] = {600.0, 600.0, "off"} -- 0.0 - 600.0
    obj_char_game_scene_char_LP["overdrive_timer"] = {0,0,0,0} -- 0f 00:00 
    obj_char_game_scene_char_LP["overdrive_drain_speed"] = 24
    obj_char_game_scene_char_LP["risk"] = {0.0, 300.0}-- 0.0 - 300.0
    obj_char_game_scene_char_LP["positive_bouns"] = {0.0, 600.0} -- 0.0 - 600.0
    obj_char_game_scene_char_LP["hurt_horizontal_velocity_correction"] = 1
    obj_char_game_scene_char_LP["hurt_gravity_correction"] = 1
    obj_char_game_scene_char_LP["hurt_damage_correction"] = 1

    -- game_speed
    obj_char_game_scene_char_LP["game_speed"] = 1
    obj_char_game_scene_char_LP["game_speed_subframe"] = 1
    obj_char_game_scene_char_LP["game_speed_abnormal_realtime_countdown"] = 0 -- 只能是game_speed的倍数
    obj_char_game_scene_char_LP["hit_hurt_blockstop_countdown"] = 0
    obj_char_game_scene_char_LP["hit_hurt_block_slowdown_countdown"] = 0

    -- collide
    obj_char_game_scene_char_LP["pushbox"] = {0, -185, 130, 370}
    obj_char_game_scene_char_LP["collision_move_available"] = {1,1}
    obj_char_game_scene_char_LP["hitbox_table"] = {}
    obj_char_game_scene_char_LP["hurtbox_table"] = {{0, -215, 170, 430},{0, -455, 100, 50}}

    -- sub_obj
    obj_char_game_scene_char_LP["projectile_table"] = {}
    obj_char_game_scene_char_LP["VFX_HUD_table"] = {}
    obj_char_game_scene_char_LP["VFX_front_table"] = {}
    obj_char_game_scene_char_LP["VFX_back_table"] = {}
    obj_char_game_scene_char_LP["black_overlay_table"] = {}
    obj_char_game_scene_char_LP["shadow_box_table"] = {
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
    obj_char_game_scene_char_LP["shadow_box_pos"] = {
        {44.625,516.875}
        ,{146.0625,496.1875}
    }

    obj_char_game_scene_char_LP["hit_VFX_insert_function"] = nil
    obj_char_game_scene_char_LP["hit_VFX_insert_function_argument"] = nil
    obj_char_game_scene_char_LP["hit_SFX"] = nil
    obj_char_game_scene_char_LP["counter_VFX_insert_function"] = nil
    obj_char_game_scene_char_LP["counter_VFX_insert_function_argument"] = nil
    obj_char_game_scene_char_LP["counter_SFX"] = nil
    obj_char_game_scene_char_LP["block_VFX_insert_function"] = nil
    obj_char_game_scene_char_LP["block_VFX_insert_function_argument"] = nil
    obj_char_game_scene_char_LP["block_SFX"] = nil
    
    -- draw_correction
    obj_char_game_scene_char_LP[8] = 0
    obj_char_game_scene_char_LP["anchor_pos"] = {90,520}
    obj_char_game_scene_char_LP["contrast"] = 1
    obj_char_game_scene_char_LP["brightness"] = 0
    obj_char_game_scene_char_LP["brightness_const"] = 0
    obj_char_game_scene_char_LP["brightness_end_const"] = 0.2
    obj_char_game_scene_char_LP["hurtstop_wiggle_x"] = 0
    obj_char_game_scene_char_LP["hurtstop_wiggle_y"] = 0
    obj_char_game_scene_char_LP["current_hurtstop_wiggle_x_animation"] = nil
    obj_char_game_scene_char_LP["current_hurtstop_wiggle_y_animation"] = nil

    obj_char_game_scene_char_LP["camera_x_shake_anim"] = nil
    obj_char_game_scene_char_LP["camera_y_shake_anim"] = nil
    obj_char_game_scene_char_LP["camera_enclosing_anim"] = nil

end

function order_load_game_scene_char_LP_frames(load_order)
    local PLAYER_ASSET_DATA = ASSET_DATA[2]
    local switch = 
    {
        [1] = function()
            image_sprite_sheet_table_char_game_scene_LP = {}

            image_sprite_sheet_table_char_game_scene_LP["stand_idle"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_stand_idle.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["stand_idle_sprite_batch"])
            )
            image_sprite_sheet_table_char_game_scene_LP["6"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_6.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["6_sprite_batch"])
            )
            image_sprite_sheet_table_char_game_scene_LP["4"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_4.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["4_sprite_batch"])
            )
            image_sprite_sheet_table_char_game_scene_LP["5_stop"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_5_stop.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["5_stop_sprite_batch"])
            )



            image_sprite_sheet_table_char_game_scene_LP["overdrive"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_overdrive.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["overdrive_sprite_batch"])
            )
            image_sprite_sheet_table_char_game_scene_LP["5P"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_5P.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["5P_sprite_batch"])
            )



            image_sprite_sheet_table_char_game_scene_LP["stand_hurt_high"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/_character/IZY_stand_hurt_high.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["stand_hurt_high_sprite_batch"])
            )


            
            image_sprite_sheet_VFX_game_scene_LP_overdrive_badge = 
            sprite_sheet_load(
                "asset/game_scene/VFX/overdrive_badge/IZY_overdrive_badge.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["overdrive_badge_sprite_batch"])
            )
            image_sprite_sheet_VFX_game_scene_LP_5P_whiff = 
            sprite_sheet_load(
                "asset/game_scene/VFX/whiff_VFX/IZY/5P.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["5P_whiff_VFX_sprite_batch"])
            )

        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end

    -- image_table_char_game_scene_LP_knife = {}
    -- image_table_char_game_scene_LP_knife["stand_idle_hold"] = {}
    -- image_table_char_game_scene_LP_knife["stand_idle_shoot"] = {}
    -- for i = 0,3 do
    --     image_table_char_game_scene_LP_knife["stand_idle_hold"][i] = love.graphics.newImage(ASSET_DATA[1]["LP_KNIFE"]["stand_idle_hold"][i])
    -- end
    -- for i = 0,9 do
    --     image_table_char_game_scene_LP_knife["stand_idle_shoot"][i] = love.graphics.newImage(ASSET_DATA[1]["LP_KNIFE"]["stand_idle_shoot"][i])
    -- end

end

function load_game_scene_anim_char_LP()
    local obj_char = obj_char_game_scene_char_LP
    -- 站姿待机动画
    anim_char_LP_stand_idle = load_game_scene_anim_char_IZY_stand_idle(obj_char)    
    -- 行走动画
    anim_char_LP_6_walk = load_game_scene_anim_char_IZY_6(obj_char)
    anim_char_LP_4_walk = load_game_scene_anim_char_IZY_4(obj_char)
    anim_char_LP_5_walk_stop = load_game_scene_anim_char_IZY_5_walk_stop(obj_char)
    -- overdrive启动动画
    anim_char_LP_overdrive = load_game_scene_anim_char_IZY_overdrive(obj_char)
    -- 拳脚动画
    anim_char_LP_5P_stand_hurt_high = load_game_scene_anim_char_IZY_5P_stand_hurt_high(obj_char)
    anim_char_LP_5P = load_game_scene_anim_char_IZY_5P(obj_char)

    obj_char["current_animation"] = anim_char_LP_stand_idle

end

function load_game_scene_hurtbox_shadowbox_data_LP()
    obj_hurtboxs_data_game_scene_char_LP = {}
    obj_hurtboxs_data_game_scene_char_LP["stand_hurt_high"] = {}
    obj_hurtboxs_data_game_scene_char_LP["stand_hurt_high"][0] = {{-10, -200, 195, 400},{-27, -430, 100, 60}}
    obj_hurtboxs_data_game_scene_char_LP["stand_hurt_high"][1] = {{-28, -200, 260, 400},{-80, -415, 160, 30}}
    obj_hurtboxs_data_game_scene_char_LP["stand_hurt_high"][2] = {{-28, -200, 260, 400},{-80, -415, 160, 30}}
    obj_hurtboxs_data_game_scene_char_LP["stand_hurt_high"][3] = {{-28, -200, 260, 400},{-80, -415, 160, 30}}
    obj_hurtboxs_data_game_scene_char_LP["stand_hurt_high"][4] = {{-9, -200, 200, 400},{-34, -425, 115, 50}}
    obj_hurtboxs_data_game_scene_char_LP["stand_hurt_high"][5] = {{-9, -200, 200, 400},{-34, -425, 115, 50}}

    obj_shadowboxs_data_game_scene_char_LP = {}
    obj_shadowboxs_data_game_scene_char_LP["stand_hurt_high"] = {}
    obj_shadowboxs_data_game_scene_char_LP["stand_hurt_high"][0] = {
        {
            {
                {-6.75, -20.00,
                -17.13, -3.88}
                ,
                {-17.13, -3.88,
                -16.80, 8.03}
                ,
                {-16.80, 8.03,
                -15.25, 14.69}
                ,
                {-15.25, 14.69,
                -12.92, 17.53}
                ,
                {-12.92, 17.53,
                -9.31, 20.25}
                ,
                {-9.31, 20.25,
                -2.22, 22.21}
                ,
                {-2.22, 22.21,
                5.00, 22.88}
                ,
                {5.00, 22.88,
                10.41, 21.87}
                ,
                {10.41, 21.87,
                15.00, 19.69}
                ,
                {15.00, 19.69,
                18.09, 16.96}
                ,
                {18.09, 16.96,
                19.13, 14.63}
                ,
                {19.13, 14.63,
                18.46, -3.60}
                ,
                {18.46, -3.60,
                -6.75, -20.00}
            },
            {
                {-20.75, -8.25,
                -35.38, -3.75}
                ,
                {-35.38, -3.75,
                -35.19, 2.44}
                ,
                {-35.19, 2.44,
                -32.69, 7.81}
                ,
                {-32.69, 7.81,
                -27.13, 10.50}
                ,
                {-27.13, 10.50,
                -15.38, 10.69}
                ,
                {-15.38, 10.69,
                -2.75, 18.44}
                ,
                {-2.75, 18.44,
                10.69, 19.94}
                ,
                {10.69, 19.94,
                26.19, 18.25}
                ,
                {26.19, 18.25,
                34.02, 15.55}
                ,
                {34.02, 15.55,
                37.19, 11.00}
                ,
                {37.19, 11.00,
                36.81, 3.19}
                ,
                {36.81, 3.19,
                33.68, -0.54}
                ,
                {33.68, -0.54,
                26.25, -3.13}
                ,
                {26.25, -3.13,
                14.31, -3.94}
                ,
                {14.31, -3.94,
                8.13, -9.00}
                ,
                {8.13, -9.00,
                -20.75, -8.25}
            }
        },
        {
            {148.5,514}
            ,{285.375,494.8125}
        }
    }
    obj_shadowboxs_data_game_scene_char_LP["stand_hurt_high"][1] = {
        {
            {
                {-6.75, -20.00,
                -19.38, -4.25}
                ,
                {-19.38, -4.25,
                -16.56, 10.50}
                ,
                {-16.56, 10.50,
                -15.41, 14.22}
                ,
                {-15.41, 14.22,
                -12.22, 17.85}
                ,
                {-12.22, 17.85,
                -7.75, 20.75}
                ,
                {-7.75, 20.75,
                0.12, 21.25}
                ,
                {0.12, 21.25,
                9.06, 20.94}
                ,
                {9.06, 20.94,
                15.49, 19.19}
                ,
                {15.49, 19.19,
                18.81, 16.31}
                ,
                {18.81, 16.31,
                19.65, 11.30}
                ,
                {19.65, 11.30,
                18.94, 4.50}
                ,
                {18.94, 4.50,
                16.89, -0.53}
                ,
                {16.89, -0.53,
                12.46, -7.97}
                ,
                {12.46, -7.97,
                -6.75, -20.00}
            },
            {
                {-18.50, -10.38,
                -27.75, -6.75}
                ,
                {-27.75, -6.75,
                -27.56, -0.56}
                ,
                {-27.56, -0.56,
                -23.81, 4.44}
                ,
                {-23.81, 4.44,
                -19.51, 7.50}
                ,
                {-19.51, 7.50,
                -13.13, 8.56}
                ,
                {-13.13, 8.56,
                0.38, 17.56}
                ,
                {0.38, 17.56,
                11.94, 18.81}
                ,
                {11.94, 18.81,
                26.19, 17.75}
                ,
                {26.19, 17.75,
                34.02, 15.55}
                ,
                {34.02, 15.55,
                37.19, 11.00}
                ,
                {37.19, 11.00,
                37.31, 3.19}
                ,
                {37.31, 3.19,
                33.68, -1.04}
                ,
                {33.68, -1.04,
                27.63, -3.50}
                ,
                {27.63, -3.50,
                19.56, -4.06}
                ,
                {19.56, -4.06,
                9.88, -10.25}
                ,
                {9.88, -10.25,
                -18.50, -10.38}
            }
        },
        {
            {146.375,511.375}
            ,{312,478.5625}
        }
    }
    obj_shadowboxs_data_game_scene_char_LP["stand_hurt_high"][2] = {
        {
            {
                {-6.75, -20.00,
                -19.38, -4.25}
                ,
                {-19.38, -4.25,
                -17.83, 6.84}
                ,
                {-17.83, 6.84,
                -15.25, 14.69}
                ,
                {-15.25, 14.69,
                -12.51, 18.63}
                ,
                {-12.51, 18.63,
                -7.56, 21.13}
                ,
                {-7.56, 21.13,
                0.57, 21.70}
                ,
                {0.57, 21.70,
                9.00, 21.50}
                ,
                {9.00, 21.50,
                16.38, 18.88}
                ,
                {16.38, 18.88,
                19.75, 16.23}
                ,
                {19.75, 16.23,
                20.12, 11.06}
                ,
                {20.12, 11.06,
                19.63, 5.38}
                ,
                {19.63, 5.38,
                17.17, -0.36}
                ,
                {17.17, -0.36,
                12.46, -7.97}
                ,
                {12.46, -7.97,
                -6.75, -20.00}
            },
            {
                {-18.50, -10.38,
                -27.94, -6.50}
                ,
                {-27.94, -6.50,
                -26.69, 0.75}
                ,
                {-26.69, 0.75,
                -24.00, 4.25}
                ,
                {-24.00, 4.25,
                -19.51, 7.50}
                ,
                {-19.51, 7.50,
                -13.13, 8.56}
                ,
                {-13.13, 8.56,
                -0.50, 17.56}
                ,
                {-0.50, 17.56,
                11.94, 18.81}
                ,
                {11.94, 18.81,
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
                33.68, -1.04}
                ,
                {33.68, -1.04,
                27.63, -3.50}
                ,
                {27.63, -3.50,
                19.56, -4.06}
                ,
                {19.56, -4.06,
                9.88, -10.25}
                ,
                {9.88, -10.25,
                -18.50, -10.38}
            }
        },
        {
            {149,511}
            ,{307.5,490.8125}
        }
    }
    obj_shadowboxs_data_game_scene_char_LP["stand_hurt_high"][3] = {
        {
            {
                {-6.75, -20.00,
                -19.38, -4.25}
                ,
                {-19.38, -4.25,
                -17.25, 8.13}
                ,
                {-17.25, 8.13,
                -15.25, 14.69}
                ,
                {-15.25, 14.69,
                -11.59, 18.63}
                ,
                {-11.59, 18.63,
                -7.56, 21.13}
                ,
                {-7.56, 21.13,
                1.00, 21.93}
                ,
                {1.00, 21.93,
                8.75, 21.55}
                ,
                {8.75, 21.55,
                13.00, 20.63}
                ,
                {13.00, 20.63,
                15.97, 19.62}
                ,
                {15.97, 19.62,
                19.13, 17.63}
                ,
                {19.13, 17.63,
                20.21, 13.62}
                ,
                {20.21, 13.62,
                19.63, 7.14}
                ,
                {19.63, 7.14,
                18.50, 1.88}
                ,
                {18.50, 1.88,
                16.28, -2.69}
                ,
                {16.28, -2.69,
                12.46, -7.97}
                ,
                {12.46, -7.97,
                -6.75, -20.00}
            },
            {
                {-18.50, -10.38,
                -28.38, -6.50}
                ,
                {-28.38, -6.50,
                -27.75, 1.00}
                ,
                {-27.75, 1.00,
                -24.81, 4.69}
                ,
                {-24.81, 4.69,
                -19.51, 7.50}
                ,
                {-19.51, 7.50,
                -14.50, 8.56}
                ,
                {-14.50, 8.56,
                -1.38, 17.94}
                ,
                {-1.38, 17.94,
                11.94, 18.81}
                ,
                {11.94, 18.81,
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
                33.68, -1.04}
                ,
                {33.68, -1.04,
                27.63, -3.50}
                ,
                {27.63, -3.50,
                19.56, -4.06}
                ,
                {19.56, -4.06,
                9.88, -10.25}
                ,
                {9.88, -10.25,
                -18.50, -10.38}
            }
        },
        {
            {150.75,511}
            ,{300.875,492.5625}
        }
    }
    obj_shadowboxs_data_game_scene_char_LP["stand_hurt_high"][4] = {
        {
            {
                {-6.75, -20.00,
                -19.38, -4.25}
                ,
                {-19.38, -4.25,
                -17.67, 6.75}
                ,
                {-17.67, 6.75,
                -15.25, 14.69}
                ,
                {-15.25, 14.69,
                -11.67, 18.93}
                ,
                {-11.67, 18.93,
                -7.56, 21.13}
                ,
                {-7.56, 21.13,
                1.00, 22.01}
                ,
                {1.00, 22.01,
                8.63, 21.50}
                ,
                {8.63, 21.50,
                14.49, 19.91}
                ,
                {14.49, 19.91,
                19.13, 17.50}
                ,
                {19.13, 17.50,
                20.27, 12.62}
                ,
                {20.27, 12.62,
                19.63, 5.38}
                ,
                {19.63, 5.38,
                15.93, -1.84}
                ,
                {15.93, -1.84,
                12.46, -7.97}
                ,
                {12.46, -7.97,
                -6.75, -20.00}
            },
            {
                {-22.38, -8.50,
                -37.94, -2.38}
                ,
                {-37.94, -2.38,
                -37.81, 5.31}
                ,
                {-37.81, 5.31,
                -35.13, 9.00}
                ,
                {-35.13, 9.00,
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
        },
        {
            {156.375,512.375}
            ,{295.125,493.5625}
        }
    }
    obj_shadowboxs_data_game_scene_char_LP["stand_hurt_high"][5] = {
        {
            {
                {-6.75, -20.00,
                -19.38, -3.88}
                ,
                {-19.38, -3.88,
                -17.89, 6.18}
                ,
                {-17.89, 6.18,
                -16.31, 12.75}
                ,
                {-16.31, 12.75,
                -15.51, 15.19}
                ,
                {-15.51, 15.19,
                -13.59, 17.83}
                ,
                {-13.59, 17.83,
                -7.81, 21.19}
                ,
                {-7.81, 21.19,
                -3.25, 21.78}
                ,
                {-3.25, 21.78,
                2.50, 22.00}
                ,
                {2.50, 22.00,
                9.85, 21.72}
                ,
                {9.85, 21.72,
                14.65, 20.60}
                ,
                {14.65, 20.60,
                18.25, 18.19}
                ,
                {18.25, 18.19,
                19.95, 14.75}
                ,
                {19.95, 14.75,
                20.11, 10.31}
                ,
                {20.11, 10.31,
                19.25, 5.38}
                ,
                {19.25, 5.38,
                16.23, -1.21}
                ,
                {16.23, -1.21,
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
        },
        {
            {164.625,515.875}
            ,{274.375,496}
        }
    }


end

function load_game_scene_shader_char_LP()
    -- no shader for now
end

function load_game_scene_audio_char_LP()

end





-- 更新和状态机
function update_game_scene_char_LP()
    state_machine_char_game_scene_char_LP()
    -- state_machine_char_game_scene_char_LP_knife()
    
end

function state_machine_char_game_scene_char_LP()
    -- 拉后最高优先级 然后是拉下 然后是拉前 然后是跳
    -- 然后是方向组合拳脚 普通拳脚 从轻到重
    -- 然后是必杀
    -- 然后是超必杀
    -- 最后是od和霸
    -- SP + 拉后 = 拉盾
    -- INPUT_SYS_COMMAND_TABLE = {
    --     "Up","Down","Left","Right",
    --     "P","S","HS","K",
    --     "SP","Launcher","Back","Start",
    --     "RC","Dash","Burst","UA"
    -- }

    -- sp + 拉前/回中 + p 扔球
    -- sp + 拉前/回中 + k 翻滚
    -- sp + 拉前/回中 + s 拔枪
    -- sp + 拉下/下前 + s 双手构/蛇刹
    -- sp + luncher 普通投

    local input = INPUT_SYS_CURRENT_COMMAND_STATE["L"]
    local obj_char = obj_char_game_scene_char_LP
    local switch = {
        -- 通用状态
        ["before_ease_in"] = function()
            character_animator(obj_char,obj_char["current_animation"])
        end,
        ["hitstop"] = function()
            update_game_scene_char_LP_hitstop_countdown()
            state_machine_char_game_scene_char_LP_input_sys_cache()
            if obj_char["hit_hurt_blockstop_countdown"] <= 1 then
                obj_char["state"] = obj_char["state_cache"]
                obj_char["velocity"] = obj_char["velocity_cache"]
                obj_char["game_speed_abnormal_realtime_countdown"] = obj_char["hit_hurt_block_slowdown_countdown"]
                obj_char["game_speed"] = 1
                obj_char["hit_hurt_blockstop_countdown"] = 0 
                obj_char["hit_hurt_block_slowdown_countdown"] = 0
            end
        end,
        ["hurtstop"] = function()
            update_game_scene_char_LP_hurtstop_countdown()
            state_machine_char_game_scene_char_LP_input_sys_cache()
            if obj_char["hit_hurt_blockstop_countdown"] <= 1 then
                obj_char["state"] = obj_char["state_cache"]
                obj_char["velocity"] = obj_char["velocity_cache"]
                obj_char["game_speed_abnormal_realtime_countdown"] = obj_char["hit_hurt_block_slowdown_countdown"]
                obj_char["game_speed"] = 2
                obj_char["hit_hurt_blockstop_countdown"] = 0 
                obj_char["hit_hurt_block_slowdown_countdown"] = 0
                obj_char["hurtstop_wiggle_x"] = 0
                obj_char["hurtstop_wiggle_y"] = 0
            end
        end,
        ["blockstop"] = function()

        end,
        ["hurt"] = function()
            character_animator(obj_char,obj_char["current_animation"])
            if obj_char["f"] >= obj_char["current_animation_length"] then
                if obj_char["height_state"] == "stand" then
                    -- to idle
                    obj_char["current_animation"] = anim_char_LP_stand_idle
                    init_character_anim_with(obj_char,obj_char["current_animation"])
                    obj_char["state"] = "stand_idle"
                    state_gate_game_scene_char_LP_from_stand_idle(input,obj_char)
                end
            end
        end,
        ["block"] = function()
            character_animator(obj_char,obj_char["current_animation"])
            if obj_char["f"] >= obj_char["current_animation_length"] then
                if obj_char["height_state"] == "stand" then
                    -- to idle
                    obj_char["current_animation"] = anim_char_LP_stand_idle
                    init_character_anim_with(obj_char,obj_char["current_animation"])
                    obj_char["state"] = "stand_idle"
                    state_gate_game_scene_char_LP_from_stand_idle(input,obj_char)
                end
            end
        end,

        -- 待机状态
        ["stand_idle"] = function()
            character_animator(obj_char,obj_char["current_animation"])
            state_gate_game_scene_char_LP_from_stand_idle(input,obj_char)
        end,
        ["6_and_4_walk"] = function()
            common_game_scene_check_6_and_4_move(obj_char)
            state_gate_game_scene_char_LP_from_6_and_4_walk(input,obj_char)
        end,
        ["walk_stop"] = function()
            character_animator(obj_char,obj_char["current_animation"])
            state_gate_game_scene_char_LP_from_stand_idle(input,obj_char)
            if obj_char["f"] >= obj_char["current_animation_length"] then
                if obj_char["height_state"] == "stand" then
                    -- to idle
                    obj_char["current_animation"] = anim_char_LP_stand_idle
                    init_character_anim_with(obj_char,obj_char["current_animation"])
                    obj_char["state"] = "stand_idle"
                    state_gate_game_scene_char_LP_from_stand_idle(input,obj_char)
                end
            end
        end,
        ["overdrive"] = function()
            character_animator(obj_char,obj_char["current_animation"])
            if test_input_sys_press(input["RC"]) and obj_char["f"] < 30 then
                -- to overdrive RC
                
            elseif obj_char["f"] >= obj_char["current_animation_length"] then
                -- to stand_idle
                obj_char["idle_cancel"] = true -- 取消链
                obj_char["current_animation"] = anim_char_LP_stand_idle
                init_character_anim_with(obj_char,obj_char["current_animation"])
                obj_char["state"] = "stand_idle"
                state_gate_game_scene_char_LP_from_stand_idle(input,obj_char)
            end
        end,
        ["5P"] = function()
            character_animator(obj_char,obj_char["current_animation"])
            
            if obj_char["f"] >= obj_char["current_animation_length"] then
                -- to stand_idle
                obj_char["current_animation"] = anim_char_LP_stand_idle
                init_character_anim_with(obj_char,obj_char["current_animation"])
                obj_char["state"] = "stand_idle"
                state_gate_game_scene_char_LP_from_stand_idle(input,obj_char)
                return
            end
            if obj_char["hit_cancel"] and obj_char["f"] >= 8 then
                obj_char["input_sys_state"] = "load" -- none save load
                state_machine_char_game_scene_char_LP_input_sys_cache()
                if test_input_sys_press(input["P"]) then
                    obj_char["hit_cancel"] = false
                    -- to 5P
                    obj_char["current_animation"] = anim_char_LP_5P
                    init_character_anim_with(obj_char,obj_char["current_animation"])
                    obj_char["state"] = "5P"
                    return
                end
            end
            if obj_char["idle_cancel"] then
                obj_char["input_sys_state"] = "load" -- none save load
                state_machine_char_game_scene_char_LP_input_sys_cache()
                state_gate_game_scene_char_LP_from_stand_idle(input,obj_char)
            end
        end,
    }
    update_game_scene_char_LP_global_countdown()
    local this_function = switch[obj_char["state"]]
    if this_function then this_function() end

end

function state_machine_char_game_scene_char_LP_knife()
    local obj = obj_char_game_scene_char_LP
    local switch = {
        ["off"] = function()

        end,
        ["on"] = function()

        end,
        ["steady"] = function()

        end,
    }
    local this_function = switch[obj["knife_state"]]
    if this_function then this_function() end

end

function state_machine_char_game_scene_char_LP_input_sys_cache()
    local obj_char = obj_char_game_scene_char_LP
    local input = INPUT_SYS_CURRENT_COMMAND_STATE["L"]
    local switch = {
        ["none"] = function()
        end,
        ["save"] = function()
            if input["UP"] == "Pressing" then
                obj_char["input_sys_cache"]["Up"] = true
                obj_char["input_sys_cache"]["Down"] = false
            elseif input["Down"] == "Pressing" then
                obj_char["input_sys_cache"]["Up"] = false
                obj_char["input_sys_cache"]["Down"] = true
            end
            if input["Left"] == "Pressing" then
                obj_char["input_sys_cache"]["Left"] = true
                obj_char["input_sys_cache"]["Right"] = false
            elseif input["Right"] == "Pressing" then
                obj_char["input_sys_cache"]["Left"] = false
                obj_char["input_sys_cache"]["Right"] = true
            end
            if input["P"] == "Pressing" then
                obj_char["input_sys_cache"]["P"] = true
                obj_char["input_sys_cache"]["S"] = false
                obj_char["input_sys_cache"]["K"] = false
                obj_char["input_sys_cache"]["Launcher"] = false
            elseif input["S"] == "Pressing" then
                obj_char["input_sys_cache"]["P"] = false
                obj_char["input_sys_cache"]["S"] = true
                obj_char["input_sys_cache"]["K"] = false
                obj_char["input_sys_cache"]["Launcher"] = false
            elseif input["K"] == "Pressing" then
                obj_char["input_sys_cache"]["P"] = false
                obj_char["input_sys_cache"]["S"] = false
                obj_char["input_sys_cache"]["K"] = true
                obj_char["input_sys_cache"]["Launcher"] = false
            elseif input["Launcher"] == "Pressing" then
                obj_char["input_sys_cache"]["P"] = false
                obj_char["input_sys_cache"]["S"] = false
                obj_char["input_sys_cache"]["K"] = false
                obj_char["input_sys_cache"]["Launcher"] = true
            end
            if input["RC"] == "Pressing" then
                obj_char["input_sys_cache"]["RC"] = true
            end
            if input["Burst"] == "Pressing" then
                obj_char["input_sys_cache"]["Burst"] = true
            end
            if input["UA"] == "Pressing" then
                obj_char["input_sys_cache"]["UA"] = true
            end
        end,
        ["load"] = function()
            for i=1,16 do
                if obj_char["input_sys_cache"][INPUT_SYS_COMMAND_TABLE[i]] then
                    input[INPUT_SYS_COMMAND_TABLE[i]] = "Pressing"
                end
            end
            obj_char["input_sys_state"] = "none"
            init_input_sys_cache(obj_char)
        end,
    }
    local this_function = switch[obj_char["input_sys_state"]]
    if this_function then this_function() end
end





function draw_game_scene_char_LP_logic_graphic_pos_sync()
    local obj = obj_char_game_scene_char_LP
    obj[1] = obj["x"]+(obj["hurtstop_wiggle_x"]*(math.random()-0.5)*2)-obj[5]*obj["anchor_pos"][1]
    obj[2] = obj["y"]+(obj["hurtstop_wiggle_y"]*(math.random()-0.5)*2)-obj[6]*obj["anchor_pos"][2]
end

function draw_game_scene_char_LP()
    local obj = obj_char_game_scene_char_LP
    local camera = obj_stage_game_scene_camera
    local image_sprite_sheet = image_sprite_sheet_table_char_game_scene_LP[obj["sprite_sheet_state"]]

    local x = obj[1]
    local y = obj[2]
    local z = obj[3]
    local opacity = obj[4]
    local sx = obj[5]
    local sy = obj[6]
    local r = obj[7]
    local f = obj[8]

    local knife_state = obj["knife_state"]

    if knife_state == "on" then
        local knife_8 = obj["knife_8"]
    
        local knife = {
            x+sx*obj["knife_anchor_pos"][1], 
            y+sy*obj["knife_anchor_pos"][2], 
            z, 
            opacity, 
            sx, 
            sy, 
            r, 
            knife_8
        }

        -- local knife_image_table = image_table_char_game_scene_LP_knife[obj["state"]]
        -- draw_3d_image_table(camera,knife,knife_image_table)
        local knife_image_table = image_UI_load_scene_loading_text
        draw_3d_image(camera,knife,knife_image_table)

    end

    -- draw_3d_image_table(camera,obj,character_image_table)
    image_sprite_sheet["sprite_batch"]:clear()
    draw_3d_image_sprite_batch(camera,obj,image_sprite_sheet,""..f.."")

    local shader = shader_game_scene_brightness_contrast
    shader:send("contrast", obj["contrast"])
    shader:send("brightness", obj["brightness"])
    love.graphics.setShader(shader)
    love.graphics.draw(image_sprite_sheet["sprite_batch"])
    love.graphics.setShader()

end

function draw_game_scene_char_LP_shadow()
    local obj = obj_char_game_scene_char_LP
    local shadow_box_table = obj["shadow_box_table"]
    local opacity = (obj["y"]-325)/40
    local z = obj[3]
    local sx = obj[5]
    local sy = obj[6]
    local shadow_anchor = obj_stage_game_scene_shadow_anchor
    local camera = obj_stage_game_scene_camera
    local camera_z = camera[3]

    local obj_2d_pos = draw_3d_point_to_2D(camera,obj)
    local shadow_anchor_2d_pos = draw_3d_point_to_2D(camera,shadow_anchor)
    local scale = draw_resolution_correction(800)/(z-camera_z)

    love.graphics.setColor(0, 0, 0, opacity)
    for i = 1,#shadow_box_table do
        local x = obj_2d_pos[1] + scale*sx*obj["shadow_box_pos"][i][1]
        local y = obj_2d_pos[2] + scale*sy*obj["shadow_box_pos"][i][2]

        common_game_scene_draw_shadow(
            shadow_box_table[i],
            shadow_anchor_2d_pos,
            x,
            y,
            scale*sx,
            scale*sy
        )
    end
    love.graphics.setColor(1, 1, 1, 1)
    
end

function draw_game_scene_char_LP_hurtbox()
    if not DEBUG_HITBOX_SHOWS then
        return
    end

    local obj_char = obj_char_game_scene_char_LP
    local camera = obj_stage_game_scene_camera

    -- hurt box
    local color = DEBUG_BOX_COLOR_BLUE
    for i=1,#obj_char["hurtbox_table"] do
        local current_hurtbox = obj_char["hurtbox_table"][i]
        local draw_box = {
            obj_char["x"] + (current_hurtbox[1] - current_hurtbox[3]/2)*obj_char[5],
            obj_char["y"] + current_hurtbox[2] - current_hurtbox[4]/2,
            obj_char[3],obj_char[5],1
        }
        draw_box["w"] = current_hurtbox[3]
        draw_box["h"] = current_hurtbox[4]
        draw_3d_color_box(camera,draw_box,color)
    end

end

function draw_game_scene_char_LP_hitbox()
    if not DEBUG_HITBOX_SHOWS then
        return
    end

    local obj_char = obj_char_game_scene_char_LP
    local camera = obj_stage_game_scene_camera

    -- hit box
    local color = DEBUG_BOX_COLOR_RED
    for i=1,#obj_char["hitbox_table"] do
        local current_hitbox = obj_char["hitbox_table"][i]
        local draw_box = {
            obj_char["x"] + (current_hitbox[1] - current_hitbox[3]/2)*obj_char[5],
            obj_char["y"] + current_hitbox[2] - current_hitbox[4]/2,
            obj_char[3],obj_char[5],1
        }
        draw_box["w"] = current_hitbox[3]
        draw_box["h"] = current_hitbox[4]
        draw_3d_color_box(camera,draw_box,color)
    end

end

function draw_game_scene_char_LP_pushbox()
    if not DEBUG_HITBOX_SHOWS then
        return
    end

    local obj_char = obj_char_game_scene_char_LP
    local camera = obj_stage_game_scene_camera

    -- push box
    local color = DEBUG_BOX_COLOR_YELLOW
    local pushbox = {
        obj_char["x"] + (obj_char["pushbox"][1] - obj_char["pushbox"][3]/2)*obj_char[5],
        obj_char["y"] + obj_char["pushbox"][2] - obj_char["pushbox"][4]/2,
        obj_char[3],obj_char[5],1
    }
    pushbox["w"] = obj_char["pushbox"][3]
    pushbox["h"] = obj_char["pushbox"][4]
    draw_3d_color_box(camera,pushbox,color)

end





function update_game_scene_char_LP_projectile()
    for i = #obj_char_game_scene_char_LP["projectile_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["projectile_table"][i]
        object["update"](object)
        if object["life"] <= 1 then
            table.remove(obj_char_game_scene_char_LP["projectile_table"], i) -- 寿命耗尽，从列表中移除
        end
    end
end

function draw_game_scene_char_LP_projectile()
    for i = #obj_char_game_scene_char_LP["projectile_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["projectile_table"][i]
        object["draw"](object)
    end
end






function update_game_scene_char_LP_VFX()
    for i = #obj_char_game_scene_char_LP["VFX_HUD_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["VFX_HUD_table"][i]
        object["update"](object)
        if object["life"] <= 1 then
            table.remove(obj_char_game_scene_char_LP["VFX_HUD_table"], i) -- 寿命耗尽，从列表中移除
        end
    end
    for i = #obj_char_game_scene_char_LP["VFX_front_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["VFX_front_table"][i]
        object["update"](object)
        if object["life"] <= 1 then
            table.remove(obj_char_game_scene_char_LP["VFX_front_table"], i) -- 寿命耗尽，从列表中移除
        end
    end
    for i = #obj_char_game_scene_char_LP["VFX_back_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["VFX_back_table"][i]
        object["update"](object)
        if object["life"] <= 1 then
            table.remove(obj_char_game_scene_char_LP["VFX_back_table"], i) -- 寿命耗尽，从列表中移除
        end
    end
end

function draw_game_scene_char_LP_VFX_HUD()
    for i = #obj_char_game_scene_char_LP["VFX_HUD_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["VFX_HUD_table"][i]
        object["draw"](object)
    end
end

function draw_game_scene_char_LP_VFX_front()
    for i = #obj_char_game_scene_char_LP["VFX_front_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["VFX_front_table"][i]
        object["draw"](object)
    end
end

function draw_game_scene_char_LP_VFX_back()
    for i = #obj_char_game_scene_char_LP["VFX_back_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["VFX_back_table"][i]
        object["draw"](object)
    end
end

function update_game_scene_char_LP_black_overlay()
    for i = #obj_char_game_scene_char_LP["black_overlay_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["black_overlay_table"][i]
        object["life"] = object["life"] - 1 -- 减少寿命
        object["update"](object)
        if object["life"] <= 1 then
            table.remove(obj_char_game_scene_char_LP["black_overlay_table"], i) -- 寿命耗尽，从列表中移除
        end
    end
end

function draw_game_scene_char_LP_black_overlay()
    for i = #obj_char_game_scene_char_LP["black_overlay_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["black_overlay_table"][i]
        object["draw"](object)
    end
end




function update_game_scene_char_LP_hitstop_countdown()
    local obj_char = obj_char_game_scene_char_LP
    if obj_char["hit_hurt_blockstop_countdown"] > 1 then
        obj_char["hit_hurt_blockstop_countdown"] = obj_char["hit_hurt_blockstop_countdown"] - 1
    else
        obj_char["game_speed_abnormal_realtime_countdown"] = obj_char["hit_hurt_block_slowdown_countdown"]
        obj_char["hit_hurt_blockstop_countdown"] = 0 
        obj_char["hit_hurt_block_slowdown_countdown"] = 0
        obj_char["game_speed"] = 1
    end
end

function update_game_scene_char_LP_hurtstop_countdown()
    local obj_char = obj_char_game_scene_char_LP
    if obj_char["hit_hurt_blockstop_countdown"] > 1 then
        obj_char["hit_hurt_blockstop_countdown"] = obj_char["hit_hurt_blockstop_countdown"] - 1
        point_linear_animator(obj_char,obj_char["current_hurtstop_wiggle_x_animation"])
        point_linear_animator(obj_char,obj_char["current_hurtstop_wiggle_y_animation"])
    else
        obj_char["game_speed_abnormal_realtime_countdown"] = obj_char["hit_hurt_block_slowdown_countdown"]
        obj_char["hit_hurt_blockstop_countdown"] = 0 
        obj_char["hit_hurt_block_slowdown_countdown"] = 0
        obj_char["game_speed"] = 2
        obj_char["velocity"] = obj_char["velocity_cache"]
        obj_char["hurtstop_wiggle_x"] = 0
        obj_char["hurtstop_wiggle_y"] = 0
    end
end

function update_game_scene_char_LP_overdrive_countdown()
    local obj_char = obj_char_game_scene_char_LP
    if obj_char["state"] ~= "overdrive" and 
    obj_char["overdrive_timer"][1] + obj_char["overdrive_timer"][2] +
    obj_char["overdrive_timer"][3] + obj_char["overdrive_timer"][4] >= 1
    then
        if obj_char["overdrive_timer"][4] == 0 and obj_char["overdrive_timer"][3] ~= 0 then 
            obj_char["overdrive_timer"][3] = obj_char["overdrive_timer"][3] - 1
            obj_char["overdrive_timer"][4] = 9
        elseif obj_char["overdrive_timer"][4] > 0 then
            obj_char["overdrive_timer"][4] = obj_char["overdrive_timer"][4] - 1
        end
        if obj_char["overdrive_timer"][3] == 0 and obj_char["overdrive_timer"][2] ~= 0 then 
            obj_char["overdrive_timer"][2] = obj_char["overdrive_timer"][2] - 1
            obj_char["overdrive_timer"][3] = 5
        end
        if obj_char["overdrive_timer"][2] < 0 and obj_char["overdrive_timer"][1] ~= 0 then 
            obj_char["overdrive_timer"][1] = obj_char["overdrive_timer"][1] - 1
            obj_char["overdrive_timer"][2] = 9
        end
    elseif obj_char["state"] ~= "overdrive" and 
    obj_char["overdrive_timer"][1] + obj_char["overdrive_timer"][2] +
    obj_char["overdrive_timer"][3] + obj_char["overdrive_timer"][4] < 1
    then
        obj_char["overdrive"][3] = "off"
        obj_char["overdrive_timer"] = {0,0,0,0}
    end
end

function update_game_scene_char_LP_inv_state_countdown()
    local obj_char = obj_char_game_scene_char_LP
    if obj_char["strike_inv_countdown"] > 1 then
        obj_char["strike_inv_countdown"] = obj_char["strike_inv_countdown"] - 1
    else
        obj_char["strike_inv"] = false
        obj_char["strike_inv_countdown"] = 0
    end
    if obj_char["throw_inv_countdown"] > 1 then
        obj_char["throw_inv_countdown"] = obj_char["throw_inv_countdown"] - 1
    else
        obj_char["throw_inv"] = false
        obj_char["throw_inv_countdown"] = 0
    end
    if obj_char["projectile_inv_countdown"] > 1 then
        obj_char["projectile_inv_countdown"] = obj_char["projectile_inv_countdown"] - 1
    else
        obj_char["projectile_inv"] = false
        obj_char["projectile_inv_countdown"] = 0
    end
    if obj_char["burst_inv_countdown"] > 1 then
        obj_char["burst_inv_countdown"] = obj_char["burst_inv_countdown"] - 1
    else
        obj_char["burst_inv"] = false
        obj_char["burst_inv_countdown"] = 0
    end
end

function update_game_scene_char_LP_global_countdown()
    update_game_scene_char_LP_overdrive_countdown()
    update_game_scene_char_LP_inv_state_countdown()
end




function state_gate_game_scene_char_LP_from_stand_idle(input,obj_char)
    obj_char["input_sys_state"] = "load" -- none save load
    state_machine_char_game_scene_char_LP_input_sys_cache()
    if common_game_scene_get_input_direction(obj_char) == 7 
    or common_game_scene_get_input_direction(obj_char) == 8
    or common_game_scene_get_input_direction(obj_char) == 9 then
        -- to pre_jump

    elseif test_input_sys_press(input["Burst"]) and obj_char["overdrive"][1] == obj_char["overdrive"][2] then
        -- to over_drive
        obj_char["idle_cancel"] = false
        obj_char["current_animation"] = anim_char_LP_overdrive
        init_character_anim_with(obj_char,obj_char["current_animation"])
        common_game_scene_overdrive_load_camera_anim(obj_char)
        common_game_scene_nil_load_camera_enclose_anim(obj_char)
        obj_char["state"] = "overdrive"
    elseif test_input_sys_press(input["P"]) then
        -- to 5P
        obj_char["idle_cancel"] = false
        obj_char["current_animation"] = anim_char_LP_5P
        init_character_anim_with(obj_char,obj_char["current_animation"])
        obj_char["state"] = "5P"
    elseif common_game_scene_get_input_direction(obj_char) == 4
    or common_game_scene_get_input_direction(obj_char) == 6 then
        obj_char["idle_cancel"] = true
        common_game_scene_check_6_and_4_move(obj_char)
        init_character_anim_with(obj_char,obj_char["current_animation"])
        obj_char["state"] = "6_and_4_walk"
    end
end

function state_gate_game_scene_char_LP_from_6_and_4_walk(input,obj_char)
    obj_char["input_sys_state"] = "load" -- none save load
    state_machine_char_game_scene_char_LP_input_sys_cache()
    if common_game_scene_get_input_direction(obj_char) == 7 
    or common_game_scene_get_input_direction(obj_char) == 8
    or common_game_scene_get_input_direction(obj_char) == 9 then
        -- to pre_jump
        obj_char["idle_cancel"] = true
    elseif test_input_sys_press(input["Burst"]) and obj_char["overdrive"][1] == obj_char["overdrive"][2] then
        -- to over_drive
        obj_char["idle_cancel"] = false
        obj_char["current_animation"] = anim_char_LP_overdrive
        init_character_anim_with(obj_char,obj_char["current_animation"])
        obj_char["state"] = "overdrive"
    elseif test_input_sys_press(input["P"]) then
        -- to 5P
        obj_char["idle_cancel"] = false
        obj_char["current_animation"] = anim_char_LP_5P
        init_character_anim_with(obj_char,obj_char["current_animation"])
        obj_char["state"] = "5P"
    elseif common_game_scene_get_input_direction(obj_char) == 5 then
        -- to 6_walk_stop or 4_walk_stop
        obj_char["idle_cancel"] = true
        obj_char["current_animation"] = anim_char_LP_5_walk_stop
        init_character_anim_with(obj_char,obj_char["current_animation"])
        obj_char["velocity"] = {0,0}
        obj_char["state"] = "walk_stop"
    end
end