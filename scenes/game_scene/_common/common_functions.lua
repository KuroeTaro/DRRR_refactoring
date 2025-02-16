function common_game_scene_draw_shadow(lines,shadow_anchor,x,y,sx,sy)
    for i = 1, #lines do
        -- 计算阴影
        local line = lines[i]
        local shadowPolygon = 
        common_game_scene_calculate_shadow(
            line, 
            shadow_anchor,
            x,
            y,
            sx,
            sy
        )
        -- 绘制阴影
        love.graphics.polygon("fill", shadowPolygon)

    end
end

function common_game_scene_calculate_shadow(line, shadow_anchor, x, y, sx, sy)
    local shadow = {}

    local x1 = line[1]*sx + x
    local dx = x1 - shadow_anchor[1]
    local extendedX = x1 + dx * 50
    local y1 = line[2]*sy + y
    local dy = y1 - shadow_anchor[2]
    local extendedY = y1 + dy * 50

    table.insert(shadow, x1)
    table.insert(shadow, y1)
    table.insert(shadow, extendedX)
    table.insert(shadow, extendedY)

    local x2 = line[3]*sx + x
    dx = x2 - shadow_anchor[1]
    extendedX = x2 + dx * 1000
    local y2 = line[4]*sy + y
    dy = y2 - shadow_anchor[2]
    extendedY = y2 + dy * 1000

    table.insert(shadow, extendedX)
    table.insert(shadow, extendedY)
    table.insert(shadow, x2)
    table.insert(shadow, y2)

    return shadow

end