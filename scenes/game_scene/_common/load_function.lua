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
    local LP_name = char_id_to_name[CHAR_SELECT_LR[1]]
    local RP_name = char_id_to_name[CHAR_SELECT_LR[2]]
    local stage_name = "alpha"
    local thread_LP_name = LP_name .. "_left"
    local thread_RP_name = RP_name .. "_right"
    local thread_stage_name = stage_name
    load_game_scene_require(LP_name,RP_name,stage_name)
    THREAD_TABLE = load_game_scene_thread_table(thread_LP_name,thread_RP_name,thread_stage_name)
    THREAD_AMOUNT = 4   -- 线程数目
    THREAD_ONCE_TABLE = {false,false,false,false} -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    ASSET_DATA = {}   -- 保持为nil
    ORDER_LOAD_TABLE = {
        order_load_game_scene_char_LP_frames,
        order_load_game_scene_char_RP_frames,
        order_load_game_scene_stage,
        order_load_game_scene_common
    }    -- load function table
    CURRENT_ORDER_TABLE = {1,1,1,1}  -- 如果有两个线程 = {1，1} 三个 = {1，1，1} 以此类推
    ORDER_SIZE_TABLE = {1,1,1,1}  -- 每个load function的最大值
    LOAD_ONCE_TABLE = {false,false,false,false}   -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    LOADING_FUNCTION_AMOUNT = 4 -- 和线程数相同

	NEXT_UPDATE_BLOCK = update_game_scene_flash_in
	NEXT_DRAW_BLOCK = draw_game_scene_flash_in
    NEXT_PRESET = preset_game_scene

end


function order_load_game_scene_common()
    load_game_scene_common_obj()
    load_game_scene_common_anim()
    load_game_scene_common_audio()
    load_game_scene_common_shader()
    
end

function load_game_scene_require(LP_name,RP_name,stage_name)
    require_all_in_folder("scenes/game_scene/_common")
    require("scenes/game_scene/characters/" .. LP_name .. "/left")
    require("scenes/game_scene/characters/" .. RP_name .. "/right")
    require("scenes/game_scene/stage/" .. stage_name)

end

function load_game_scene_thread_table(LP_name,RP_name,stage_name)
    local res_table = {}
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
        "threads/game_scene/_common.lua"
    )

    return res_table

end

function preset_game_scene()

end