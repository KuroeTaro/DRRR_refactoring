-- thread_table 线程table正常放
-- thread_amount 从1开始数有多少就是多少
-- thread_once_table thread_amount量的false
-- asset_data_table = {}
-- load_functions_table 每个thread对应一个 load function
-- CURRENT_ORDER_TABLE 全是 1
-- order_size_table 对应 每个具体的 load_function的 order最大值
function load_char_select_scene_prep()
    THREAD_TABLE = {
        "threads/char_select_scene/char_select_thread_1_char.lua",
        "threads/char_select_scene/char_select_thread_2_first_ring.lua",
        "threads/char_select_scene/char_select_thread_3_movie_cover.lua",
    }
    THREAD_AMOUNT = 3   -- 线程数目
    THREAD_ONCE_TABLE = {false,false,false} -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    ASSET_DATA_TABLE = {}   -- 保持为nil
    ORDER_LOAD_TABLE = {
        order_load_char_select_scene_UI_char,
        order_load_char_select_scene_UI_first_ring,
        order_load_char_select_scene_UI_movie_cover,
    }    -- load function table
    CURRENT_ORDER_TABLE = {1,1,1}  -- 如果有两个线程 = {1，1} 三个 = {1，1，1} 以此类推
    ORDER_SIZE_TABLE = {1,1,1}  -- 每个load function的最大值
    LOAD_ONCE_TABLE = {false,false,false}   -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    LOADING_FUNCTION_AMOUNT = 3 -- 和线程数相同

	NEXT_UPDATE_BLOCK = update_start_scene_flash_in
	NEXT_DRAW_BLOCK = draw_start_scene_general
    NEXT_PRESET = preset_start_scene

end

-- 分步骤将素材加载
function order_load_char_select_scene_UI_char(load_order)
    local local_switch = 
    {
        [1] = function()
            -- global use shape image
            image_UI_char_select_scene_bar_mark = love.graphics.newImage(ASSET_DATA_TABLE[1][1])
            image_UI_char_select_scene_char_select_bg = love.graphics.newImage(ASSET_DATA_TABLE[1][2])
            image_UI_char_select_scene_char_select_left_alpha = love.graphics.newImage(ASSET_DATA_TABLE[1][3])
            image_UI_char_select_scene_char_select_right_alpha = love.graphics.newImage(ASSET_DATA_TABLE[1][4])
            image_UI_char_select_scene_control_method_L = love.graphics.newImage(ASSET_DATA_TABLE[1][5])
            image_UI_char_select_scene_control_method_R = love.graphics.newImage(ASSET_DATA_TABLE[1][6])
            image_UI_char_select_scene_second_ring = love.graphics.newImage(ASSET_DATA_TABLE[1][7])

            -- char icon alpha image name
            for i = 1,8 do
                image_table_UI_char_select_scene_char_icon_alpha[i-1] = love.graphics.newImage(ASSET_DATA_TABLE[1][i+7])
            end
            for i = 1,8 do
                image_table_UI_char_select_scene_char_icon_image[i-1] = love.graphics.newImage(ASSET_DATA_TABLE[1][i+15])
            end
            for i = 1,8 do
                image_table_UI_char_select_scene_char_name[i-1] = love.graphics.newImage(ASSET_DATA_TABLE[1][i+23])
            end
            for i = 1,8 do
                image_table_UI_char_select_scene_char_select_image[i-1] = love.graphics.newImage(ASSET_DATA_TABLE[1][i+31])
            end
            for i = 1,8 do
                image_table_UI_char_select_scene_char_select_text_left[i-1] = love.graphics.newImage(ASSET_DATA_TABLE[1][i+39])
            end
            for i = 1,3 do
                image_table_UI_char_select_scene_char_select_text_right[i-1] = love.graphics.newImage(ASSET_DATA_TABLE[1][i+47])
            end
            image_table_UI_char_select_scene_char_select_text_right[3] = love.graphics.newImage(ASSET_DATA_TABLE[1][43])
            image_table_UI_char_select_scene_char_select_text_right[4] = love.graphics.newImage(ASSET_DATA_TABLE[1][44])
            for i = 1,3 do
                image_table_UI_char_select_scene_char_select_text_right[i+4] = love.graphics.newImage(ASSET_DATA_TABLE[1][i+51])
            end
        end,
    }
    local this_function = local_switch[load_order]
    if this_function then this_function() end

end

function order_load_char_select_scene_UI_first_ring(load_order)
    local local_switch = 
    {
        [1] = function()
            image_table_UI_char_select_scene_first_ring = {}
            for i = 0,17 do
                image_table_UI_char_select_scene_first_ring[i] = love.graphics.newImage(ASSET_DATA_TABLE[2][i+1])
            end
        end,
    }
    local this_function = local_switch[load_order]
    if this_function then this_function() end

end

function order_load_char_select_scene_UI_movie_cover(load_order)
    local local_switch = 
    {
        [1] = function()
            image_table_UI_char_select_scene_movie_cover = {}
            for i = 0,9 do
                image_table_UI_char_select_scene_movie_cover[i] = love.graphics.newImage(ASSET_DATA_TABLE[3][i+1])
            end
        end,
    }
    local this_function = local_switch[load_order]
    if this_function then this_function() end

end


function unload_char_select_scene_image()
    -- main UI
    image_UI_start_scene_global_dabo_trig = nil
    image_UI_start_scene_global_type_in_mark = nil
    image_table_UI_start_scene_up_console_text = nil
    image_table_UI_start_scene_down_console_text = nil
    image_table_UI_start_scene_option_text = nil
    image_UI_start_scene_breath_tag = nil
    image_UI_start_scene_main_logo = nil

    -- main UI BG shutter
    image_table_UI_start_scene_BG_loop = nil
    image_UI_start_scene_shutter = nil

    -- resolution sub scene
    image_table_UI_start_scene_resolution_text = nil
    image_UI_start_scene_select_res_text = nil

    -- audio sub scene
    image_UI_start_scene_config_audio_bar = nil
    image_UI_start_scene_config_audio_text = nil

    -- controller device
    image_UI_start_scene_controller_indi_text = nil

    -- config global
    image_UI_start_scene_config_menu_text = nil
    image_UI_start_scene_bar_mark = nil

    -- record
    image_UI_start_scene_game_duration_text = nil
    image_table_UI_start_scene_game_duration_number = nil
    image_table_UI_start_scene_time_indi_barcode = nil

end