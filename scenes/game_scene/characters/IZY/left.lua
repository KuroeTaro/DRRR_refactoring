-- LP -> RP
-- ASSET_DATA[2] -> ASSET_DATA[3]
-- ["L"] -> ["R"]
-- ["facing"] = "Right" -> ["facing"] = "Left"
-- obj_char_game_scene_char_RP = {0, 0, 0, 1, 1, 1, 0, 0} -> obj_char_game_scene_char_RP = {0, 0, 0, 1, -1, 1, 0, 0}
-- obj_char_game_scene_char_RP["x"] = -320 -> obj_char_game_scene_char_RP["x"] = 320

function load_game_scene_obj_char_LP()
    -- x y z opacity sx sy r f
    obj_char_game_scene_char_LP = {0, 0, 0, 1, 1, 1, 0, 0} -- obj[1-8]都为图形上的数据 obj[8]为图形上的帧数
    obj_char_game_scene_char_LP["x"] = -320
    obj_char_game_scene_char_LP["y"] = 365
    obj_char_game_scene_char_LP["f"] = 0 -- obj["f"] 逻辑上的帧数
    obj_char_game_scene_char_LP["anchor_pos"] = {150,550}
    obj_char_game_scene_char_LP["velocity"] = {0,0}
    obj_char_game_scene_char_LP["state"] = "before_ease_in"
    obj_char_game_scene_char_LP["hurt_block_stun_animation"] = nil
    obj_char_game_scene_char_LP["facing"] = "Right"
    obj_char_game_scene_char_LP["cancel_command_cache"] = nil
    obj_char_game_scene_char_LP["move_state"] = "idle" -- idle start_up active recovery

    -- 越大意味着同一帧数会被分为多少份 game_speed = 10 则 速度为1/10
    -- 如果为 game_speed == 0 则暂停
    -- 当前game_speed中 记录已经运行了多少 game_speed_subframe
    -- 当game_speed_subframe == game_speed 运行一次update
    obj_char_game_scene_char_LP["game_speed"] = 1
    obj_char_game_scene_char_LP["game_speed_subframe"] = 0
    obj_char_game_scene_char_LP["game_speed_abnormal_realtime_countdown"] = 0

    obj_char_game_scene_char_LP["gravity_correction"] = 1
    obj_char_game_scene_char_LP["damage_correction"] = 1

    obj_char_game_scene_char_LP["collision_box"] = {}
    obj_char_game_scene_char_LP["hitbox_table"] = {} --{ function值 内部为命中后的逻辑, 具体的box形状}
    obj_char_game_scene_char_LP["hurtbox_table"] = {}
    obj_char_game_scene_char_LP["hit_state"] = false -- 防止在同一动作的active多次触发
    obj_char_game_scene_char_LP["projectile_table"] = {}
    obj_char_game_scene_char_LP["VFX_table"] = {}
    obj_char_game_scene_char_LP["black_overlay_table"] = {}
    obj_char_game_scene_char_LP["shadow_box_table"] = {
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
            -36.88, -4.50}
            ,
            {-36.88, -4.50,
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
            37.25, 11.63}
            ,
            {37.25, 11.63,
            36.88, 5.00}
            ,
            {36.88, 5.00,
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
    obj_char_game_scene_char_LP["shadow_box_pos"] ={
        {94.0,547.0}
        ,{196.0,527.0}
    }

    obj_char_game_scene_char_LP["knife_state"] = "off"
    obj_char_game_scene_char_LP["knife_anchor_pos"] = {168,210}
    obj_char_game_scene_char_LP["knife_animation"] = nil
    obj_char_game_scene_char_LP["knife_8"] = 0 -- obj[knife_8]匕首图形上的帧数
    obj_char_game_scene_char_LP["knife_f"] = 0 -- obj[knife_8]匕首逻辑上的帧数

    obj_char_game_scene_char_LP["health"] = {11500, 11500, 11500, "fade_off"}
    obj_char_game_scene_char_LP["heat"] = {0.0, 200.0} -- 0.0 - 200.0
    obj_char_game_scene_char_LP["ability"] = {600.0, 600.0} -- 0.0 - 600.0
    obj_char_game_scene_char_LP["overdrive"] = {600.0, 600.0, "off"} -- 0.0 - 600.0
    obj_char_game_scene_char_LP["overdrive_timer"] = {0,0,0,0} -- 0f 00:00 
    obj_char_game_scene_char_LP["overdrive_drain_speed"] = 24
    obj_char_game_scene_char_LP["risk"] = {0.0, 300.0}-- 0.0 - 300.0
    obj_char_game_scene_char_LP["positive_bouns"] = {0.0, 600.0} -- 0.0 - 600.0

    
end

function order_load_game_scene_char_LP_frames(load_order)
    local PLAYER_ASSET_DATA = ASSET_DATA[2]
    local switch = 
    {
        [1] = function()
            image_sprite_sheet_table_char_game_scene_LP = {}

            image_sprite_sheet_table_char_game_scene_LP["before_ease_in"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/character/IZY_stand_idle.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["stand_idle_sprite_batch"])
            )

            image_sprite_sheet_table_char_game_scene_LP["stand_idle"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/character/IZY_stand_idle.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["stand_idle_sprite_batch"])
            )

            image_sprite_sheet_table_char_game_scene_LP["overdrive"] = 
            sprite_sheet_load(
                "asset/game_scene/characters/IZY/character/IZY_overdrive.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["overdrive_sprite_batch"])
            )

            image_sprite_sheet_VFX_game_scene_LP_overdrive_badge = 
            sprite_sheet_load(
                "asset/game_scene/VFX/overdrive_badge/IZY_overdrive_badge.json",
                love.graphics.newImage(PLAYER_ASSET_DATA["overdrive_badge_sprite_batch"])
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
    -- 站姿待机动画
        local char_obj = obj_char_game_scene_char_LP
        anim_char_LP_stand_idle = {}
        anim_char_LP_stand_idle[0] = function() 
            char_obj[8] = 0
            char_obj["anchor_pos"] = {150,550}
            char_obj["knife_anchor_pos"] = {168,210}
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
                    -36.88, -4.50}
                    ,
                    {-36.88, -4.50,
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
                    37.25, 11.63}
                    ,
                    {37.25, 11.63,
                    36.88, 5.00}
                    ,
                    {36.88, 5.00,
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
                {94.0,547.0}
                ,{196.0,527.0}
            }
        
        end
        for i = 1,16 do
            anim_char_LP_stand_idle[i*7] = function()
                obj_char_game_scene_char_LP[8] = i
            end
        end
        anim_char_LP_stand_idle[17*7] = function()
            char_obj["f"] = 0
            char_obj[8] = 0
        end
        anim_char_LP_stand_idle["damage"] = 0
        anim_char_LP_stand_idle["guard"] =  nil -- high low all throw air_throw
        anim_char_LP_stand_idle["guard_crush"] = false

    -- overdrive启动动画
        anim_char_LP_overdrive = {}
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

        for i = 0,70 do
            anim_char_LP_overdrive[i] = function()
                drain_overdrive()
            end
        end
        anim_char_LP_overdrive[0] = function()
            char_obj[8] = 0
            char_obj["anchor_pos"] = {175,550}
            char_obj["knife_state"] = "off"
            drain_overdrive()
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
                {117.5,549.5}
                ,{234.6,535.3}
            }
            insert_VFX_game_scene_char_LP_overdrive_badge()
            -- insert_VFX_game_scene_char_LP_overdrive_partical()
            insert_VFX_game_scene_char_LP_overdrive_black_overlay()
            
        end
        anim_char_LP_overdrive[3] = function() 
            char_obj[8] = 1
            drain_overdrive()
            char_obj["shadow_box_table"][2] = 
            {
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
                {103.5,549.5}
                ,{245.4,538.8}
            }
        end
        anim_char_LP_overdrive[6] = function() 
            char_obj[8] = 2
            drain_overdrive()
            char_obj["shadow_box_pos"] ={
                {93.5,549.1}
                ,{252.8,538.4}
            }
        end
        anim_char_LP_overdrive[9] = function() 
            char_obj[8] = 3
            drain_overdrive()
            char_obj["shadow_box_table"][2] = 
            {
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
                {91.8,549.5}
                ,{255.8,539.4}
            }
        end
        anim_char_LP_overdrive[14] = function() 
            char_obj[8] = 4
            drain_overdrive()
        end
        anim_char_LP_overdrive[19] = function() 
            char_obj[8] = 5
            drain_overdrive()
        end
        anim_char_LP_overdrive[28] = function() 
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
                {73.25,543.375}
                ,{268.5,543.25}
            }
        end
        anim_char_LP_overdrive[30] = function() 
            insert_VFX_game_scene_char_LP_overdrive_airflow()
        end
        anim_char_LP_overdrive[32] = function() 
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
                {72.375,545.875}
                ,{277.625,545.125}
            }
        end
        anim_char_LP_overdrive[35] = function() 
            char_obj[8] = 7
        end
        anim_char_LP_overdrive[38] = function() 
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
            char_obj[8] = 9
        end
        anim_char_LP_overdrive[41] = function() 
            char_obj[8] = 7
        end
        anim_char_LP_overdrive[44] = function() 
            char_obj[8] = 8
        end
        anim_char_LP_overdrive[47] = function() 
            char_obj[8] = 9
        end
        anim_char_LP_overdrive[50] = function() 
            char_obj[8] = 7
        end
        anim_char_LP_overdrive[53] = function() 
            char_obj[8] = 8
        end
        anim_char_LP_overdrive[56] = function() 
            char_obj[8] = 9
        end
        anim_char_LP_overdrive[58] = function() 
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
                {78.875,538.375}
                ,{272.375,543.375}
            }
        end
        anim_char_LP_overdrive[60] = function() 
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
                {105.25,537.125}
                ,{258.125,545.875}
            }
        end
        anim_char_LP_overdrive[63] = function() 
            char_obj[8] = 12
            char_obj["shadow_box_table"] = {
                {
                    {-6.25, -26.50,
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
                    -6.25, -26.50}                 
                },
                {
                    {-42.25, -10.13,
                    -58.11, 3.57}
                    ,
                    {-58.11, 3.57,
                    -56.57, 7.69}
                    ,
                    {-56.57, 7.69,
                    -52.46, 10.01}
                    ,
                    {-52.46, 10.01,
                    -36.41, 10.76}
                    ,
                    {-36.41, 10.76,
                    -29.11, 16.58}
                    ,
                    {-29.11, 16.58,
                    -14.50, 20.25}
                    ,
                    {-14.50, 20.25,
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
                    8.29, -3.01}
                    ,
                    {8.29, -3.01,
                    -8.94, -4.56}
                    ,
                    {-8.94, -4.56,
                    -14.35, -7.13}
                    ,
                    {-14.35, -7.13,
                    -42.25, -10.13}
                }
            }
            char_obj["shadow_box_pos"] ={
                {114.25,542.75}
                ,{245.125,529}
            }
        end
        anim_char_LP_overdrive[67] = function() 
            char_obj[8] = 13
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
                    -36.88, -4.50}
                    ,
                    {-36.88, -4.50,
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
                    37.25, 11.63}
                    ,
                    {37.25, 11.63,
                    36.88, 5.00}
                    ,
                    {36.88, 5.00,
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
                {119.0,547.0}
                ,{221.0,527.0}
            }
        end
        anim_char_LP_overdrive[72] = function() 
            char_obj[8] = 14
        end
        anim_char_LP_overdrive[80] = function() 
        end

