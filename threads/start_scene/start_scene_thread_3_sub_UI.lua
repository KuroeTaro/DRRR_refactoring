require "love.filesystem"
require "love.image"
local image_data = {}

-- resolution text in config resolution sub UI only
image_data[1] = love.graphics.newCompressedData("asset/start_scene/config/1280_x_720.dds")
image_data[2] = love.graphics.newCompressedData("asset/start_scene/config/1600_x_900.dds")
image_data[3] = love.graphics.newCompressedData("asset/start_scene/config/1920_x_1080.dds")
image_data[4] = love.graphics.newCompressedData("asset/start_scene/config/2560_x_1440.dds")
image_data[5] = love.graphics.newCompressedData("asset/start_scene/config/3840_x_2160.dds")
image_data[6] = love.graphics.newCompressedData("asset/start_scene/config/select_res_text.dds")

-- audio text in config audio sub UI only
image_data[7] = love.graphics.newCompressedData("asset/start_scene/config/bar.dds")
image_data[8] = love.graphics.newCompressedData("asset/start_scene/config/audio_config_text.dds")

-- controller text in config controller sub UI only
image_data[9] = love.graphics.newCompressedData("asset/start_scene/config/controller_indi_text.dds")

-- global config menu sub UI text
image_data[10] = love.graphics.newCompressedData("asset/start_scene/config/configMenu.dds")

-- global config menu sub UI shape
image_data[11] = love.graphics.newCompressedData("asset/start_scene/config/bar_mark.dds")


-- record text in config record sub UI only
image_data[12] = love.graphics.newCompressedData("asset/start_scene/record/game_duration.dds")
for i = 13,22 do
    image_data[i] = love.graphics.newCompressedData("asset/start_scene/record/number/"..i..".dds")
end

love.thread.getChannel( 'image_3' ):push( image_data )