function load_asset_function_table()
    local i = 1
    while (i<=THREAD_AMOUNT)
    do
        if THREAD_ONCE_TABLE[i] == false then 
            local thread = love.thread.newThread(THREAD_TABLE[i])
            thread:start()
            THREAD_ONCE_TABLE[i] = true
        end
        i = i + 1
    end
    -- pop image data
    i = 1
    while (i<=THREAD_AMOUNT)
    do
        if ASSET_DATA_TABLE[i] == nil then 
            ASSET_DATA_TABLE[i] = love.thread.getChannel("image_"..i..""):pop()
        end
        i = i + 1
    end
    -- load asset data to variables
    i = 1
    while (i<=THREAD_AMOUNT)
    do
        if ASSET_DATA_TABLE[i] ~= nil and LOAD_ONCE_TABLE[i] == false then
            ORDER_LOAD_TABLE[i](CURRENT_ORDER_TABLE[i])
            CURRENT_ORDER_TABLE[i] = CURRENT_ORDER_TABLE[i] + 1
            if CURRENT_ORDER_TABLE[i] > ORDER_SIZE_TABLE[i] then 
                CURRENT_ORDER_TABLE[i] = 0
                LOAD_ONCE_TABLE[i] = true
                LOADING_FUNCTION_AMOUNT = LOADING_FUNCTION_AMOUNT -1
            end
        end
        i = i + 1
    end
end

function init_load_asset_function_table()
    THREAD_TABLE = {}
    THREAD_AMOUNT = 0
    THREAD_ONCE_TABLE = {}
    ASSET_DATA_TABLE = {}
    ORDER_LOAD_TABLE = {}
    CURRENT_ORDER_TABLE = {}
    ORDER_SIZE_TABLE = {}
	LOAD_ONCE_TABLE = {}
    LOADING_FUNCTION_AMOUNT = 0

	NEXT_UPDATE_BLOCK = nil
	NEXT_DRAW_BLOCK = nil
    NEXT_PRESET_ANIMATOR = nil
end