end

function load_game_scene_shader_char_LP()

end





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
    -- INPUT_SYS_COMMAND_TABLE = {
    --     "Up","Down","Left","Right",
    --     "P","S","HS","K",
    --     "SP","Launcher","Back","Start",
    --     "RC","Dash","Burst","UA"
    -- }

    local input = INPUT_SYS_CURRENT_COMMAND_STATE["L"]
    local obj_char = obj_char_game_scene_char_LP
    local switch = {
        ["before_ease_in"] = function()
            character_animator(obj_char,anim_char_LP_stand_idle)
        end,
        ["stand_idle"] = function()
            character_animator(obj_char,anim_char_LP_stand_idle)
            if input["Up"] == "Pressing" then
                -- to pre_jump
                
            elseif input["Burst"] == "Pressing" and obj_char["overdrive"][1] == obj_char["overdrive"][2] then
                -- to over_drive
                init_character_anim_with(obj_char,anim_char_LP_overdrive)
                obj_char["state"] = "overdrive"
                obj_char["overdrive"][3] = "on"

            end
        end,
        ["overdrive"] = function()
            character_animator(obj_char,anim_char_LP_overdrive)
            if input["RC"] == "Pressing" and obj_char["f"] < 29 then
                -- to overdrive RC
                
            elseif obj_char["f"] >= 80 then
                -- to idle
                init_character_anim_with(obj_char,anim_char_LP_stand_idle)
                obj_char[8] = 0
                obj_char["state"] = "stand_idle"
            end
        end,
    }
    update_game_scene_char_LP_overdrive()
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





