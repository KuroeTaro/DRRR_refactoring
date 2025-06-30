-- thread_table 线程table正常放
-- thread_amount 从1开始数有多少就是多少
-- thread_once_table thread_amount量的false
-- ASSET_DATA = {}
-- load_functions_table 每个thread对应一个 load function
-- CURRENT_ORDER_TABLE 全是 1
-- order_size_table 对应 每个具体的 load_function的 order最大值
function load_game_scene_prep()
    local char_id_to_name = {
        "ERIKAWK3",
        "KTC",
        "ANRI",
        "IZY",
        "SZO",
        "CKG",
        "SHINRA",
        "SRT"
    }
    local LP_name = char_id_to_name[CHAR_SELECT_LR["L"]]
    local RP_name = char_id_to_name[CHAR_SELECT_LR["R"]]
    local stage_name = "alpha"
    local thread_LP_name = LP_name .. "_left"
    local thread_RP_name = RP_name .. "_right"
    local thread_stage_name = stage_name
    load_game_scene_require(LP_name,RP_name,stage_name)
    THREAD_TABLE = load_game_scene_thread_table(thread_LP_name,thread_RP_name,thread_stage_name)
    THREAD_AMOUNT = 8   -- 线程数目
    THREAD_ONCE_TABLE = {false,false,false,false,false,false,false,false} -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    ASSET_DATA = {}   -- 保持为nil
    ORDER_LOAD_TABLE = {
        order_load_game_scene_common,
        order_load_game_scene_char_LP_frames,
        order_load_game_scene_char_RP_frames,
        order_load_game_scene_stage,
        order_load_game_scene_act,
        order_load_game_scene_HUD,
        order_load_game_scene_lets_dance,
        order_load_game_scene_VFX,
    }    -- load function table
    CURRENT_ORDER_TABLE = {1,1,1,1,1,1,1,1}  -- 如果有两个线程 = {1，1} 三个 = {1，1，1} 以此类推
    ORDER_SIZE_TABLE = {1,1,1,1,1,1,1,1}  -- 每个load function的最大值
    LOAD_ONCE_TABLE = {false,false,false,false,false,false,false,false}   -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    LOADING_FUNCTION_AMOUNT = 8 -- 和线程数相同

    -- GAME_MODE = 0
    -- TRAINING_MODE_CONFIG["announcer"] = true
    -- 训练模式
    if GAME_MODE == 0 then
        NEXT_UPDATE_BLOCK = update_game_scene_main_training
        NEXT_DRAW_BLOCK = draw_game_scene_main
        NEXT_PRESET = preset_game_scene_training
    -- 本地多人模式
    elseif GAME_MODE == 1 then
        NEXT_UPDATE_BLOCK = update_game_scene_main_local_match
        NEXT_DRAW_BLOCK = draw_game_scene_main
        NEXT_PRESET = preset_game_scene_match
    -- 线上多人模式
    elseif GAME_MODE == 2 then
        NEXT_UPDATE_BLOCK = update_game_scene_main_online_match
        NEXT_DRAW_BLOCK = draw_game_scene_synchronizing
        NEXT_PRESET = preset_game_scene_match
    end


end







