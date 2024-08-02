require "love.filesystem"
require "love.image"
local image_data = {}
image_data[1] = love.image.newCompressedData("asset/disclaimer_and_logo_scene/disclaimer_text.dds")
image_data[2] = love.image.newCompressedData("asset/disclaimer_and_logo_scene/kuroe_taro_s_handicraft_logo.dds")
image_data[3] = love.image.newCompressedData("asset/disclaimer_and_logo_scene/love_framework_logo.dds")
love.thread.getChannel( 'image_1' ):push( image_data )