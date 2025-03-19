local filesys_module = require "love.filesystem"
local image_module = require "love.image"
local compress_module = image_module.newCompressedData
local non_compress_module = love.image.newImageData
local image_data = {}
local image = nil

image_data["HUD_ease_in"] = {}
for i = 1,50 do
    image_data["HUD_ease_in"][i] = compress_module("asset/game_scene/common/HUD_ease_in/"..(i-1)..".dds")
end
image_data["HUD_background_gauge"] = compress_module("asset/game_scene/common/HUD/HUD_background_gauge.dds")

image_data["HUD_common"] = non_compress_module("asset/game_scene/common/HUD/HUD_common.png")

love.thread.getChannel( 'image_6' ):push( image_data )