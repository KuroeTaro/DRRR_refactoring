-- thread_table 线程table正常放
-- thread_amount 从1开始数有多少就是多少
-- thread_once_table thread_amount量的false
-- ASSET_DATA = {}
-- load_functions_table 每个thread对应一个 load function
-- CURRENT_ORDER_TABLE 全是 1
-- order_size_table 对应 每个具体的 load_function的 order最大值
function load_char_select_scene_prep()
    load_char_select_scene_require()
    THREAD_TABLE = {
        "threads/char_select_scene/char_select_thread_1_char.lua",
        "threads/char_select_scene/char_select_thread_2_start_0_110f.lua",
        "threads/char_select_scene/char_select_thread_3_movie_cover.lua",
    }
    THREAD_AMOUNT = 3   -- 线程数目
    THREAD_ONCE_TABLE = {false,false,false} -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    ASSET_DATA = {}   -- 保持为nil
    ORDER_LOAD_TABLE = {
        order_load_char_select_scene_UI_char,
        order_load_char_select_scene_UI_start_0_110f,
        order_load_char_select_scene_UI_movie_cover,
    }    -- load function table
    CURRENT_ORDER_TABLE = {1,1,1}  -- 如果有两个线程 = {1，1} 三个 = {1，1，1} 以此类推
    ORDER_SIZE_TABLE = {2,1,1}  -- 每个load function的最大值
    LOAD_ONCE_TABLE = {false,false,false}   -- 如果有两个线程 = {false，false} 三个 = {false，false，false} 以此类推
    LOADING_FUNCTION_AMOUNT = 3 -- 和线程数相同

	NEXT_UPDATE_BLOCK = update_char_select_scene_ease_in_0f_36f
	NEXT_DRAW_BLOCK = draw_char_select_scene_ease_in_0f_36f
    NEXT_PRESET = preset_char_select_scene

end

