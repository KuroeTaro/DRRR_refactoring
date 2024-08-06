-- thread_table 线程table正常放
-- thread_amount 从1开始数有多少就是多少
-- thread_once_table thread_amount量的false
-- asset_data_table = {}
-- load_functions_table 每个thread对应一个 load function
-- CURRENT_ORDER_TABLE 全是 1
-- order_size_table 对应 每个具体的 load_function的 order最大值
function load_start_scene_prep()
    THREAD_TABLE = {
        "threads/start_scene/start_scene_thread_1_main_UI.lua",
        "threads/start_scene/start_scene_thread_2_main_UI_BG.lua",
        "threads/start_scene/start_scene_thread_3_sub_UI.lua",
    }
    THREAD_AMOUNT = 3   -- 线程数目
    THREAD_ONCE_TABLE = {false,false,false} -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    ASSET_DATA_TABLE = {}   -- 保持为nil
    ORDER_LOAD_TABLE = {
        start_scene_main_UI_load_function,
        start_scene_main_UI_BG_load_function,
        start_scene_sub_UI_load_function,
    }    -- load function table
    CURRENT_ORDER_TABLE = {1,1,1}  -- 如果有两个线程 = {1，1} 三个 = {1，1，1} 以此类推
    ORDER_SIZE_TABLE = {2,1,1}  -- 每个load function的最大值
    LOAD_ONCE_TABLE = {false,false,false}   -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    LOADING_FUNCTION_AMOUNT = 3 -- 和线程数相同

	NEXT_UPDATE_BLOCK = function() end
	NEXT_DRAW_BLOCK = function() end
    NEXT_PRESET_ANIMATOR = function() end

end


