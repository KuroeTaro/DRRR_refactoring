require "love.filesystem"
require "love.image"
local image_data = {}

-- global use shape image
image_data = love.graphics.newCompressedData("asset/start_scene/scene_global/dabo_trig.dds")
image_data = love.graphics.newCompressedData("asset/start_scene/scene_global/type_in_mark.dds")

-- up console text image
image_data[0] = love.graphics.newCompressedData("asset/start_scene/console/up/single_person.dds")
image_data[1] = love.graphics.newCompressedData("asset/start_scene/console/up/local_two_player.dds")
image_data[2] = love.graphics.newCompressedData("asset/start_scene/console/up/adjustment_interface.dds")
image_data[3] = love.graphics.newCompressedData("asset/start_scene/console/up/game_duretion.dds")
image_data[4] = love.graphics.newCompressedData("asset/start_scene/console/up/close_this_game.dds")
image_data[5] = love.graphics.newCompressedData("asset/start_scene/console/up/update_controller.dds")

-- down console text image
image_data[0] = love.graphics.newCompressedData("asset/start_scene/console/Down/training_mode.dds")
image_data[1] = love.graphics.newCompressedData("asset/start_scene/console/Down/second_controller.dds")
image_data[2] = love.graphics.newCompressedData("asset/start_scene/console/Down/some_configuration.dds")
image_data[3] = love.graphics.newCompressedData("asset/start_scene/console/Down/time_management.dds")
image_data[4] = love.graphics.newCompressedData("asset/start_scene/console/Down/return_to_OS.dds")
image_data[5] = love.graphics.newCompressedData("asset/start_scene/console/Down/2P_mode_available.dds")
image_data[6] = love.graphics.newCompressedData("asset/start_scene/console/Down/only_one_controller.dds")
image_data[7] = love.graphics.newCompressedData("asset/start_scene/console/Down/two_or_more_controller.dds")

-- option text image
image_data[0] = love.graphics.newCompressedData("asset/start_scene/option/training.dds")
image_data[1] = love.graphics.newCompressedData("asset/start_scene/option/2P_matching.dds")
image_data[2] = love.graphics.newCompressedData("asset/start_scene/option/config.dds")
image_data[3] = love.graphics.newCompressedData("asset/start_scene/option/record.dds")
image_data[4] = love.graphics.newCompressedData("asset/start_scene/option/exit_to_OS.dds")

-- option breath tag
image_data = love.graphics.newCompressedData("asset/start_scene/option/breath_tag.dds")

-- main logo
image_data = love.graphics.newCompressedData("asset/start_scene/main_logo.dds")

love.thread.getChannel( 'image_1' ):push( image_data )