-- 分步骤将素材加载
function order_load_char_select_scene_UI_char(load_order)
    local switch = 
    {
        [1] = function()
            -- global use shape image
            image_UI_char_select_scene_bar_mark = love.graphics.newImage(ASSET_DATA[1][1])
            -- image_UI_char_select_scene_char_select_bg = love.graphics.newImage(ASSET_DATA[1][2])
            image_UI_char_select_scene_char_select_left_alpha = love.graphics.newImage(ASSET_DATA[1][2])
            image_UI_char_select_scene_char_select_right_alpha = love.graphics.newImage(ASSET_DATA[1][3])
            image_UI_char_select_scene_control_method_L = love.graphics.newImage(ASSET_DATA[1][4])
            image_UI_char_select_scene_control_method_R = love.graphics.newImage(ASSET_DATA[1][5])
            image_UI_char_select_scene_ring = love.graphics.newImage(ASSET_DATA[1][6])

            -- -- char icon alpha image name
            image_table_UI_char_select_scene_char_icon_alpha = {}
            for i = 1,8 do
                image_table_UI_char_select_scene_char_icon_alpha[i] = love.graphics.newImage(ASSET_DATA[1][i+6])
            end

            -- image_table_UI_char_select_scene_char_icon_image = {}
            -- for i = 1,8 do
            --     image_table_UI_char_select_scene_char_icon_image[i] = love.graphics.newImage(ASSET_DATA[1][i+15])
            -- end

            image_table_UI_char_select_scene_char_select_char = {}
            for i = 1,8 do
                image_table_UI_char_select_scene_char_select_char[i] = love.graphics.newImage(ASSET_DATA[1][i+14])
            end

            image_table_UI_char_select_scene_char_select_text_left = {}
            for i = 1,8 do
                image_table_UI_char_select_scene_char_select_text_left[i] = love.graphics.newImage(ASSET_DATA[1][i+22])
            end

            image_table_UI_char_select_scene_char_select_text_right = {}
            for i = 1,3 do
                image_table_UI_char_select_scene_char_select_text_right[i] = love.graphics.newImage(ASSET_DATA[1][i+30])
            end
            image_table_UI_char_select_scene_char_select_text_right[4] = love.graphics.newImage(ASSET_DATA[1][26])
            image_table_UI_char_select_scene_char_select_text_right[5] = love.graphics.newImage(ASSET_DATA[1][27])
            for i = 1,3 do
                image_table_UI_char_select_scene_char_select_text_right[i+5] = love.graphics.newImage(ASSET_DATA[1][i+33])
            end

            image_table_UI_char_select_scene_number = {}
            for i = 1,10 do
                image_table_UI_char_select_scene_number[i-1] = love.graphics.newImage(ASSET_DATA[1][i+36])
            end
        end,
        [2] = function()
            load_char_select_scene_obj()
            load_char_select_scene_anim()
            load_char_select_scene_audio()
            load_char_select_scene_shader()
            
        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end

end

function order_load_char_select_scene_UI_start_0_110f(load_order)
    local switch = 
    {
        [1] = function()
            image_sprite_sheet_UI_char_select_scene_start_0_110f = 
            sprite_sheet_load(
                "asset/char_select_scene/scene_start_0_110f.json",
                love.graphics.newImage(ASSET_DATA[2]["scene_start_0_110f"])
            )

        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end

end

function order_load_char_select_scene_UI_movie_cover(load_order)
    local switch = 
    {
        [1] = function()
            image_sprite_sheet_UI_char_select_scene_movie_cover = 
            sprite_sheet_load(
                "asset/char_select_scene/movie_cover.json",
                love.graphics.newImage(ASSET_DATA[3]["movie_cover"])
            )
        end,
    }
    local this_function = switch[load_order]
    if this_function then this_function() end

end


function unload_char_select_scene_image()
    for key in pairs(_G) do
        if key:sub(1, 26) == "image_UI_char_select_scene" 
        or key:sub(1, 32) == "image_table_UI_char_select_scene"
        or key:sub(1, 39) == "image_sprite_sheet_UI_char_select_scene" 
        then -- 检查变量名是否以 "prefix_" 开头
            _G[key] = nil -- 删除该变量
        end
    end

    -- image_UI_char_select_scene_bar_mark = nil
    -- image_UI_char_select_scene_char_select_left_alpha = nil
    -- image_UI_char_select_scene_char_select_right_alpha = nil
    -- image_UI_char_select_scene_control_method_L = nil
    -- image_UI_char_select_scene_control_method_R = nil
    -- image_UI_char_select_scene_ring = nil

    -- image_table_UI_char_select_scene_char_select_char = nil
    -- image_table_UI_char_select_scene_char_select_text_left = nil
    -- image_table_UI_char_select_scene_char_select_text_right = nil
    -- image_table_UI_char_select_scene_number = nil
    -- image_table_UI_char_select_scene_char_icon_alpha = nil

    -- image_table_UI_char_select_scene_start_0_110f = nil
    -- image_table_UI_char_select_scene_movie_cover = nil

end


function load_char_select_scene_require()
    require_all_in_folder("scenes/char_select_scene")
    -- require("scenes/char_select_scene/common_functions")
    -- require("scenes/char_select_scene/draw_functions")
    -- require("scenes/char_select_scene/init")
    -- require("scenes/char_select_scene/main_blocks")
    -- require("scenes/char_select_scene/state_machine")
    -- require("scenes/char_select_scene/sub_blocks")

end

function unload_char_select_scene_require()
    for key in pairs(_G) do
        if key:sub(1, 24) == "common_char_select_scene" 
        or key:sub(1, 22) == "draw_char_select_scene" 
        or key:sub(1, 24) == "preset_char_select_scene" 
        or key:sub(1, 24) == "update_char_select_scene"
        or key:sub(1, 34) == "state_machine_UI_char_select_scene" 
        then -- 检查变量名是否以 "prefix_" 开头
            _G[key] = nil -- 删除该变量
        end
    end
    require("scenes/char_select_scene/load_function")

    -- common_char_select_scene_reset_char_text_ease_out = nil
    -- common_char_select_scene_reset_char_text_ease_in = nil
    -- common_char_select_scene_char_select_left_locked_exit = nil

    -- draw_char_select_scene_ease_in_0f_36f = nil
    -- draw_char_select_scene_ease_in_36f_40f = nil
    -- draw_char_select_scene_ease_in_40f_2s10f = nil
    -- draw_char_select_scene_main = nil
    -- draw_char_select_scene_timer = nil
    -- draw_char_select_scene_glow = nil
    -- draw_char_select_scene_char_icon = nil
    -- draw_char_select_scene_char_select_LR = nil

    -- load_char_select_scene_obj = nil
    -- load_char_select_scene_anim = nil
    -- load_char_select_scene_audio = nil
    -- load_char_select_scene_shader = nil
    -- unload_char_select_scene_obj = nil
    -- unload_char_select_scene_anim = nil
    -- unload_char_select_scene_audio = nil
    -- unload_char_select_scene_shader = nil
    -- unload_char_select_scene_all = nil
    -- preset_char_select_scene = nil

    -- update_char_select_scene_ease_in_0f_36f = nil
    -- update_char_select_scene_ease_in_36f_40f = nil
    -- update_char_select_scene_ease_in_40f_2s10f = nil
    -- update_char_select_scene_main = nil
    -- update_char_select_scene_train_dummy_select = nil
    -- update_char_select_scene_ease_out = nil

    -- state_machine_UI_char_select_scene_movie_cover_loop = nil
    -- state_machine_UI_char_select_scene_timer = nil
    -- state_machine_UI_char_select_scene_ring_blink = nil
    -- state_machine_UI_char_select_scene_char_select = nil
    -- state_machine_UI_char_select_scene_char_select_ease = nil
    -- state_machine_UI_char_select_scene_char_select_bar_mark_select = nil
    -- state_machine_UI_char_select_scene_char_select_train_dummy = nil
    -- state_machine_UI_char_select_scene_char_select_ease_train_dummy = nil
    -- state_machine_UI_char_select_scene_char_select_bar_mark_select_train_dummy = nil

end