local filesys_module = require "love.filesystem"
local image_module = require "love.image"
local compress_module = image_module.newCompressedData
local image_data = {}

-- global use shape image
image_data[1] = image_module("asset/char_select_scene/bar_mark.dds")
image_data[2] = image_module("asset/char_select_scene/char_select_bg.dds")
image_data[3] = image_module("asset/char_select_scene/char_select_left_alpha.dds")
image_data[4] = image_module("asset/char_select_scene/char_select_right_alpha.dds")
image_data[5] = image_module("asset/char_select_scene/control_method_L.dds")
image_data[6] = image_module("asset/char_select_scene/control_method_R.dds")
image_data[7] = image_module("asset/char_select_scene/second_ring.dds")

-- char icon
image_data[8] = image_module("asset/char_select_scene/char_icon/icon_alpha/ERIKAWK3.dds")
image_data[9] = image_module("asset/char_select_scene/char_icon/icon_alpha/KTC.dds")
image_data[10] = image_module("asset/char_select_scene/char_icon/icon_alpha/ANRI.dds")
image_data[11] = image_module("asset/char_select_scene/char_icon/icon_alpha/IZY.dds")
image_data[12] = image_module("asset/char_select_scene/char_icon/icon_alpha/SZO.dds")
image_data[13] = image_module("asset/char_select_scene/char_icon/icon_alpha/CKG.dds")
image_data[14] = image_module("asset/char_select_scene/char_icon/icon_alpha/SHINRA.dds")
image_data[15] = image_module("asset/char_select_scene/char_icon/icon_alpha/SRT.dds")

image_data[16] = image_module("asset/char_select_scene/char_icon/icon_image/ERIKAWK3.dds")
image_data[17] = image_module("asset/char_select_scene/char_icon/icon_image/KTC.dds")
image_data[18] = image_module("asset/char_select_scene/char_icon/icon_image/ANRI.dds")
image_data[19] = image_module("asset/char_select_scene/char_icon/icon_image/IZY.dds")
image_data[20] = image_module("asset/char_select_scene/char_icon/icon_image/SZO.dds")
image_data[21] = image_module("asset/char_select_scene/char_icon/icon_image/CKG.dds")
image_data[22] = image_module("asset/char_select_scene/char_icon/icon_image/SHINRA.dds")
image_data[23] = image_module("asset/char_select_scene/char_icon/icon_image/SRT.dds")

-- char_name
for i = 1,8 do
    image_data[i+23] = image_module("asset/char_select_scene/char_name/"..(i-1)..".dds")
end

-- char_select
image_data[32] = image_module("asset/char_select_scene/char_select/ERIKAWK3.dds")
image_data[33] = image_module("asset/char_select_scene/char_select/KTC.dds")
image_data[34] = image_module("asset/char_select_scene/char_select/ANRI.dds")
image_data[35] = image_module("asset/char_select_scene/char_select/IZY.dds")
image_data[36] = image_module("asset/char_select_scene/char_select/SZO.dds")
image_data[37] = image_module("asset/char_select_scene/char_select/CKG.dds")
image_data[38] = image_module("asset/char_select_scene/char_select/SHINRA.dds")
image_data[39] = image_module("asset/char_select_scene/char_select/SRT.dds")

image_data[40] = image_module("asset/char_select_scene/char_select/ERIKAWK3_text_left.dds")
image_data[41] = image_module("asset/char_select_scene/char_select/KTC_text_left.dds")
image_data[42] = image_module("asset/char_select_scene/char_select/ANRI_text_left.dds")
image_data[43] = image_module("asset/char_select_scene/char_select/IZY_text.dds")
image_data[44] = image_module("asset/char_select_scene/char_select/SZO_text.dds")
image_data[45] = image_module("asset/char_select_scene/char_select/CKG_text_left.dds")
image_data[46] = image_module("asset/char_select_scene/char_select/SHINRA_text_left.dds")
image_data[47] = image_module("asset/char_select_scene/char_select/SRT_text_left.dds")
image_data[48] = image_module("asset/char_select_scene/char_select/ERIKAWK3_text_right.dds")
image_data[49] = image_module("asset/char_select_scene/char_select/KTC_text_right.dds")
image_data[51] = image_module("asset/char_select_scene/char_select/ANRI_text_right.dds")
image_data[52] = image_module("asset/char_select_scene/char_select/CKG_text_right.dds")
image_data[53] = image_module("asset/char_select_scene/char_select/SHINRA_text_right.dds")
image_data[54] = image_module("asset/char_select_scene/char_select/SRT_text_right.dds")

love.thread.getChannel( 'image_1' ):push( image_data )