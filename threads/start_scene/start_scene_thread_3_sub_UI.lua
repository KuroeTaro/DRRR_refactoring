require "love.filesystem"
require "love.image"
local image_data = {}

-- resolution text in config resolution sub UI only
image_data[1] = love.image.newCompressedData("asset/start_scene/config/1280_x_720.dds")
image_data[2] = love.image.newCompressedData("asset/start_scene/config/1600_x_900.dds")
image_data[3] = love.image.newCompressedData("asset/start_scene/config/1920_x_1080.dds")
image_data[4] = love.image.newCompressedData("asset/start_scene/config/2560_x_1440.dds")
image_data[5] = love.image.newCompressedData("asset/start_scene/config/3840_x_2160.dds")
image_data[6] = love.image.newCompressedData("asset/start_scene/config/select_res_text.dds")

-- audio text in config audio sub UI only
image_data[7] = love.image.newCompressedData("asset/start_scene/config/bar.dds")
image_data[8] = love.image.newCompressedData("asset/start_scene/config/audio_config_text.dds")

-- controller text in config controller sub UI only
image_data[9] = love.image.newCompressedData("asset/start_scene/config/controller_indi_text.dds")

-- global config menu sub UI text
image_data[10] = love.image.newCompressedData("asset/start_scene/config/config_menu_text.dds")

-- global config menu sub UI shape
image_data[11] = love.image.newCompressedData("asset/start_scene/config/bar_mark.dds")


-- record text in config record sub UI only
image_data[12] = love.image.newCompressedData("asset/start_scene/record/game_duration_text.dds")
for i = 13,22 do
    image_data[i] = love.image.newCompressedData("asset/start_scene/record/number/"..(i-13)..".dds")
end

image_data[23] = love.image.newCompressedData("asset/start_scene/record/time_indi_barcode/A.dds")
image_data[24] = love.image.newCompressedData("asset/start_scene/record/time_indi_barcode/C.dds")
image_data[25] = love.image.newCompressedData("asset/start_scene/record/time_indi_barcode/H.dds")
image_data[26] = love.image.newCompressedData("asset/start_scene/record/time_indi_barcode/O.dds")
image_data[27] = love.image.newCompressedData("asset/start_scene/record/time_indi_barcode/P.dds")
image_data[28] = love.image.newCompressedData("asset/start_scene/record/time_indi_barcode/S.dds")
image_data[29] = love.image.newCompressedData("asset/start_scene/record/time_indi_barcode/slash.dds")
image_data[30] = love.image.newCompressedData("asset/start_scene/record/time_indi_barcode/Y.dds")

love.thread.getChannel( 'image_3' ):push( image_data )