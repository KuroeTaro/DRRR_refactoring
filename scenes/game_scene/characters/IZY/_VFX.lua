function insert_VFX_game_scene_char_IZY_5P_whiff(obj_char)
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    local image_sprite_sheet = nil
    local side = obj_char["player_side"]
    if side == "L" then
        image_sprite_sheet = image_sprite_sheet_VFX_game_scene_LP_5P_whiff
    elseif side == "R" then
        image_sprite_sheet = image_sprite_sheet_VFX_game_scene_RP_5P_whiff
    end 

    obj["life"] = 8
    obj[1] = obj_char["x"] + obj_char[5]*(-253)
    obj[2] = obj_char["y"] + obj_char[6]*(-462)
    obj[3] = obj_char[3]
    obj[4] = 1
    obj[5] = obj_char[5]
    obj[6] = obj_char[6]
    obj[7] = obj_char[7]
    obj[8] = -1
    obj["FCT"] = {0,0,0,0,0,0,0,0}
    obj["LCT"] = {0,0,0,0,0,0,0,0}
    obj["LCD"] = {0,0,0,0,0,0,0,0}
    obj["animation"] = {}
    obj["animation"][0] = 0
    obj["animation"][2] = 1
    obj["animation"][4] = 2
    obj["animation"]["prop"] = 8
    obj["animation"]["length"] = 6
    obj["animation"]["loop"] = false
    obj["animation"]["fix_type"] = true
    init_frame_anim_with(obj,obj["animation"])
    obj["update"] = function(self)
        -- self[1] = obj_char["x"] + obj_char[5]*(-860)/2
        -- self[2] = obj_char["y"] + obj_char[6]*(840)
        self[1] = obj_char["x"] + obj_char[5]*(-253)
        self[2] = obj_char["y"] + obj_char[6]*(-462)
        self[3] = obj_char[3]
        self[4] = 1
        self[5] = obj_char[5]
        self[6] = obj_char[6]
        self[7] = obj_char[7]
        if obj_char["state"] == "5P" then
            frame_animator(self,self["animation"])
            self["life"] = self["life"] - 1
        elseif obj_char["state"] == "hitstop" then
            -- do nothing
        else
            self["life"] = 0
        end
    end
    obj["draw"] = function(self)
        local obj_camera = obj_stage_game_scene_camera
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
    
        shader_game_scene_character_blur:send("radius", 3.0 / 1000.0) -- 模糊强度，基于画布分辨率
        shader_game_scene_character_blur:send("alpha", 0.5) -- 透明度

        love.graphics.setBlendMode("add")
        love.graphics.setShader(shader_game_scene_character_blur)
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setShader()
        love.graphics.setBlendMode("alpha")
    end
    table.insert(obj_char["VFX_front_table"],obj)

end