function draw_game_scene_char_LP_logic_graphic_pos_sync()
    local obj = obj_char_game_scene_char_LP
    obj[1] = obj["x"]-obj[5]*obj["anchor_pos"][1]
    obj[2] = obj["y"]-obj[6]*obj["anchor_pos"][2]
end

function draw_game_scene_char_LP()
    local obj = obj_char_game_scene_char_LP
    local camera = obj_stage_game_scene_camera
    local image_sprite_sheet = image_sprite_sheet_table_char_game_scene_LP[obj["state"]]

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
    love.graphics.draw(image_sprite_sheet["sprite_batch"])

end

function draw_game_scene_char_LP_shadow()
    local obj = obj_char_game_scene_char_LP
    local shadow_box_table = obj["shadow_box_table"]
    local opacity = (obj["y"]-325)/80
    local z = obj[3]
    local sx = obj[5]
    local sy = obj[6]
    local shadow_anchor = obj_stage_game_scene_shadow_anchor
    local camera = obj_stage_game_scene_camera
    local camera_z = camera[3]

    local shadow_cavans = love.graphics.newCanvas(
        love.graphics.getWidth(),
        love.graphics.getHeight()
    )

    local obj_2d_pos = draw_3d_point_to_2D(camera,obj)
    local shadow_anchor_2d_pos = draw_3d_point_to_2D(camera,shadow_anchor)
    local scale = draw_resolution_correction(800)/(z-camera_z)

    love.graphics.setCanvas(shadow_cavans)
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
    love.graphics.setCanvas()

    love.graphics.setColor(0, 0, 0, opacity)
    love.graphics.draw(shadow_cavans)
    love.graphics.setColor(1, 1, 1, 1)
    
