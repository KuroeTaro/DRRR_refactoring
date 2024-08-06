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

require("scenes/start_scene/draw_functions")
require("scenes/start_scene/init")
require("scenes/start_scene/load_function")
require("scenes/start_scene/main_blocks")
require("scenes/start_scene/state_machine")
require("scenes/start_scene/sub_blocks")

function love.run()
	if love.load then love.load(love.arg.parseGameArguments(arg), arg) end

	-- We don't want the first frame's dt to include time taken by love.load.
	if love.timer then love.timer.step() end

	local dt = 0
    local FRST = 1/60 --frame rate stabilization timer

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
            if love.update then love.update() end -- will pass 0 if love.timer is disabled

            if love.draw then love.draw() end
            love.graphics.present()

            FRST = math.fmod(FRST, 1/60)
        end
        if love.timer then love.timer.sleep(1/60-FRST) end
        -- if love.timer then love.timer.sleep(0.001) end
	end
end

function love.load()
	input_load()
	-- read save data
	volume_read_save()
	game_duration_read_save()

	-- non-character global variable
-------------------------------------------------
	-- start_scene
	PLAYER_NUMBER = 1
	OPTION_ID = 1
	SUB_SCENE_DABO_TRIG_ID = 1
	BAR_MARK_ID = 1
	CONSOLE_TEXT_1_ID = 1
	CONSOLE_TEXT_2_ID = 1


	OPTION_TEXT_POSITION_TABLE = {700,657,728,723,684}
	CONSOLE_TYPE_IN_MARK_POSITION_TABLE = {1065,795,815,505,565,930,1115,1110}
	DABO_TIRG_RECORD_SUB_SCENE_POSITION_TABLE = {360,435}
	DABO_TIRG_CONFIG_SUB_SCENE_POSITION_TABLE = {360,385,410,465}

	-- char_select_scene
	LEFT_CHAR_IMAGE_POSITION = {
		{132,-2,0},
		{230,6,0},
		{248,-60,0},
		{106,-52,0},
		{-27,-35,0},
		{305,-3,0},
		{215,1,0},
		{256,-32,0},
	}
	LEFT_CHAR_TEXT_POSITION = {
		{210,-121,0.332},
		{205,-131,0.332},
		{422,-114,0.332},
		{375,-179,0.192},
		{-272,-96,0.332},
		{-280,-210,0.332},
		{193,-152,0.332},
		{264,-146,0.332},
	}
	RIGHT_CHAR_IMAGE_POSITION = {
		{797,-2,0},
		{1000,-2,0},
		{840,35,-0.244},
		{674,-30,0},
		{610,-12,0},
		{870,-4,0},
		{945,-3,0},
		{903,-32,0},
	}
	RIGHT_CHAR_TEXT_POSITION = {
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

	NEXT_UPDATE_BLOCK = update_disclaimer_and_logos_scene_general
	NEXT_DRAW_BLOCK = draw_disclaimer_and_logos_scene_general
	NEXT_PRESET_ANIMATOR = preset_animator_disclaimer_and_logos_scene

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
	input_update()
	FPS = love.timer.getFPS()
    FRAMES_DRAWN = FRAMES_DRAWN + 1
	record_game_duration()
	current_update_block()
end
function love.draw()
	love.graphics.clear(7/255,19/255,31/255,1)
	input_sys_draw()
	love.graphics.print( "FRAMES_DRAWN", 0, 210)
    love.graphics.print( "FPS", 0, 225)
	love.graphics.print( "SCENE_TIMER", 0, 240)
	love.graphics.print( FRAMES_DRAWN, 110, 210)
    love.graphics.print( FPS, 110, 225)
	love.graphics.print( SCENE_TIMER, 110, 240)
	current_draw_block()
end