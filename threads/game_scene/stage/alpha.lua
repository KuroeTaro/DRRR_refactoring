local filesys_module = require "love.filesystem"
local image_module = require "love.image"
local compress_module = image_module.newCompressedData
local non_compress_module = love.image.newImageData
local image_data = {}

-- act_#
for i = 1,105 do
    image_data[i] = compress_module("asset/game_scene/common/act_#/"..(i-1)..".dds")
end
love.thread.getChannel( 'image_3' ):push( image_data )