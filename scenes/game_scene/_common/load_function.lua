-- thread_table 线程table正常放
-- thread_amount 从1开始数有多少就是多少
-- thread_once_table thread_amount量的false
-- asset_data_table = {}
-- load_functions_table 每个thread对应一个 load function
-- CURRENT_ORDER_TABLE 全是 1
-- order_size_table 对应 每个具体的 load_function的 order最大值
function load_game_scene_prep()
    load_game_scene_require(LP_name,RP_name,stage_name)
    THREAD_TABLE = load_game_scene_thread_table(LP_name,RP_name,stage_name)
    THREAD_AMOUNT = 3   -- 线程数目
    THREAD_ONCE_TABLE = {false,false,false} -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    INDEX_ARGUMENT = {nil,nil,nil}
    ASSET_DATA_TABLE = {}   -- 保持为nil
    ORDER_LOAD_TABLE = {
        order_load_game_scene_char_LP_idle_frames,
        order_load_game_scene_char_RP_idle_frames,
        order_load_game_scene_stage,
    }    -- load function table
    CURRENT_ORDER_TABLE = {1,1,1}  -- 如果有两个线程 = {1，1} 三个 = {1，1，1} 以此类推
    ORDER_SIZE_TABLE = {1,1,1}  -- 每个load function的最大值
    LOAD_ONCE_TABLE = {false,false,false}   -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    LOADING_FUNCTION_AMOUNT = 3 -- 和线程数相同

	NEXT_UPDATE_BLOCK = update_game_scene_flash_in
	NEXT_DRAW_BLOCK = draw_game_scene_flash_in
    NEXT_PRESET = preset_game_scene

end

function load_game_scene_require(LP_name,RP_name,stage_name)
    
end

function load_game_scene_thread_table(LP_name,RP_name,stage_name)
    local res_table = {}
    table.insert(
        res_table,
        "threads/game_scene/character/" .. LP_name .. ".lua"
    )
    table.insert(
        res_table,
        "threads/game_scene/character/" .. RP_name .. ".lua"
    )
    table.insert(
        res_table,
        "threads/game_scene/stage/" .. stage_name .. ".lua"
    )

    return res_table

end