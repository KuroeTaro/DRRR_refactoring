local filesys_module = require "love.filesystem"
local image_module = require "love.image"
local compress_module = image_module.newCompressedData
local non_compress_module = love.image.newImageData
local image_data = {}

-- image_data["stand_idle"] = {}
-- for i = 1,17 do
--     image_data["stand_idle"][i] = compress_module("asset/game_scene/characters/IZY/stand_idle/"..(i-1)..".dds")
-- end

-- image_data["overdrive"] = {}
-- for i = 1,15 do
--     image_data["overdrive"][i] = compress_module("asset/game_scene/characters/IZY/overdrive/"..(i-1)..".dds")
-- end

-- image_data["overdrive_badge"] = {}
-- for i = 1,70 do
--     image_data["overdrive_badge"][i] = compress_module("asset/game_scene/VFX/overdrive_badge/IZY/"..(i-1)..".dds")
-- end

image_data["stand_idle_sprite_batch"] = compress_module("asset/game_scene/characters/IZY/_character/IZY_stand_idle.dds")


image_data["6_sprite_batch"] = compress_module("asset/game_scene/characters/IZY/_character/IZY_6.dds")
image_data["6_stop_sprite_batch"] = compress_module("asset/game_scene/characters/IZY/_character/IZY_6_stop.dds")
image_data["4_sprite_batch"] = compress_module("asset/game_scene/characters/IZY/_character/IZY_4.dds")
image_data["4_stop_sprite_batch"] = compress_module("asset/game_scene/characters/IZY/_character/IZY_4_stop.dds")
image_data["5_stop_sprite_batch"] = compress_module("asset/game_scene/characters/IZY/_character/IZY_5_stop.dds")


image_data["5P_sprite_batch"] = compress_module("asset/game_scene/characters/IZY/_character/IZY_5P.dds")
image_data["overdrive_sprite_batch"] = compress_module("asset/game_scene/characters/IZY/_character/IZY_overdrive.dds")


image_data["stand_hurt_high_sprite_batch"] = compress_module("asset/game_scene/characters/IZY/_character/IZY_stand_hurt_high.dds")


image_data["5P_whiff_VFX_sprite_batch"] = compress_module("asset/game_scene/VFX/whiff_VFX/IZY/5P.dds")
image_data["overdrive_badge_sprite_batch"] = compress_module("asset/game_scene/VFX/overdrive_badge/IZY_overdrive_badge.dds")

love.thread.getChannel( 'image_3' ):push( image_data )