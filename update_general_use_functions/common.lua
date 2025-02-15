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