local filesys_module = require "love.filesystem"
local image_module = require "love.image"
local compress_module = image_module.newCompressedData
local non_compress_module = love.image.newImageData
local image_data = {}

-- global use shape image
image_data[1] = compress_module("asset/char_select_scene/bar_mark.dds")
-- image_data[2] = non_compress_module("asset/char_select_scene/char_select_bg.png")
image_data[2] = compress_module("asset/char_select_scene/char_select_left_alpha.dds")
image_data[3] = compress_module("asset/char_select_scene/char_select_right_alpha.dds")
image_data[4] = compress_module("asset/char_select_scene/control_method_L.dds")
image_data[5] = compress_module("asset/char_select_scene/control_method_R.dds")
image_data[6] = compress_module("asset/char_select_scene/ring.dds")

-- -- char icon
image_data[7] = compress_module("asset/char_select_scene/char_icon/icon_alpha/ERIKAWK3.dds")
image_data[8] = compress_module("asset/char_select_scene/char_icon/icon_alpha/KTC.dds")
image_data[9] = compress_module("asset/char_select_scene/char_icon/icon_alpha/ANRI.dds")
image_data[10] = compress_module("asset/char_select_scene/char_icon/icon_alpha/IZY.dds")
image_data[11] = compress_module("asset/char_select_scene/char_icon/icon_alpha/SZO.dds")
image_data[12] = compress_module("asset/char_select_scene/char_icon/icon_alpha/CKG.dds")
image_data[13] = compress_module("asset/char_select_scene/char_icon/icon_alpha/SHINRA.dds")
image_data[14] = compress_module("asset/char_select_scene/char_icon/icon_alpha/SRT.dds")

-- image_data[16] = compress_module("asset/char_select_scene/char_icon/icon_image/ERIKAWK3.dds")
-- image_data[17] = compress_module("asset/char_select_scene/char_icon/icon_image/KTC.dds")
-- image_data[18] = compress_module("asset/char_select_scene/char_icon/icon_image/ANRI.dds")
-- image_data[19] = compress_module("asset/char_select_scene/char_icon/icon_image/IZY.dds")
-- image_data[20] = compress_module("asset/char_select_scene/char_icon/icon_image/SZO.dds")
-- image_data[21] = compress_module("asset/char_select_scene/char_icon/icon_image/CKG.dds")
-- image_data[22] = compress_module("asset/char_select_scene/char_icon/icon_image/SHINRA.dds")
-- image_data[23] = compress_module("asset/char_select_scene/char_icon/icon_image/SRT.dds")

-- char_select
image_data[15] = compress_module("asset/char_select_scene/char_select/ERIKAWK3.dds")
image_data[16] = compress_module("asset/char_select_scene/char_select/KTC.dds")
image_data[17] = compress_module("asset/char_select_scene/char_select/ANRI.dds")
image_data[18] = compress_module("asset/char_select_scene/char_select/IZY.dds")
image_data[19] = compress_module("asset/char_select_scene/char_select/SZO.dds")
image_data[20] = compress_module("asset/char_select_scene/char_select/CKG.dds")
image_data[21] = compress_module("asset/char_select_scene/char_select/SHINRA.dds")
image_data[22] = compress_module("asset/char_select_scene/char_select/SRT.dds")

image_data[23] = compress_module("asset/char_select_scene/char_select/ERIKAWK3_text_left.dds")
image_data[24] = compress_module("asset/char_select_scene/char_select/KTC_text_left.dds")
image_data[25] = compress_module("asset/char_select_scene/char_select/ANRI_text_left.dds")
image_data[26] = compress_module("asset/char_select_scene/char_select/IZY_text.dds")
image_data[27] = compress_module("asset/char_select_scene/char_select/SZO_text.dds")
image_data[28] = compress_module("asset/char_select_scene/char_select/CKG_text_left.dds")
image_data[29] = compress_module("asset/char_select_scene/char_select/SHINRA_text_left.dds")
image_data[30] = compress_module("asset/char_select_scene/char_select/SRT_text_left.dds")

image_data[31] = compress_module("asset/char_select_scene/char_select/ERIKAWK3_text_right.dds")
image_data[32] = compress_module("asset/char_select_scene/char_select/KTC_text_right.dds")
image_data[33] = compress_module("asset/char_select_scene/char_select/ANRI_text_right.dds")
image_data[34] = compress_module("asset/char_select_scene/char_select/CKG_text_right.dds")
image_data[35] = compress_module("asset/char_select_scene/char_select/SHINRA_text_right.dds")
image_data[36] = compress_module("asset/char_select_scene/char_select/SRT_text_right.dds")

image_data[37] = compress_module("asset/char_select_scene/number/0.dds")
image_data[38] = compress_module("asset/char_select_scene/number/1.dds")
image_data[39] = compress_module("asset/char_select_scene/number/2.dds")
image_data[40] = compress_module("asset/char_select_scene/number/3.dds")
image_data[41] = compress_module("asset/char_select_scene/number/4.dds")
image_data[42] = compress_module("asset/char_select_scene/number/5.dds")
image_data[43] = compress_module("asset/char_select_scene/number/6.dds")
image_data[44] = compress_module("asset/char_select_scene/number/7.dds")
image_data[45] = compress_module("asset/char_select_scene/number/8.dds")
image_data[46] = compress_module("asset/char_select_scene/number/9.dds")

love.thread.getChannel( 'image_1' ):push( image_data )