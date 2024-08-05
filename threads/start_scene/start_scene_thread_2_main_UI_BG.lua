require "love.filesystem"
require "love.image"
local image_data = {}

-- BG loop image table
for i = 1,50 do
    image_data[i] = love.image.newCompressedData("asset/start_scene/BG_loop/"..(i-1)..".dds")
end

-- shutter to sub UI
image_data[51] = love.image.newCompressedData("asset/start_scene/main/shutter.dds")
love.thread.getChannel( 'image_2' ):push( image_data )