function order_load_game_scene_common(load_order)
    local switch = 
    {
        [1] = function()
            load_game_scene_common_obj()
            load_game_scene_hurtbox_shadowbox_data()
            load_game_scene_common_anim()
            load_game_scene_common_audio()
            load_game_scene_common_shader()
        end,
                -- [2] = function()
        --     image_table_announcer_game_scene_act_common = {}
        --     for i = 0,50 do
        --         image_table_announcer_game_scene_act_common[i] = love.graphics.newImage(ASSET_DATA[4]["act_common"][i+1])
        --     end
            
        --     for i = 90,104 do
        --         image_table_announcer_game_scene_act_common[i] = love.graphics.newImage(ASSET_DATA[4]["act_common"][i+1])
        --     end
            

        --     image_table_announcer_game_scene_act_number = {}
        --     image_table_announcer_game_scene_act_number[1] = {}
        --     image_table_announcer_game_scene_act_number[2] = {}
        --     image_table_announcer_game_scene_act_number[3] = {}
        --     for i = 0,74 do
        --         image_table_announcer_game_scene_act_number[1][i] = love.graphics.newImage(ASSET_DATA[4]["act_1"][i+1])
        --     end
        --     for i = 0,74 do
        --         image_table_announcer_game_scene_act_number[2][i] = love.graphics.newImage(ASSET_DATA[4]["act_2"][i+1])
        --     end
        --     for i = 0,74 do
        --         image_table_announcer_game_scene_act_number[3][i] = love.graphics.newImage(ASSET_DATA[4]["act_3"][i+1])
        --     end

        --     image_table_announcer_game_scene_HUD_ease_in = {}
        --     for i = 0,49 do
        --         image_table_announcer_game_scene_HUD_ease_in[i] = love.graphics.newImage(ASSET_DATA[4]["HUD_ease_in"][i+1])
        --     end

        --     image_table_announcer_game_scene_lets_dance = {}
        --     for i = 0,39 do
        --         image_table_announcer_game_scene_lets_dance[i] = love.graphics.newImage(ASSET_DATA[4]["lets_dance"][i+1])
        --     end

        --     image_HUD_game_scene_background_gauge = love.graphics.newImage(ASSET_DATA[4]["HUD_background_gauge"])
            
        --     image_sprite_sheet_HUD_game_scene_common = 
        --         sprite_sheet_load(
        --             "asset/game_scene/common/HUD/HUD_common.json",
        --             love.graphics.newImage(ASSET_DATA[4]["HUD_common_sprite_batch"])
        --         )

        -- end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end
    
end

function order_load_game_scene_act(load_order)
    local switch = 
    {
        [1] = function()
            image_sprite_sheet_announcer_game_scene_act_common = 
            sprite_sheet_load(
                "asset/game_scene/common/act_common.json",
                love.graphics.newImage(ASSET_DATA[5]["act_common_sprite_batch"])
            )

            image_sprite_sheet_table_announcer_game_scene_act_number = {}
            image_sprite_sheet_table_announcer_game_scene_act_number[1] = 
            sprite_sheet_load(
                "asset/game_scene/common/act_1.json",
                love.graphics.newImage(ASSET_DATA[5]["act_1_sprite_batch"])
            )
            image_sprite_sheet_table_announcer_game_scene_act_number[2] = 
            sprite_sheet_load(
                "asset/game_scene/common/act_2.json",
                love.graphics.newImage(ASSET_DATA[5]["act_2_sprite_batch"])
            )
            image_sprite_sheet_table_announcer_game_scene_act_number[3] = 
            sprite_sheet_load(
                "asset/game_scene/common/act_3.json",
                love.graphics.newImage(ASSET_DATA[5]["act_3_sprite_batch"])
            )

        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end
end

function order_load_game_scene_HUD(load_order)
    local switch = 
    {
        [1] = function()
            image_HUD_game_scene_background_gauge = love.graphics.newImage(ASSET_DATA[6]["HUD_background_gauge"])
            
            image_sprite_sheet_HUD_game_scene_common = 
            sprite_sheet_load(
                "asset/game_scene/common/HUD/HUD_common.json",
                love.graphics.newImage(ASSET_DATA[6]["HUD_common_sprite_batch"])
            )

            image_sprite_sheet_announcer_game_scene_HUD_ease_in = 
            sprite_sheet_load(
                "asset/game_scene/common/HUD/HUD_ease_in.json",
                love.graphics.newImage(ASSET_DATA[6]["HUD_ease_in_sprite_batch"])
            )

        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end
end

function order_load_game_scene_lets_dance(load_order)
    local switch = 
    {
        [1] = function()
            image_sprite_sheet_announcer_game_scene_lets_dance = 
            sprite_sheet_load(
                "asset/game_scene/common/lets_dance.json",
                love.graphics.newImage(ASSET_DATA[7]["lets_dance_sprite_batch"])
            )

        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end
end

function order_load_game_scene_VFX(load_order)
    local switch = 
    {
        [1] = function()
            image_sprite_sheet_VFX_game_scene_overdrive_airflow = 
            sprite_sheet_load(
                "asset/game_scene/VFX/overdrive_airflow.json",
                love.graphics.newImage(ASSET_DATA[8]["overdrive_airflow_sprite_batch"])
            )
            image_sprite_sheet_VFX_game_scene_overdrive_partical = 
            sprite_sheet_load(
                "asset/game_scene/VFX/overdrive_partical.json",
                love.graphics.newImage(ASSET_DATA[8]["overdrive_partical_sprite_batch"])
            )


            image_sprite_sheet_VFX_game_scene_ver0_blast = 
            sprite_sheet_load(
                "asset/game_scene/VFX/hit_VFX/ver0_blast.json",
                love.graphics.newImage(ASSET_DATA[8]["ver0_blast_sprite_batch"])
            )
            image_sprite_sheet_VFX_game_scene_counter_ver0_blast = 
            sprite_sheet_load(
                "asset/game_scene/VFX/hit_VFX/counter_ver0_blast.json",
                love.graphics.newImage(ASSET_DATA[8]["counter_ver0_blast_sprite_batch"])
            )

            image_VFX_HUD_game_scene_punish = love.graphics.newImage(ASSET_DATA[8]["HUD_punish"])

            image_VFX_HUD_game_scene_counter_ver0_2 = love.graphics.newImage(ASSET_DATA[8]["HUD_counter_ver0_2"])
            image_VFX_HUD_game_scene_counter_ver3 = love.graphics.newImage(ASSET_DATA[8]["HUD_counter_ver0_3"])

        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end
end







function load_game_scene_require(LP_name,RP_name,stage_name)
    require_all_in_folder("scenes/game_scene/_common")
    require("scenes/game_scene/characters/" .. LP_name .. "/left")
    require("scenes/game_scene/characters/" .. RP_name .. "/right")
    require("scenes/game_scene/characters/" .. LP_name .. "/_anim")
    require("scenes/game_scene/characters/" .. RP_name .. "/_anim")
    require("scenes/game_scene/characters/" .. LP_name .. "/_projectile")
    require("scenes/game_scene/characters/" .. RP_name .. "/_projectile")
    require("scenes/game_scene/characters/" .. LP_name .. "/_VFX")
    require("scenes/game_scene/characters/" .. RP_name .. "/_VFX")
    require("scenes/game_scene/stage/" .. stage_name)

end

function load_game_scene_thread_table(LP_name,RP_name,stage_name)
    local res_table = {}
    table.insert(
        res_table,
        "threads/game_scene/_common.lua"
    )
    table.insert(
        res_table,
        "threads/game_scene/characters/" .. LP_name .. ".lua"
    )
    table.insert(
        res_table,
        "threads/game_scene/characters/" .. RP_name .. ".lua"
    )
    table.insert(
        res_table,
        "threads/game_scene/stage/" .. stage_name .. ".lua"
    )
    table.insert(
        res_table,
        "threads/game_scene/act.lua"
    )
    table.insert(
        res_table,
        "threads/game_scene/HUD.lua"
    )
    table.insert(
        res_table,
        "threads/game_scene/lets_dance.lua"
    )
    table.insert(
        res_table,
        "threads/game_scene/VFX.lua"
    )


    return res_table

end


function preset_game_scene_training()
    obj_UI_game_scene_black_solid[4] = 1
    init_character_anim_with(obj_char_game_scene_char_LP,anim_char_LP_stand_idle)
    init_character_anim_with(obj_char_game_scene_char_RP,anim_char_RP_stand_idle)

end

function preset_game_scene_match()

end