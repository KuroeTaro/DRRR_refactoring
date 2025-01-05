function resolution_correction(length)
    local ratio = love.graphics.getWidth()/1600
    local result = length * ratio
    return result
end

function draw_2d_image(obj,image)
    local x = resolution_correction(obj[1])
    local y = resolution_correction(obj[2])
    local sx = resolution_correction(obj[5])
    local sy = resolution_correction(obj[6])
    local r = obj[7]
    local opacity = obj[4]
    if opacity ~= 0 then
        love.graphics.setColor(1, 1, 1, obj[4])
        love.graphics.draw(image,x,y,r,sx,sy)
        love.graphics.setColor(1, 1, 1, 1)
    end
end 

function draw_2d_image_table(obj,image_table)
    local x = resolution_correction(obj[1])
    local y = resolution_correction(obj[2])
    local sx = resolution_correction(obj[5])
    local sy = resolution_correction(obj[6])
    local r = obj[7]
    local f = obj[8]
    local opacity = obj[4]
    if opacity ~= 0 then
        love.graphics.setColor(1, 1, 1, obj[4])
        love.graphics.draw(image_table[f],x,y,r,sx,sy)
        love.graphics.setColor(1, 1, 1, 1)
    end
end

function draw_solid(object)
    local w = love.graphics.getWidth()
    local h = love.graphics.getHeight()
    local opacity = object[4]
    if opacity ~= 0 then
        love.graphics.setColor(object["rgb"][1],object["rgb"][2],object["rgb"][3], object[4])
        love.graphics.rectangle("fill", 0,0, w,h)
        love.graphics.setColor(1, 1, 1, 1)
    end
end