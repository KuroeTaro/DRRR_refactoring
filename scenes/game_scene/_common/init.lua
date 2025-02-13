function load_game_scene_common_obj()
    load_game_scene_obj_char_LP()
    load_game_scene_obj_char_RP()
    load_game_scene_stage()

end


function load_game_scene_common_anim()
    load_game_scene_anim_char_LP()
    load_game_scene_anim_char_RP()
    
end


function load_game_scene_common_audio()
    
end


function load_game_scene_common_shader()
    shader_game_scene_fractal_noise = love.graphics.newShader("shaders/game_fractal_noise.glsl")
    shader_game_scene_radial_blur = love.graphics.newShader("shaders/radial_blur.glsl")
    
    CANVAS = love.graphics.newCanvas(1600,900)
    CANVAS_RADIAL_BLUR = love.graphics.newCanvas(1600,900)
    CANVAS_ALPHA_COMP = love.graphics.newCanvas(1600,900)
    CANVAS_ALPHA_ONLY = love.graphics.newCanvas(1600,900)
    CANVAS_RES_RESIZE = love.graphics.newCanvas(1600,900)

end