end





function insert_projectile_game_scene_char_LP(projectile_obj)

end






function insert_VFX_game_scene_char_LP_overdrive_badge()
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    local char_obj = obj_char_game_scene_char_LP
    obj["life"] = 70
    obj[1] = char_obj["x"] - char_obj[5]*(500)
    obj[2] = char_obj["y"] - char_obj[6]*(865)
    obj[3] = char_obj[3]
    obj[4] = 1
    obj[5] = char_obj[5]*2
    obj[6] = char_obj[6]*2
    obj[7] = char_obj[7]
    obj[8] = -1
    obj["update"] = function(self)
        self[1] = char_obj["x"] - char_obj[5]*(500)
        self[2] = char_obj["y"] - char_obj[6]*(865)
        self[3] = char_obj[3]
        self[4] = 1
        self[5] = char_obj[5]*2
        self[6] = char_obj[6]*2
        self[7] = char_obj[7]
        self[8] = self[8] + 1
    end
    obj["draw"] = function(self)
        local camera = obj_stage_game_scene_camera
        local image_sprite_sheet = image_sprite_sheet_VFX_game_scene_LP_overdrive_badge
        local f = self[8]

        love.graphics.setBlendMode("add")
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(camera,self,image_sprite_sheet,""..f.."")
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setBlendMode("alpha")
    end
    table.insert(char_obj["VFX_table"],obj)
end

