require("update_general_use_functions/animator")
require("update_general_use_functions/audio_volume")
require("update_general_use_functions/game_duration")
require("update_general_use_functions/input_sys")
require("update_general_use_functions/resolution")
require("update_general_use_functions/thread_load")
require("draw_general_use_functions")

require("scenes/load_scene/draw_functions")
require("scenes/load_scene/init")
require("scenes/load_scene/main_blocks")

require("scenes/disclaimer_and_logos_scene/draw_functions")
require("scenes/disclaimer_and_logos_scene/init")
require("scenes/disclaimer_and_logos_scene/load_function")
require("scenes/disclaimer_and_logos_scene/main_blocks")
require("scenes/disclaimer_and_logos_scene/state_machine")
require("scenes/disclaimer_and_logos_scene/sub_blocks")

require("scenes/start_scene/common_functions")
require("scenes/start_scene/draw_functions")
require("scenes/start_scene/init")
require("scenes/start_scene/load_function")
require("scenes/start_scene/main_blocks")
require("scenes/start_scene/state_machine")
require("scenes/start_scene/sub_blocks")

require("scenes/char_select_scene/common_functions")
require("scenes/char_select_scene/draw_functions")
require("scenes/char_select_scene/init")
require("scenes/char_select_scene/load_function")
require("scenes/char_select_scene/main_blocks")
require("scenes/char_select_scene/state_machine")
require("scenes/char_select_scene/sub_blocks")


function love.run()
	if love.load then love.load(love.arg.parseGameArguments(arg), arg) end

	-- We don't want the first frame's dt to include time taken by love.load.
	if love.timer then love.timer.step() end

	local dt = 0
    local FRST = 1/60 --frame rate stabilization timer
	-- global_counter = 0

	-- Main loop time.
	return function()
		-- Process events.
		if love.event then
			love.event.pump()
			for name, a,b,c,d,e,f in love.event.poll() do
				if name == "quit" then
					if not love.quit or not love.quit() then
						return a or 0
					end
				end
				love.handlers[name](a,b,c,d,e,f)
			end
		end

		-- Update dt, as we'll be passing it to update
		if love.timer then FRST = FRST + love.timer.step() end
        -- Call update and draw
        if FRST >= 1/60 then
			
			-- local updateStartTime = love.timer.getTime()
			-- local cpu_heavy_task = function()
			-- 	-- 模拟繁重的 CPU 运算，消耗时间
			-- 	for i = 1, 100000 do
			-- 		-- 频繁读写全局变量 100w次
			-- 		global_counter = global_counter + 10
			-- 		global_counter = global_counter - 10
			-- 	end
			-- end
			-- cpu_heavy_task()
			local s = love.timer.getTime()
            if love.update then love.update() end -- will pass 0 if love.timer is disabled

            if love.draw then love.draw() end
            love.graphics.present()
			local gap = love.timer.getTime() - s 
			if gap > 1/60 then
				print(gap)
			end

			-- local updateEndTime = love.timer.getTime()
			-- print(updateStartTime-updateEndTime)

            FRST = math.fmod(FRST, 1/60)
        end
		collectgarbage()
		if love.timer then love.timer.sleep(0.001) end
	end
end

function love.load()
	init_input()
	-- read save data
	read_volume_config()
	read_game_duration()
	get_current_resolution()

	modify_quit_game_reocrd()

	ONLINE_MATCH_BOOL = false
	NETWORK_MATCH_SIDE = 1
	OTHER_SIDE = 2
	CHAR_SELECT_LR = {4,5}

	-- non-character global variable
