function deep_copy(original)
    if type(original) ~= "table" then
        return original  -- 如果不是表格，直接返回
    end

    local copy = {}  -- 创建一个新表格
    for orig_key, orig_value in next, original, nil do
        copy[deep_copy(orig_key)] = deep_copy(orig_value)  -- 递归拷贝键和值
    end
    return copy
end

function print_table(tbl)
    for key, value in pairs(tbl) do
        if type(value) == "table" then
            print(key .. ":")
            print_table(value)  -- 递归打印子表
        else
            print(key .. " = " .. tostring(value))
        end
    end
end

function sprite_sheet_load(json_file, image)
    -- 读取 JSON 文件
    local file = love.filesystem.read(json_file)
    local data = JSON.decode(file)

    -- 加载纹理
    local sprite_batch = love.graphics.newSpriteBatch(image, 100, "dynamic", { "position", "color" })
    local frames = {}

    -- 遍历 JSON 数据，生成 Love2D 兼容的表
    -- for name, frame in pairs(data.frames) do
    --     frames[name] = love.graphics.newQuad(
    --         frame.frame.x, frame.frame.y, frame.frame.w, frame.frame.h,
    --         texture:getDimensions()
    --     )
    for name, frame in pairs(data.frames) do
        frames[name] = {
            frame.frame.x, frame.frame.y, frame.frame.w, frame.frame.h,
            image:getDimensions()
        }
    end

    return {
        sprite_batch = sprite_batch,
        frames = frames
    }

end