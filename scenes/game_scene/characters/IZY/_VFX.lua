function insert_VFX_game_scene_char_overdrive_badge(char_obj,side)
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    if side == "L" then
        image_sprite_sheet = image_sprite_sheet_VFX_game_scene_LP_overdrive_badge
    elseif side == "R" then
        image_sprite_sheet = image_sprite_sheet_VFX_game_scene_RP_overdrive_badge
    end 
    
    obj["life"] = 70
    obj[1] = char_obj["x"] - char_obj[5]*(500)
    obj[2] = char_obj["y"] - char_obj[6]*(865)
    obj[3] = char_obj[3]
    obj[4] = 1
    obj[5] = char_obj[5]*2
    obj[6] = char_obj[6]*2
    obj[7] = char_obj[7]
    obj[8] = -1
    obj["update"] = function(self)
        self[1] = char_obj["x"] - char_obj[5]*(500)
        self[2] = char_obj["y"] - char_obj[6]*(865)
        self[3] = char_obj[3]
        self[4] = 1
        self[5] = char_obj[5]*2
        self[6] = char_obj[6]*2
        self[7] = char_obj[7]
        self[8] = self[8] + 1
        if char_obj["state"] ~= "overdrive" then
            self["life"] = 0
        end
    end
    obj["draw"] = function(self)
        local camera = obj_stage_game_scene_camera
        local f = self[8]

        love.graphics.setBlendMode("add")
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(camera,self,image_sprite_sheet,""..f.."")
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setBlendMode("alpha")
    end
    table.insert(char_obj["VFX_table"],obj)
end

function insert_VFX_game_scene_char_overdrive_airflow(char_obj)
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    obj["life"] = 35
    obj[1] = char_obj["x"] - char_obj[5]*(860)
    obj[2] = char_obj["y"] - char_obj[6]*(845)
    obj[3] = char_obj[3]
    obj[4] = 1
    obj[5] = char_obj[5]*2
    obj[6] = char_obj[6]*2
    obj[7] = char_obj[7]
    obj[8] = -1
    obj["update"] = function(self)
        -- self[1] = char_obj["x"] + char_obj[5]*(-860)/2
        -- self[2] = char_obj["y"] + char_obj[6]*(840)
        self[1] = char_obj["x"] - char_obj[5]*(860)
        self[2] = char_obj["y"] - char_obj[6]*(845)
        self[3] = char_obj[3]
        self[4] = 1
        self[5] = char_obj[5]*2
        self[6] = char_obj[6]*2
        self[7] = char_obj[7]
        self[8] = self[8] + 1
        if char_obj["state"] ~= "overdrive" then
            self["life"] = 0
        end
    end
    obj["draw"] = function(self)
        local camera_obj = obj_stage_game_scene_camera
        local image_sprite_sheet = image_sprite_sheet_VFX_game_scene_overdrive_airflow
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
    
        love.graphics.setBlendMode("add")
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setBlendMode("alpha")
    end
    table.insert(char_obj["VFX_table"],obj)
    
end

function insert_VFX_game_scene_char_overdrive_partical(char_obj)
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    local camera_obj = obj_stage_game_scene_camera
    if char_obj["player_side"] == "L" then
        obj["life"] = 80
        obj[1] = camera_obj[1] - 800
        obj[2] = camera_obj[2] - 450
        obj[3] = camera_obj[3] + 800
        obj[4] = 1
        obj[5] = 1
        obj[6] = 1
        obj[7] = 0
        obj[8] = 0
        obj["f"] = -1
    elseif char_obj["player_side"] == "R" then
        obj["life"] = 80
        obj[1] = camera_obj[1] + 800
        obj[2] = camera_obj[2] - 450
        obj[3] = camera_obj[3] + 800
        obj[4] = 1
        obj[5] = -1
        obj[6] = 1
        obj[7] = 0
        obj[8] = 0
        obj["f"] = -1
    end
    obj["update"] = function(self)
        self["f"] = self["f"] + 1
        if self["f"] >= 1 then
            self[8] = self[8] + 1
            self["f"] = -1
        end
        if char_obj["state"] ~= "overdrive" then
            self["life"] = 0
        end
    end
    obj["draw"] = function(self)
        local camera_obj = obj_stage_game_scene_camera
        local image_sprite_sheet = image_sprite_sheet_VFX_game_scene_overdrive_partical
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(camera_obj,self,image_sprite_sheet,""..self[8].."")
    
        love.graphics.setBlendMode("add")
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setBlendMode("alpha")
    end
    table.insert(char_obj["VFX_table"],obj)
end

