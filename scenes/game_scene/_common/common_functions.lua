function common_game_scene_draw_shadow(lines,obj,lines_loc,light)
    for i = 1, #lines do
        -- 计算阴影
        local line = lines[i]
        local shadowPolygon = 
        common_game_scene_calculate_shadow(
            line, 
            light,
            obj[1]+lines_loc[1],
            obj[2]+lines_loc[2]
        )

        -- 绘制阴影
        love.graphics.setColor(0.5, 0.5, 0.5, 1) -- 半透明黑色
        love.graphics.polygon("fill", shadowPolygon)

        -- 绘制光源
        love.graphics.setColor(1, 1, 0)
        love.graphics.circle("fill", light[1], light[2], 5)
    end

end

function common_game_scene_calculate_shadow(line, light, loc_x, loc_y)
    local shadow = {}

    local x1 = line[1] + loc_x
    local dx = x1 - light[1]
    local extendedX = x1 + dx * 50
    local y1 = line[2] + loc_y
    local dy = y1 - light[2]
    local extendedY = y1 + dy * 50

    table.insert(shadow, x1)
    table.insert(shadow, y1)
    table.insert(shadow, extendedX)
    table.insert(shadow, extendedY)

    local x2 = line[3] + loc_x
    dx = x2 - light[1]
    extendedX = x2 + dx * 1000
    local y2 = line[4] + loc_y
    dy = y2 - light[2]
    extendedY = y2 + dy * 1000

    table.insert(shadow, extendedX)
    table.insert(shadow, extendedY)
    table.insert(shadow, x2)
    table.insert(shadow, y2)

    return shadow

end