-------------------------------------------------
	-- start_scene
	PLAYER_NUMBER = 1
	OPTION_ID = 0
	SUB_SCENE_CONIFG_MAIN_DABO_TRIG_ID = 0
	AUDIO_BAR_MARK_ID = 0
	CONSOLE_TEXT_1_ID = 0
	CONSOLE_TEXT_2_ID = 0

	OPTION_TEXT_X_POSITION_TABLE = {704,704,729,725,684}
	CONSOLE_TYPE_IN_MARK_X_POSITION_TABLE = {1065,795,815,505,565,930,1115,1110}
	DABO_TIRG_RECORD_SUB_SCENE_Y_POSITION = 500
	DABO_TIRG_CONFIG_SUB_SCENE_Y_POSITION_TABLE = {390,415,440,495}
	BAR_MARK_CONFIG_SUB_SCENE_AUDIO_X_POSITION = 1296
	BAR_MARK_CONFIG_SUB_SCENE_AUDIO_Y_POSITION_TABLE = {400,425}
	BAR_MARK_CONFIG_SUB_SCENE_RESOLUTION_X_POSITION = 1000
	BAR_MARK_CONFIG_SUB_SCENE_RESOLUTION_Y_POSITION = 530

	-- char_select_scene
	LEFT_CHAR_SELECT_CHAR_POSITION = {
		{132,-2,0},
		{230,6,0},
		{248,-60,0},
		{-200,-52,0},
		{-27,-35,0},
		{305,-3,0},
		{215,1,0},
		{256,-32,0},
	}
	LEFT_CHAR_SELECT_TEXT_POSITION = {
		{210,-121,0.332},
		{205,-131,0.332},
		{422,-114,0.332},
		{375,-179,0.192},
		{-272,-96,0.332},
		{-280,-210,0.332},
		{193,-152,0.332},
		{264,-146,0.332},
	}
	RIGHT_CHAR_SELECT_CHAR_POSITION = {
		{797,-2,0},
		{1000,-2,0},
		{840,35,-0.244},
		{574,-30,0},
		{610,-12,0},
		{870,-4,0},
		{945,-3,0},
		{903,-32,0},
	}
	RIGHT_CHAR_SELECT_TEXT_POSITION = {
		{802,216,-0.401},
		{964,205,-0.332},
		{1016,182,-0.384},
		{1636,-56,0.332},
		{1291,-36,0.436},
		{1498,-154,0.332},
		{1023,171,-0.332},
		{995,170,-0.332},
	}
	ICON_COVER_POSITION = {
		{0,570},
		{192,570},
		{405,512},
		{603,349},
		{765,168},
		{921,120},
		{1116,122},
		{1327,121},
	}

	--	general_scene_global_variable
	FRAMES_DRAWN = 0
	SCENE_TIMER = -1
	GAME_MODE = 0

	-- load_scene
	THREAD_TABLE = {}
    THREAD_AMOUNT = 0
    THREAD_ONCE_TABLE = {}
    ASSET_DATA_TABLE = {}
    LOAD_FUNCTION_TABLE = {}
    LOAD_ORDER_TABLE = {}
    ORDER_SIZE_TABLE = {}
	LOAD_ONCE_TABLE = {}
    LOADING_FUNCTION_AMOUNT = 0

	LOADING_AUDIO_PLAYED_ONCE = false

	NEXT_UPDATE_BLOCK = update_disclaimer_and_logos_scene_main
	NEXT_DRAW_BLOCK = draw_disclaimer_and_logos_scene_main
	NEXT_PRESET = preset_disclaimer_and_logos_scene

	-- disclaimer_and_logos_scene
	DISCLAIMER_AND_LOGOS_POSITION = {
		{175,125},
		{620,255},
		{620,255},
	}
---------------------------------------------------

	current_update_block = update_load_scene_load_pre_timer
	current_draw_block = function() end

end    
function love.update()
	-- http://127.0.0.1:8000
	require("lovebird").update()
	update_input()
	FPS = love.timer.getFPS()
    FRAMES_DRAWN = FRAMES_DRAWN + 1
	update_record_game_duration()
	current_update_block()
end
function love.draw()
	love.graphics.clear(7/255,19/255,31/255,1)
	current_draw_block()
	love.graphics.setColor(1, 1, 1, 0.5)
	draw_input_sys()
	love.graphics.print( "FRAMES_DRAWN", 0, 240)
    love.graphics.print( "GRAPHICIAL_FPS", 0, 255)
	love.graphics.print( "SCENE_TIMER", 0, 270)
	love.graphics.print( FRAMES_DRAWN, 110, 240)
    love.graphics.print( FPS, 110, 255)
	love.graphics.print( SCENE_TIMER, 110, 270)
	love.graphics.setColor(1, 1, 1, 1)
end