function insert_VFX_game_scene_char_overdrive_black_overlay(char_obj)
    local obj = {0, 0, 0, 1, 0, 0, 0, 0}
    local camera_obj = obj_stage_game_scene_camera
    obj["FCT"] = {0,0,0,0,0,0,0,0}
    obj["LCT"] = {0,0,0,0,0,0,0,0}
    obj["LCD"] = {0,0,0,0,0,0,0,0}
    obj["life"] = 42
    obj[1] = char_obj["x"]
    obj[2] = char_obj["y"] - char_obj[6]*(360)
    obj[3] = char_obj[3]
    obj[4] = 1
    obj[5] = 0
    obj[6] = 0
    obj[7] = 0
    obj[8] = 0
    obj["cood_res"] = draw_3d_point_to_2D(camera_obj,char_obj)
    obj["state"] = "ease_in"
    obj["blur_shader"] = love.graphics.newShader("shaders/gaussian_blur.glsl")
    obj["blur_shader"]:send("Directions", 16)
    obj["blur_shader"]:send("Quality", 5)
    obj["blur_shader"]:send("Size", 8)
    obj["blur_shader"]:send("resolution", {love.graphics.getWidth(), love.graphics.getHeight()})

    
    obj["opacity_ease_in_anim"] = {}
    obj["opacity_ease_in_anim"][0] = {0.00, 1}
    obj["opacity_ease_in_anim"][1] = {0.02, 3}
    obj["opacity_ease_in_anim"][3] = {0.04, 7}
    obj["opacity_ease_in_anim"][7] = {0.7, 14}
    obj["opacity_ease_in_anim"][14] = {0.9, 18}
    obj["opacity_ease_in_anim"][18] = {0.10, 28}
    obj["opacity_ease_in_anim"][28] = {0.11, 29}
    obj["opacity_ease_in_anim"][29] = {0.18, 30}
    obj["opacity_ease_in_anim"][30] = {0.22, 31}
    obj["opacity_ease_in_anim"][31] = {0.24, 33}
    obj["opacity_ease_in_anim"][33] = {0.25, 33}
    obj["opacity_ease_in_anim"]["prop"] = 4
    obj["opacity_ease_in_anim"]["length"] = 33
    obj["opacity_ease_in_anim"]["loop"] = false
    obj["opacity_ease_in_anim"]["fix_type"] = true

    obj["opacity_ease_out_anim"] = {}
    obj["opacity_ease_out_anim"][0] = {0.25, 10}
    obj["opacity_ease_out_anim"][10] = {0.00, 10}
    obj["opacity_ease_out_anim"]["prop"] = 4
    obj["opacity_ease_out_anim"]["length"] = 10
    obj["opacity_ease_out_anim"]["loop"] = false
    obj["opacity_ease_out_anim"]["fix_type"] = true

    obj["size_anim"] = {}
    obj["size_anim"][0] = {200, 28}
    obj["size_anim"][28] = {800, 33}
    obj["size_anim"][33] = {2600, 33} 
    obj["size_anim"]["prop"] = 5
    obj["size_anim"]["length"] = 33
    obj["size_anim"]["loop"] = false
    obj["size_anim"]["fix_type"] = true

    obj["update"] = function(self)
        self[1] = char_obj["x"]
        self[2] = char_obj["y"] - char_obj[6]*(300)
        self[3] = char_obj[3]
        self["cood_res"] = draw_3d_point_to_2D(camera_obj,self)

        local switch = {
            -- ease_in 之前的状态 如果达到第10帧则为下一个动画的第0帧 
            ["ease_in"] = function()
                point_linear_animator(self,self["size_anim"])
                point_linear_animator(self,self["opacity_ease_in_anim"])
                self["life"] = 42
                if char_obj["overdrive_timer"][1] + char_obj["overdrive_timer"][2] 
                + char_obj["overdrive_timer"][3] + char_obj["overdrive_timer"][4] == 0 
                and char_obj["state"] ~= "overdrive" then
                    self["state"] = "ease_out"
                    self["life"] = 10
                    self[4] = 0.50
                    init_point_linear_anim_with(self,self["opacity_ease_out_anim"])
                end
            end,
            ["ease_out"] = function()
                point_linear_animator(self,self["opacity_ease_out_anim"])
                if get_point_linear_anim_end_state(self,self["opacity_ease_out_anim"]) then
                    self["life"] = 0
                end
            end,
        }
        local this_function = switch[self["state"]]
        if this_function then this_function() end

    end
    obj["draw"] = function(self)
        local canvas = love.graphics.newCanvas(love.graphics.getWidth(), love.graphics.getHeight())
        love.graphics.setCanvas(canvas)
        love.graphics.setColor(0, 0, 0, self[4])
        love.graphics.circle( "fill", self["cood_res"][1], self["cood_res"][2], draw_resolution_correction(self[5]) )
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.setCanvas()

        love.graphics.setShader(self["blur_shader"])
        love.graphics.draw(canvas) -- 画到屏幕上
        love.graphics.setShader()

    end
    table.insert(char_obj["black_overlay_table"],obj)

end