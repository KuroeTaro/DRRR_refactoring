local filesys_module = require "love.filesystem"
local image_module = require "love.image"
local compress_module = image_module.newCompressedData
local non_compress_module = love.image.newImageData
local image_data = {}
local image = nil

image_data["overdrive_airflow_sprite_batch"] = compress_module("asset/game_scene/VFX/overdrive_airflow.dds")
image_data["overdrive_partical_sprite_batch"] = compress_module("asset/game_scene/VFX/overdrive_partical.dds")

image_data["ver0_blast_sprite_batch"] = compress_module("asset/game_scene/VFX/hit_VFX/ver0_blast.dds")
image_data["counter_ver0_blast_sprite_batch"] = compress_module("asset/game_scene/VFX/hit_VFX/counter_ver0_blast.dds")

image_data["HUD_punish"] = non_compress_module("asset/game_scene/VFX/HUD_VFX/PUINISH_HUD_VFX.png")
image_data["HUD_counter_ver0_2"] = non_compress_module("asset/game_scene/VFX/HUD_VFX/counter_VFX/ver0_2.png")
image_data["HUD_counter_ver0_3"] = compress_module("asset/game_scene/VFX/HUD_VFX/counter_VFX/ver3.dds")

love.thread.getChannel( 'image_8' ):push( image_data )