-- 分步骤将素材加载
function start_scene_main_UI_load_function(load_order)
    local switch = 
    {
        [1] = function()
            -- image_table以0开头 因为AE的帧数是以0开头设计的

            -- global use shape image
            global_dabo_trig_image = love.graphics.newImage(ASSET_DATA_TABLE[1][1])
            global_type_in_mark_image = love.graphics.newImage(ASSET_DATA_TABLE[1][2])

            -- up console text image
            -- single_person
            up_console_text_image_table = {}
            up_console_text_image_table[0] = love.graphics.newImage(ASSET_DATA_TABLE[1][3])
            -- local_two_player
            up_console_text_image_table[1] = love.graphics.newImage(ASSET_DATA_TABLE[1][4])
            -- adjustment_interface
            up_console_text_image_table[2] = love.graphics.newImage(ASSET_DATA_TABLE[1][5])
            -- game_duretion
            up_console_text_image_table[3] = love.graphics.newImage(ASSET_DATA_TABLE[1][6])
            -- close_this_game
            up_console_text_image_table[4] = love.graphics.newImage(ASSET_DATA_TABLE[1][7])
            -- update_controller
            up_console_text_image_table[5] = love.graphics.newImage(ASSET_DATA_TABLE[1][8])


            -- down console text image
            -- training_mode
            down_console_text_image_table = {}
            down_console_text_image_table[0] = love.graphics.newImage(ASSET_DATA_TABLE[1][9])
            -- second_controller
            down_console_text_image_table[1] = love.graphics.newImage(ASSET_DATA_TABLE[1][10])
            -- some_configuration
            down_console_text_image_table[2] = love.graphics.newImage(ASSET_DATA_TABLE[1][11])
            -- time_management
            down_console_text_image_table[3] = love.graphics.newImage(ASSET_DATA_TABLE[1][12])
            -- return_to_OS
            down_console_text_image_table[4] = love.graphics.newImage(ASSET_DATA_TABLE[1][13])
            -- 2P_mode_available
            down_console_text_image_table[5] = love.graphics.newImage(ASSET_DATA_TABLE[1][14])
            -- only_one_controller
            down_console_text_image_table[6] = love.graphics.newImage(ASSET_DATA_TABLE[1][15])
            -- two_or_more_controller
            down_console_text_image_table[7] = love.graphics.newImage(ASSET_DATA_TABLE[1][16])


            -- option text image
            -- training
            option_text_image_table = {}
            option_text_image_table[0] = love.graphics.newImage(ASSET_DATA_TABLE[1][17])
            -- 2P_matching
            option_text_image_table[1] = love.graphics.newImage(ASSET_DATA_TABLE[1][18])
            -- config
            option_text_image_table[2] = love.graphics.newImage(ASSET_DATA_TABLE[1][19])
            -- record
            option_text_image_table[3] = love.graphics.newImage(ASSET_DATA_TABLE[1][20])
            -- exit_to_OS
            option_text_image_table[4] = love.graphics.newImage(ASSET_DATA_TABLE[1][21])


            -- option breath tag
            breath_tag_image = love.graphics.newImage(ASSET_DATA_TABLE[1][22])


            -- main logo
            main_logo_image = love.graphics.newImage(ASSET_DATA_TABLE[1][23])

        end,
        [2] = function()
            load_start_scene_obj()
            load_start_scene_anim()
            load_start_scene_audio()
        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end

end

function start_scene_main_UI_BG_load_function(load_order)
    local switch = 
    {
        [1] = function()
            BG_loop_image_table = {}
            for i = 0,49 do
                BG_loop_image_table[i] = love.graphics.newImage(ASSET_DATA_TABLE[2][i+1])
            end
            shutter_image = love.graphics.newImage(ASSET_DATA_TABLE[2][51])
        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end

end

function start_scene_sub_UI_load_function(load_order)
    local switch = 
    {
        [1] = function()

            -- resolution text in config resolution sub UI only
            resolution_text_image_table = {}
            -- 1280_x_720
            resolution_text_image_table[0] = love.graphics.newImage(ASSET_DATA_TABLE[3][1])
            -- 1600_x_900
            resolution_text_image_table[1] = love.graphics.newImage(ASSET_DATA_TABLE[3][2])
            -- 1920_x_1080
            resolution_text_image_table[2] = love.graphics.newImage(ASSET_DATA_TABLE[3][3])
            -- 2560_x_1440
            resolution_text_image_table[3] = love.graphics.newImage(ASSET_DATA_TABLE[3][4])
            -- 3840_x_2160
            resolution_text_image_table[4] = love.graphics.newImage(ASSET_DATA_TABLE[3][5])
            -- select_res_text
            select_res_text_image = love.graphics.newImage(ASSET_DATA_TABLE[3][6])


            -- audio text in config audio sub UI only
            audio_bar_image = love.graphics.newImage(ASSET_DATA_TABLE[3][7])
            audio_config_text_image = love.graphics.newImage(ASSET_DATA_TABLE[3][8])


            -- controller text in config controller sub UI only
            controller_indi_text_image = love.graphics.newImage(ASSET_DATA_TABLE[3][9])


            -- global config menu sub UI text
            config_menu_text_image = love.graphics.newImage(ASSET_DATA_TABLE[3][10])


            -- global config menu sub UI shape
            bar_mark_image = love.graphics.newImage(ASSET_DATA_TABLE[3][11])


            -- record text in config record sub UI only
            game_duration_text_image = love.graphics.newImage(ASSET_DATA_TABLE[3][12])
            game_duration_number_image_table = {}
            for i = 13,22 do
                game_duration_number_image_table[i-13] = love.graphics.newImage(ASSET_DATA_TABLE[3][i])
            end
        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end

end


function unload_start_scene_image()

    -- main UI
    global_dabo_trig = nil
    global_type_in_mark = nil
    up_console_text = nil
    down_console_text = nil
    option_text = nil
    breath_tag = nil
    main_logo = nil

    -- main UI BG shutter
    BG_loop_image_table = nil
    shutter_image = nil

    -- resolution sub scene
    resolution_text_image_table = nil
    select_res_text_image = nil

    -- audio sub scene
    audio_bar_image = nil
    audio_config_text_image = nil

    -- controller device
    controller_indi_text_image = nil

    -- config global
    config_menu_text_image = nil
    bar_mark_image = nil

    -- record
    game_duration_text_image = nil
    game_duration_number_image_table = nil

end