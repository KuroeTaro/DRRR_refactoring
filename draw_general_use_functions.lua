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

function draw_solid(object)
    local alpha = love.graphics.newCanvas(1600,900)
    local x = resolution_correction(0)
    local y = resolution_correction(0)
    local s = resolution_correction(1)
    local rgb = object["rgb"]
    
    love.graphics.setCanvas(alpha)
    love.graphics.polygon("fill", 0,0,1600,0,1600,900,0,900)
    love.graphics.setCanvas()

    love.graphics.setColor(rgb[1],rgb[2],rgb[3], object[4])
    love.graphics.draw(alpha,x,y,0,s,s)
    love.graphics.setColor(1, 1, 1, 1)
end