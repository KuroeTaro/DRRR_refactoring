function draw_char_select_scene_flash_in_0f_36f()
    love.graphics.setBlendMode("add")
    draw_2d_image_table(obj_UI_char_select_scene_movie_cover,image_table_UI_char_select_scene_movie_cover)
    draw_2d_image_table(obj_UI_char_select_scene_first_ring,image_table_UI_char_select_scene_first_ring)
    love.graphics.setBlendMode("alpha")
    draw_solid(obj_UI_char_select_scene_black_solid)

end

function draw_char_select_scene_flash_in_36f_40f()
    draw_solid(obj_UI_char_select_scene_white_solid)

end