function insert_VFX_game_scene_char_LP_overdrive_airflow()
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    local char_obj = obj_char_game_scene_char_LP
    obj["life"] = 35
    obj[1] = char_obj["x"] - char_obj[5]*(860)
    obj[2] = char_obj["y"] - char_obj[6]*(845)
    obj[3] = char_obj[3]
    obj[4] = 1
    obj[5] = char_obj[5]*2
    obj[6] = char_obj[6]*2
    obj[7] = char_obj[7]
    obj[8] = -1
    obj["update"] = function(self)
        -- self[1] = char_obj["x"] + char_obj[5]*(-860)/2
        -- self[2] = char_obj["y"] + char_obj[6]*(840)
        self[1] = char_obj["x"] - char_obj[5]*(860)
        self[2] = char_obj["y"] - char_obj[6]*(845)
        self[3] = char_obj[3]
        self[4] = 1
        self[5] = char_obj[5]*2
        self[6] = char_obj[6]*2
        self[7] = char_obj[7]
        self[8] = self[8] + 1
    end
    obj["draw"] = function(self)
        local camera_obj = obj_stage_game_scene_camera
        local image_sprite_sheet = image_sprite_sheet_VFX_game_scene_overdrive_airflow
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
    
        love.graphics.setBlendMode("add")
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setBlendMode("alpha")
    end
    table.insert(char_obj["VFX_table"],obj)
    
end

function insert_VFX_game_scene_char_LP_overdrive_partical()
    local obj = {}
    obj = {0, 0, nil, 0, 1, 1, 0, 0}
    obj["FCT"] = {0,0,0,0,0,0,0,0}
    obj["LCT"] = {0,0,0,0,0,0,0,0}
    obj["LCD"] = {0,0,0,0,0,0,0,0}
    obj["LCT"]["partical_speed"] = 0
    obj["LCD"]["partical_speed"] = 0
    obj["state"] = "default"
    obj["life"] = 70
    obj["partical_speed"] = 0.016*0
    obj["partical_time"] = 0
    obj[8] = -1

    obj["opacity_anim"] = {}
    obj["opacity_anim"][0] = {0.00, 1}
    obj["opacity_anim"][1] = {0.16, 2}
    obj["opacity_anim"][2] = {0.31, 4}
    obj["opacity_anim"][4] = {0.50, 6}
    obj["opacity_anim"][6] = {0.63, 10}
    obj["opacity_anim"][10] = {0.79, 15}
    obj["opacity_anim"][15] = {0.91, 20}
    obj["opacity_anim"][20] = {0.97, 25}
    obj["opacity_anim"][25] = {1.00, 28}
    obj["opacity_anim"][28] = {1.00, 30}
    obj["opacity_anim"][30] = {1.00, 40}
    obj["opacity_anim"][40] = {0.97, 50}
    obj["opacity_anim"][50] = {0.88, 60}
    obj["opacity_anim"][60] = {0.67, 63}
    obj["opacity_anim"][63] = {0.57, 65}
    obj["opacity_anim"][65] = {0.48, 67}
    obj["opacity_anim"][67] = {0.36, 69}
    obj["opacity_anim"][69] = {0.17, 70}
    obj["opacity_anim"][70] = {0.00, 70}    
    obj["opacity_anim"]["prop"] = 4
    obj["opacity_anim"]["length"] = 70
    obj["opacity_anim"]["loop"] = false
    obj["opacity_anim"]["fix_type"] = true

    obj["partical_speed_anim"] = {}
    obj["partical_speed_anim"][0] = {0.00, 28}
    obj["partical_speed_anim"][28] = {0.016*12, 29}
    obj["partical_speed_anim"][29] = {0.00, 30}
    obj["partical_speed_anim"][30] = {0.00, 70}
    obj["partical_speed_anim"][70] = {0.016*4, 70}
    obj["partical_speed_anim"]["prop"] = "partical_speed"
    obj["partical_speed_anim"]["length"] = 70
    obj["partical_speed_anim"]["loop"] = false
    obj["partical_speed_anim"]["fix_type"] = true

    obj["partical_shader"] = love.graphics.newShader("shaders/partical_shader.glsl")
    obj["blur_shader"] = love.graphics.newShader("shaders/gaussian_blur.glsl")
    obj["blur_shader"]:send("Directions", 8)
    obj["blur_shader"]:send("Quality", 2)
    obj["blur_shader"]:send("Size", 2)
    obj["blur_shader"]:send("resolution", {love.graphics.getWidth(), love.graphics.getHeight()})

    obj["update"] = function(self)
        point_linear_animator(self,self["opacity_anim"])
        point_linear_animator(self,self["partical_speed_anim"])
        self["partical_time"] = self["partical_time"] + self["partical_speed"]
    end
    obj["draw"] = function(self)
        local partical_shader = self["partical_shader"]
        local canvas = love.graphics.newCanvas(love.graphics.getWidth(), love.graphics.getHeight())
        partical_shader:send("time", self["partical_time"])
        partical_shader:send("opacity", self[4])
        love.graphics.setCanvas(canvas)
        love.graphics.clear(0, 0, 0, 0) -- 透明背景
        love.graphics.setShader(partical_shader)
        love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
        love.graphics.setShader()
        love.graphics.setCanvas()

        love.graphics.setShader(self["blur_shader"])
        love.graphics.setBlendMode("add")
        love.graphics.draw(canvas) -- 画到屏幕上
        love.graphics.setBlendMode("alpha")
        love.graphics.setShader()

        
    end
    table.insert(obj_char_game_scene_char_LP["VFX_table"],obj)
