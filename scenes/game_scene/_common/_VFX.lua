function insert_VFX_game_scene_char_light_blast(obj_char,x,y)
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    obj["life"] = 8
    obj[1] = obj_char["x"] + obj_char[5]*(x)
    obj[2] = obj_char["y"] + obj_char[6]*(y)
    obj[3] = obj_char[3]
    obj[4] = 0.75
    obj[5] = obj_char[5]
    obj[6] = obj_char[6]
    obj[7] = obj_char[7]
    obj[8] = -1
    obj["FCT"] = {}
    obj["LCT"] = {}
    obj["LCD"] = {}
    obj["animation"] = {}
    obj["animation"][0] = 0
    obj["animation"][2] = 1
    obj["animation"][4] = 2
    obj["animation"][6] = 3
    obj["animation"]["prop"] = 8
    obj["animation"]["length"] = 6
    obj["animation"]["loop"] = false
    obj["animation"]["fix_type"] = true
    init_frame_anim_with(obj,obj["animation"])
    obj["update"] = function(self)
        -- self[1] = obj_char["x"] + obj_char[5]*(-860)/2
        -- self[2] = obj_char["y"] + obj_char[6]*(840)
        self[1] = obj_char["x"] + obj_char[5]*(x)
        self[2] = obj_char["y"] + obj_char[6]*(y)
        self[3] = obj_char[3]
        self[4] = 0.75
        self[5] = obj_char[5]
        self[6] = obj_char[6]
        self[7] = obj_char[7]
        frame_animator(self,self["animation"])
        if obj_char["state"] == "5P" or obj_char["state"] == "hitstop" then
            self["life"] = self["life"] - 1
        else
            self["life"] = 0
        end
    end
    obj["draw"] = function(self)
        local camera_obj = obj_stage_game_scene_camera
        local image_sprite_sheet = image_sprite_sheet_VFX_game_scene_light_blast
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
    
        love.graphics.setColor(0,0,0,obj[4])
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setColor(1,1,1,1)
    end
    table.insert(obj_char["VFX_front_character_table"],obj)
    
end