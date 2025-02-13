function draw_resolution_correction(length)
    local ratio = love.graphics.getWidth()/1600
    local result = length * ratio
    return result
end

function draw_2d_image(obj,image)
    local x = draw_resolution_correction(obj[1])
    local y = draw_resolution_correction(obj[2])
    local sx = draw_resolution_correction(obj[5])
    local sy = draw_resolution_correction(obj[6])
    local r = obj[7]
    local opacity = obj[4]

    if opacity == 0 then
        return
    end

    love.graphics.setColor(1, 1, 1, obj[4])
    love.graphics.draw(image,x,y,r,sx,sy)
    love.graphics.setColor(1, 1, 1, 1)
end 

function draw_2d_image_table(obj,image_table)
    local x = draw_resolution_correction(obj[1])
    local y = draw_resolution_correction(obj[2])
    local sx = draw_resolution_correction(obj[5])
    local sy = draw_resolution_correction(obj[6])
    local r = obj[7]
    local f = obj[8]
    local opacity = obj[4]

    if opacity == 0 then
        return
    end

    love.graphics.setColor(1, 1, 1, obj[4])
    love.graphics.draw(image_table[f],x,y,r,sx,sy)
    love.graphics.setColor(1, 1, 1, 1)
end

function draw_solid(object)
    local w = love.graphics.getWidth()
    local h = love.graphics.getHeight()
    local opacity = object[4]

    if opacity == 0 then
        return
    end

    love.graphics.setColor(object["rgb"][1],object["rgb"][2],object["rgb"][3], object[4])
    love.graphics.rectangle("fill", 0,0, w,h)
    love.graphics.setColor(1, 1, 1, 1)
end

function draw_3d_image(camera,obj,image)
    -- x y z opacity sx sy r f
    local x = obj[1]
    local y = obj[2]
    local z = obj[3]
    local sx = obj[5]
    local sy = obj[6]
    local r = obj[7]
    local opacity = obj[4]

    local camera_x = camera[1]
    local camera_y = camera[2]
    local camera_z = camera[3]

    local scale = draw_resolution_correction(800)/(z-camera_z)

    local cood_res = {
        scale * (x - camera_x) + draw_resolution_correction(800), 
        scale * (y - camera_y) + draw_resolution_correction(450)
    }

    love.graphics.setColor(1, 1, 1, opacity)
    love.graphics.draw(image,cood_res[1],cood_res[2],r,sx*scale,sy*scale)
    love.graphics.setColor(1, 1, 1, 1)

end

function draw_3d_image_table(camera,obj,image_table)
    -- x y z opacity sx sy r f
    local x = obj[1]
    local y = obj[2]
    local z = obj[3]
    local sx = obj[5]
    local sy = obj[6]
    local r = obj[7]
    local f = obj[8]
    local opacity = obj[4]

    local camera_x = camera[1]
    local camera_y = camera[2]
    local camera_z = camera[3]

    local scale = draw_resolution_correction(800)/(z-camera_z)

    local cood_res = {
        scale * (x - camera_x) + draw_resolution_correction(800), 
        scale * (y - camera_y) + draw_resolution_correction(450)
    }

    love.graphics.setColor(1, 1, 1, opacity)
    love.graphics.draw(image_table[f],cood_res[1],cood_res[2],r,sx*scale,sy*scale)
    love.graphics.setColor(1, 1, 1, 1)

end