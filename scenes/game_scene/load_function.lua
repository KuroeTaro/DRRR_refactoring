-- thread_table 线程table正常放
-- thread_amount 从1开始数有多少就是多少
-- thread_once_table thread_amount量的false
-- asset_data_table = {}
-- load_functions_table 每个thread对应一个 load function
-- CURRENT_ORDER_TABLE 全是 1
-- order_size_table 对应 每个具体的 load_function的 order最大值
function load_game_scene_prep()
    load_game_scene_require()
    THREAD_TABLE = {
        "threads/start_scene/start_scene_thread_1_main_UI.lua",
        "threads/start_scene/start_scene_thread_2_main_UI_BG.lua",
        "threads/start_scene/start_scene_thread_3_sub_UI.lua",
    }
    THREAD_AMOUNT = 3   -- 线程数目
    THREAD_ONCE_TABLE = {false,false,false} -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    ASSET_DATA_TABLE = {}   -- 保持为nil
    ORDER_LOAD_TABLE = {
        order_load_start_scene_main_UI,
        order_load_start_scene_main_UI_BG,
        order_load_start_scene_sub_UI,
    }    -- load function table
    CURRENT_ORDER_TABLE = {1,1,1}  -- 如果有两个线程 = {1，1} 三个 = {1，1，1} 以此类推
    ORDER_SIZE_TABLE = {2,1,1}  -- 每个load function的最大值
    LOAD_ONCE_TABLE = {false,false,false}   -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    LOADING_FUNCTION_AMOUNT = 3 -- 和线程数相同

	NEXT_UPDATE_BLOCK = update_start_scene_flash_in
	NEXT_DRAW_BLOCK = draw_start_scene_main
    NEXT_PRESET = preset_start_scene

end