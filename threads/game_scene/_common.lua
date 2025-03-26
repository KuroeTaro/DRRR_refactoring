local filesys_module = require "love.filesystem"
local image_module = require "love.image"
local compress_module = image_module.newCompressedData
local non_compress_module = love.image.newImageData
local image_data = {"place_holder"}

-- -- act_common
-- image_data["act_common"] = {}
-- for i = 1,51 do
--     image_data["act_common"][i] = compress_module("asset/game_scene/common/act_common/"..(i-1)..".dds")
-- end

-- for i = 91,105 do
--     image_data["act_common"][i] = compress_module("asset/game_scene/common/act_common/"..(i-1)..".dds")
-- end


-- image_data["act_1"] = {}
-- for i = 1,75 do
--     image_data["act_1"][i] = compress_module("asset/game_scene/common/act_1/"..(i-1)..".dds")
-- end
-- image_data["act_2"] = {}
-- for i = 1,75 do
--     image_data["act_2"][i] = compress_module("asset/game_scene/common/act_2/"..(i-1)..".dds")
-- end
-- image_data["act_3"] = {}
-- for i = 1,75 do
--     image_data["act_3"][i] = compress_module("asset/game_scene/common/act_3/"..(i-1)..".dds")
-- end
-- image_data["HUD_ease_in"] = {}
-- for i = 1,50 do
--     image_data["HUD_ease_in"][i] = compress_module("asset/game_scene/common/HUD_ease_in/"..(i-1)..".dds")
-- end
-- image_data["lets_dance"] = {}
-- for i = 1,40 do
--     image_data["lets_dance"][i] = compress_module("asset/game_scene/common/lets_dance/"..(i-1)..".dds")
-- end
-- image_data["HUD_background_gauge"] = compress_module("asset/game_scene/common/HUD/HUD_background_gauge.dds")

-- image_data["HUD_common_sprite_batch"] = non_compress_module("asset/game_scene/common/HUD/HUD_common.png")

love.thread.getChannel( 'image_1' ):push( image_data )