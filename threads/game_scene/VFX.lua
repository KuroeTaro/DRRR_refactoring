local filesys_module = require "love.filesystem"
local image_module = require "love.image"
local compress_module = image_module.newCompressedData
local non_compress_module = love.image.newImageData
local image_data = {}
local image = nil

image_data["overdrive_airflow_sprite_batch"] = compress_module("asset/game_scene/VFX/overdrive_airflow.dds")
image_data["overdrive_partical_sprite_batch"] = compress_module("asset/game_scene/VFX/overdrive_partical.dds")

image_data["light_blast_sprite_batch"] = compress_module("asset/game_scene/VFX/hit_VFX/light_blast.dds")

love.thread.getChannel( 'image_8' ):push( image_data )