end

function insert_VFX_game_scene_char_LP_overdrive_black_overlay()
    local obj = {0, 0, 0, 1, 0, 0, 0, 0}
    local char_obj = obj_char_game_scene_char_LP
    local camera_obj = obj_stage_game_scene_camera
    obj["FCT"] = {0,0,0,0,0,0,0,0}
    obj["LCT"] = {0,0,0,0,0,0,0,0}
    obj["LCD"] = {0,0,0,0,0,0,0,0}
    obj["life"] = 42
    obj[1] = char_obj["x"]
    obj[2] = char_obj["y"] - char_obj[6]*(360)
    obj[3] = char_obj[3]
    obj[4] = 1
    obj[5] = 0
    obj[6] = 0
    obj[7] = 0
    obj[8] = 0
    obj["cood_res"] = {}
    obj["state"] = "ease_in"
    obj["blur_shader"] = love.graphics.newShader("shaders/gaussian_blur.glsl")
    obj["blur_shader"]:send("Directions", 16)
    obj["blur_shader"]:send("Quality", 5)
    obj["blur_shader"]:send("Size", 8)
    obj["blur_shader"]:send("resolution", {love.graphics.getWidth(), love.graphics.getHeight()})

    
    obj["opacity_ease_in_anim"] = {}
    obj["opacity_ease_in_anim"][0] = {0.00, 1}
    obj["opacity_ease_in_anim"][1] = {0.04, 3}
    obj["opacity_ease_in_anim"][3] = {0.09, 7}
    obj["opacity_ease_in_anim"][7] = {0.14, 14}
    obj["opacity_ease_in_anim"][14] = {0.18, 18}
    obj["opacity_ease_in_anim"][18] = {0.19, 28}
    obj["opacity_ease_in_anim"][28] = {0.20, 29}
    obj["opacity_ease_in_anim"][29] = {0.37, 30}
    obj["opacity_ease_in_anim"][30] = {0.44, 31}
    obj["opacity_ease_in_anim"][31] = {0.48, 33}
    obj["opacity_ease_in_anim"][33] = {0.50, 33}
    obj["opacity_ease_in_anim"]["prop"] = 4
    obj["opacity_ease_in_anim"]["length"] = 33
    obj["opacity_ease_in_anim"]["loop"] = false
    obj["opacity_ease_in_anim"]["fix_type"] = true

    obj["opacity_ease_out_anim"] = {}
    obj["opacity_ease_out_anim"][0] = {0.50, 10}
    obj["opacity_ease_out_anim"][10] = {0.00, 10}
    obj["opacity_ease_out_anim"]["prop"] = 4
    obj["opacity_ease_out_anim"]["length"] = 10
    obj["opacity_ease_out_anim"]["loop"] = false
    obj["opacity_ease_out_anim"]["fix_type"] = true

    obj["size_anim"] = {}
    obj["size_anim"][0] = {200, 28}
    obj["size_anim"][28] = {800, 33}
    obj["size_anim"][33] = {1300, 33} 
    obj["size_anim"]["prop"] = 5
    obj["size_anim"]["length"] = 33
    obj["size_anim"]["loop"] = false
    obj["size_anim"]["fix_type"] = true

    obj["update"] = function(self)
        self[1] = char_obj["x"]
        self[2] = char_obj["y"] - char_obj[6]*(300)
        self[3] = char_obj[3]
        self["cood_res"] = draw_3d_point_to_2D(camera_obj,self)

        local switch = {
            -- ease_in 之前的状态 如果达到第10帧则为下一个动画的第0帧 
            ["ease_in"] = function()
                point_linear_animator(self,self["size_anim"])
                point_linear_animator(self,self["opacity_ease_in_anim"])
                self["life"] = 42
                if char_obj["overdrive_timer"][1] + char_obj["overdrive_timer"][2] 
                + char_obj["overdrive_timer"][3] + char_obj["overdrive_timer"][4] == 0 
                and char_obj["state"] ~= "overdrive" then
                    self["state"] = "ease_out"
                    self["life"] = 10
                    self[4] = 0.50
                    init_point_linear_anim_with(self,self["opacity_ease_out_anim"])
                end
            end,
            ["ease_out"] = function()
                point_linear_animator(self,self["opacity_ease_out_anim"])
                if get_point_linear_anim_end_state(self,self["opacity_ease_out_anim"]) then
                    self["life"] = 0
                end
            end,
        }
        local this_function = switch[self["state"]]
        if this_function then this_function() end

    end
    obj["draw"] = function(self)
        local canvas = love.graphics.newCanvas(love.graphics.getWidth(), love.graphics.getHeight())
        love.graphics.setCanvas(canvas)
        love.graphics.setColor(0, 0, 0, self[4])
        love.graphics.circle( "fill", self["cood_res"][1], self["cood_res"][2], draw_resolution_correction(self[5]) )
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.setCanvas()

        love.graphics.setShader(self["blur_shader"])
        love.graphics.draw(canvas) -- 画到屏幕上
        love.graphics.setShader()

    end
    table.insert(char_obj["black_overlay_table"],obj)

