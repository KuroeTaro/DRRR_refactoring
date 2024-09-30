local filesys_module = require "love.filesystem"
local image_module = require "love.image"
local compress_module = image_module.newCompressedData
local image_data = {}

-- first ring
for i = 1,18 do
    image_data[i] = compress_module("asset/char_select_scene/first_ring/"..(i-1)..".dds")
end

love.thread.getChannel( 'image_2' ):push( image_data )