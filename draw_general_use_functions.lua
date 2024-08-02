function resolution_correction(length)
    local ratio = love.graphics.getWidth()/1600
    local result = length * ratio
    return result
end

function draw_2d_image(obejct,image)
    local x = resolution_correction(obejct[1])
    local y = resolution_correction(obejct[2])
    local sx = resolution_correction(obejct[5])
    local sy = resolution_correction(obejct[6])
    local r = obejct[7]
    love.graphics.setColor(1, 1, 1, obejct[4])
    love.graphics.draw(image,x,y,r,sx,sy)
    love.graphics.setColor(1, 1, 1, 1)
end 

function draw_2d_image_table(obejct,image_table)
    local x = resolution_correction(obejct[1])
    local y = resolution_correction(obejct[2])
    local sx = resolution_correction(obejct[5])
    local sy = resolution_correction(obejct[6])
    local r = obejct[7]
    local f = obejct[8]
    love.graphics.setColor(1, 1, 1, obejct[4])
    love.graphics.draw(image_table[f],x,y,r,sx,sy)
    love.graphics.setColor(1, 1, 1, 1)
end