end





function update_game_scene_char_LP_VFX()
    for i = #obj_char_game_scene_char_LP["VFX_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["VFX_table"][i]
        object["life"] = object["life"] - 1 -- 减少寿命
        object["update"](object)
        if object["life"] <= 0 then
            table.remove(obj_char_game_scene_char_LP["VFX_table"], i) -- 寿命耗尽，从列表中移除
        end
    end
end

function draw_game_scene_char_LP_VFX()
    for i = #obj_char_game_scene_char_LP["VFX_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["VFX_table"][i]
        object["draw"](object)
    end
end

function update_game_scene_char_LP_black_overlay()
    for i = #obj_char_game_scene_char_LP["black_overlay_table"], 1, -1 do -- 反向遍历，便于删除元素
        local object = obj_char_game_scene_char_LP["black_overlay_table"][i]
        object["life"] = object["life"] - 1 -- 减少寿命
        object["update"](object)
        if object["life"] <= 0 then
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





function update_game_scene_char_LP_overdrive()
    local char_obj = obj_char_game_scene_char_LP
    if char_obj["state"] ~= "overdrive" and 
    char_obj["overdrive_timer"][1] + char_obj["overdrive_timer"][2] +
    char_obj["overdrive_timer"][3] + char_obj["overdrive_timer"][4] ~= 0
    then
        if char_obj["overdrive_timer"][4] == 0 and char_obj["overdrive_timer"][3] ~= 0 then 
            char_obj["overdrive_timer"][3] = char_obj["overdrive_timer"][3] - 1
            char_obj["overdrive_timer"][4] = 9
        elseif char_obj["overdrive_timer"][4] > 0 then
            char_obj["overdrive_timer"][4] = char_obj["overdrive_timer"][4] - 1
        end
        if char_obj["overdrive_timer"][3] == 0 and char_obj["overdrive_timer"][2] ~= 0 then 
            char_obj["overdrive_timer"][2] = char_obj["overdrive_timer"][2] - 1
            char_obj["overdrive_timer"][3] = 5
        end
        if char_obj["overdrive_timer"][2] < 0 and char_obj["overdrive_timer"][1] ~= 0 then 
            char_obj["overdrive_timer"][1] = char_obj["overdrive_timer"][1] - 1
            char_obj["overdrive_timer"][2] = 9
        end
    elseif char_obj["state"] ~= "overdrive" then
        char_obj["overdrive"][3] = "off"
    end
end