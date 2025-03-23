local filesys_module = require "love.filesystem"
local image_module = require "love.image"
local compress_module = image_module.newCompressedData
local non_compress_module = love.image.newImageData
local image_data = {}

image_data["stand_idle"] = {}
for i = 1,17 do
    image_data["stand_idle"][i] = compress_module("asset/game_scene/characters/IZY/stand_idle/"..(i-1)..".dds")
end

image_data["overdrive"] = {}
for i = 1,15 do
    image_data["overdrive"][i] = compress_module("asset/game_scene/characters/IZY/overdrive/"..(i-1)..".dds")
end

image_data["overdrive_badge"] = {}
for i = 1,70 do
    image_data["overdrive_badge"][i] = compress_module("asset/game_scene/VFX/overdrive_badge/IZY/"..(i-1)..".dds")
end

love.thread.getChannel( 'image_2' ):push( image_data )