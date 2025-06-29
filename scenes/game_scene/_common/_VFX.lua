function insert_VFX_game_scene_char_overdrive_badge(obj_char)
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    local image_sprite_sheet = nil
    if obj_char["player_side"] == "L" then
        image_sprite_sheet = image_sprite_sheet_VFX_game_scene_LP_overdrive_badge
    elseif obj_char["player_side"] == "R" then
        image_sprite_sheet = image_sprite_sheet_VFX_game_scene_RP_overdrive_badge
    end 
    
    obj["life"] = 70
    obj[1] = obj_char["x"] - obj_char[5]*(500)
    obj[2] = obj_char["y"] - obj_char[6]*(865)
    obj[3] = obj_char[3]
    obj[4] = 1
    obj[5] = obj_char[5]*2
    obj[6] = obj_char[6]*2
    obj[7] = obj_char[7]
    obj[8] = -1
    obj["update"] = function(self)
        self[1] = obj_char["x"] - obj_char[5]*(500)
        self[2] = obj_char["y"] - obj_char[6]*(865)
        self[3] = obj_char[3]
        self[4] = 1
        self[5] = obj_char[5]*2
        self[6] = obj_char[6]*2
        self[7] = obj_char[7]
        self[8] = self[8] + 1
        self["life"] = self["life"] - 1
        if obj_char["state"] ~= "overdrive" then
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
    table.insert(obj_char["VFX_back_table"],obj)
end

function insert_VFX_game_scene_char_overdrive_airflow(obj_char)
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    obj["life"] = 35
    obj[1] = obj_char["x"] - obj_char[5]*(860)
    obj[2] = obj_char["y"] - obj_char[6]*(845)
    obj[3] = obj_char[3]
    obj[4] = 1
    obj[5] = obj_char[5]*2
    obj[6] = obj_char[6]*2
    obj[7] = obj_char[7]
    obj[8] = -1
    obj["update"] = function(self)
        -- self[1] = obj_char["x"] + obj_char[5]*(-860)/2
        -- self[2] = obj_char["y"] + obj_char[6]*(840)
        self[1] = obj_char["x"] - obj_char[5]*(860)
        self[2] = obj_char["y"] - obj_char[6]*(845)
        self[3] = obj_char[3]
        self[4] = 1
        self[5] = obj_char[5]*2
        self[6] = obj_char[6]*2
        self[7] = obj_char[7]
        self[8] = self[8] + 1
        self["life"] = self["life"] - 1
        if obj_char["state"] ~= "overdrive" then
            self["life"] = 0
        end
    end
    obj["draw"] = function(self)
        local obj_camera = obj_stage_game_scene_camera
        local image_sprite_sheet = image_sprite_sheet_VFX_game_scene_overdrive_airflow
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
    
        love.graphics.setBlendMode("add")
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setBlendMode("alpha")
    end
    table.insert(obj_char["VFX_back_table"],obj)
    
end

function insert_VFX_game_scene_char_overdrive_partical(obj_char)
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    local obj_camera = obj_stage_game_scene_camera
    if obj_char["player_side"] == "L" then
        obj["life"] = 80
        obj[1] = obj_camera[1] - 800
        obj[2] = obj_camera[2] - 450
        obj[3] = obj_camera[3] + 800
        obj[4] = 1
        obj[5] = 1
        obj[6] = 1
        obj[7] = 0
        obj[8] = 0
        obj["f"] = -1
    elseif obj_char["player_side"] == "R" then
        obj["life"] = 80
        obj[1] = obj_camera[1] + 800
        obj[2] = obj_camera[2] - 450
        obj[3] = obj_camera[3] + 800
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
        self["life"] = self["life"] - 1
        if obj_char["state"] ~= "overdrive" then
            self["life"] = 0
        end
    end
    obj["draw"] = function(self)
        local obj_camera = obj_stage_game_scene_camera
        local image_sprite_sheet = image_sprite_sheet_VFX_game_scene_overdrive_partical
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")
    
        love.graphics.setBlendMode("add")
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setBlendMode("alpha")
    end
    table.insert(obj_char["VFX_back_table"],obj)
end

function insert_VFX_game_scene_char_overdrive_black_overlay(obj_char)
    local obj = {0, 0, 0, 1, 0, 0, 0, 0}
    local obj_camera = obj_stage_game_scene_camera
    obj["FCT"] = {0,0,0,0,0,0,0,0}
    obj["LCT"] = {0,0,0,0,0,0,0,0}
    obj["LCD"] = {0,0,0,0,0,0,0,0}
    obj["life"] = 42
    obj[1] = obj_char["x"]
    obj[2] = obj_char["y"] - obj_char[6]*(360)
    obj[3] = obj_char[3]
    obj[4] = 1
    obj[5] = 0
    obj[6] = 0
    obj[7] = 0
    obj[8] = 0
    obj["cood_res"] = draw_3d_point_to_2D(obj_camera,obj_char)
    obj["state"] = "ease_in"
    obj["blur_shader"] = shader_game_scene_gaussian_blur
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
        self[1] = obj_char["x"]
        self[2] = obj_char["y"] - obj_char[6]*(300)
        self[3] = obj_char[3]
        self["cood_res"] = draw_3d_point_to_2D(obj_camera,self)

        local switch = {
            -- ease_in 之前的状态 如果达到第10帧则为下一个动画的第0帧 
            ["ease_in"] = function()
                point_linear_animator(self,self["size_anim"])
                point_linear_animator(self,self["opacity_ease_in_anim"])
                self["life"] = 42
                if obj_char["overdrive_timer"][1] + obj_char["overdrive_timer"][2] 
                + obj_char["overdrive_timer"][3] + obj_char["overdrive_timer"][4] == 0 
                and obj_char["state"] ~= "overdrive" then
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

        self["life"] = self["life"] - 1
    end
    obj["draw"] = function(self)
        local canvas = love.graphics.newCanvas(love.graphics.getWidth(), love.graphics.getHeight())
        love.graphics.setCanvas(canvas)
        love.graphics.setColor(0, 0, 0, self[4])
        love.graphics.circle( "fill", self["cood_res"][1], self["cood_res"][2], draw_resolution_correction(self[5]) )
        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.setCanvas()

        self["blur_shader"]:send("Directions", 16)
        self["blur_shader"]:send("Quality", 5)
        self["blur_shader"]:send("Size", 8)
        self["blur_shader"]:send("resolution", {love.graphics.getWidth(), love.graphics.getHeight()})
        love.graphics.setShader(self["blur_shader"])
        love.graphics.draw(canvas) -- 画到屏幕上
        love.graphics.setShader()

    end
    table.insert(obj_char["black_overlay_table"],obj)

end




-- blast slash directional ray_impact
function insert_VFX_game_scene_char_ver0_blast(obj_char,x,y,opacity,sx,sy,r)
    -- x y z opacity sx sy r f
    local obj = {0, 0, 0, 1, 1, 1, 0, 0}
    obj["life"] = 27
    obj[1] = obj_char["x"] + obj_char[5]*(x)
    obj[2] = obj_char["y"] + obj_char[6]*(y)
    obj[3] = obj_char[3]
    obj[4] = opacity
    obj[5] = obj_char[5]*sx
    obj[6] = obj_char[6]*sy
    obj[7] = r
    obj[8] = -1
    obj["FCT"] = {0,0,0,0,0,0,0,0}
    obj["LCT"] = {0,0,0,0,0,0,0,0}
    obj["LCD"] = {0,0,0,0,0,0,0,0}
    obj["animation"] = {}
    obj["animation"][0] = 0
    obj["animation"][11] = 1
    obj["animation"][15] = 2
    obj["animation"][19] = 3
    obj["animation"][23] = 4
    obj["animation"][27] = 4
    obj["animation"]["prop"] = 8
    obj["animation"]["length"] = 27
    obj["animation"]["loop"] = false
    obj["animation"]["fix_type"] = true
    init_frame_anim_with(obj,obj["animation"])
    obj["update"] = function(self)
        self[4] = opacity
        self[5] = obj_char[5]*sx
        self[6] = obj_char[6]*sy
        self[7] = r
        frame_animator(self,self["animation"])
        if obj_char["state"] == "5P" 
        or obj_char["state"] == "2P"
        or obj_char["state"] == "jP" 
        or obj_char["state"] == "hitstop" 
        -- or obj_char["state"] == "hurt" 
        -- or obj_char["state"] == "hurtstop" 
        then
            self["life"] = self["life"] - 1
        else
            self["life"] = 0
        end
    end
    obj["draw"] = function(self)
        local obj_camera = obj_stage_game_scene_camera
        local image_sprite_sheet = image_sprite_sheet_VFX_game_scene_ver0_blast
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")

        love.graphics.setBlendMode("add")
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setBlendMode("alpha")
    end
    table.insert(obj_char["VFX_front_table"],obj)
    
end

function insert_VFX_game_scene_char_counter_ver0_blast(obj_char,x,y,opacity,sx,sy,r)
    insert_VFX_game_scene_char_ver0_blast(obj_char,x+45,y+263,0.5,0.75,0.75,0)
    -- x y z opacity sx sy r f
    local obj = {0, 0, 0, 1, 0.9, 0.9, 0, 0}
    local sx = 1
    local sy = 1
    obj["life"] = 27
    obj[1] = obj_char["x"] + obj_char[5]*(x)
    obj[2] = obj_char["y"] + obj_char[6]*(y)
    obj[3] = obj_char[3]
    obj[4] = opacity
    obj[5] = obj_char[5]*sx
    obj[6] = obj_char[6]*sy
    obj[7] = r
    obj[8] = -1
    obj["FCT"] = {0,0,0,0,0,0,0,0}
    obj["LCT"] = {0,0,0,0,0,0,0,0}
    obj["LCD"] = {0,0,0,0,0,0,0,0}
    obj["animation"] = {}
    obj["animation"][0] = 0
    obj["animation"][2] = 1
    obj["animation"][4] = 2
    obj["animation"][6] = 3
    obj["animation"][8] = 4
    obj["animation"][10] = 5
    obj["animation"][11] = 6
    obj["animation"][12] = 7
    obj["animation"][13] = 8
    obj["animation"][14] = 9
    obj["animation"][16] = 10
    obj["animation"][18] = 11
    obj["animation"][21] = 12
    obj["animation"]["prop"] = 8
    obj["animation"]["length"] = 27
    obj["animation"]["loop"] = false
    obj["animation"]["fix_type"] = true
    init_frame_anim_with(obj,obj["animation"])
    obj["update"] = function(self)
        self[4] = opacity
        self[5] = obj_char[5]*sx
        self[6] = obj_char[6]*sy
        self[7] = r
        frame_animator(self,self["animation"])
        if obj_char["state"] == "5P" 
        or obj_char["state"] == "2P"
        or obj_char["state"] == "jP" 
        or obj_char["state"] == "hitstop"
        -- or obj_char["state"] == "hurt" 
        -- or obj_char["state"] == "hurtstop" 
        then
            self["life"] = self["life"] - 1
        else
            self["life"] = 0
        end
    end
    obj["draw"] = function(self)
        local obj_camera = obj_stage_game_scene_camera
        local image_sprite_sheet = image_sprite_sheet_VFX_game_scene_counter_ver0_blast
        image_sprite_sheet["sprite_batch"]:clear()
        draw_3d_image_sprite_batch(obj_camera,self,image_sprite_sheet,""..self[8].."")

        love.graphics.setBlendMode("add")
        love.graphics.draw(image_sprite_sheet["sprite_batch"])
        love.graphics.setBlendMode("alpha")
    end
    table.insert(obj_char["VFX_front_table"],obj)
end






function insert_VFX_HUD_game_scene_counter_ver0_2(obj_char)
    local side = obj_char["player_side"]
    local obj = {0, 0, 0, 0, 1, 1, 0, 0}
    obj["LCT"] = {0,0,0,0,0,0,0,0}
    obj["LCD"] = {0,0,0,0,0,0,0,0}
    obj["image"] = image_VFX_HUD_game_scene_counter_ver0_2
    obj["life"] = 50
    if side == "L" then
        obj[1] = 178
    elseif side == "R" then
        obj[1] = 1319
    end
    obj[2] = 36

-- y_anim
    obj["y_anim"] = {}
    obj["y_anim"][0] = {36.00, 1}
    obj["y_anim"][1] = {38.00, 2}
    obj["y_anim"][2] = {34.00, 3}
    obj["y_anim"][3] = {37.00, 5}
    obj["y_anim"][5] = {36.00, 35}
    obj["y_anim"][35] = {36.00, 40}
    obj["y_anim"][40] = {36.07, 45}
    obj["y_anim"][45] = {36.45, 47}
    obj["y_anim"][47] = {36.85, 49}
    obj["y_anim"][49] = {37.87, 50}
    obj["y_anim"][50] = {40.00, 50}
    obj["y_anim"]["prop"] = 2
    obj["y_anim"]["length"] = 50
    obj["y_anim"]["loop"] = false
    obj["y_anim"]["fix_type"] = true

-- opacity_anim
    obj["opacity_anim"] = {}
    obj["opacity_anim"] = {}
    obj["opacity_anim"][0] = {0.00, 1}
    obj["opacity_anim"][1] = {0.87, 2}
    obj["opacity_anim"][2] = {1.00, 5}
    obj["opacity_anim"][5] = {1.00, 15}
    obj["opacity_anim"][15] = {0.99, 25}
    obj["opacity_anim"][25] = {0.95, 35}
    obj["opacity_anim"][35] = {0.84, 40}
    obj["opacity_anim"][40] = {0.75, 45}
    obj["opacity_anim"][45] = {0.57, 47}
    obj["opacity_anim"][47] = {0.45, 49}
    obj["opacity_anim"][49] = {0.25, 50}
    obj["opacity_anim"][50] = {0.00, 50}
    obj["opacity_anim"]["prop"] = 4
    obj["opacity_anim"]["length"] = 50
    obj["opacity_anim"]["loop"] = false
    obj["opacity_anim"]["fix_type"] = true

-- update
    obj["update"] = function(self)
        point_linear_animator(obj,obj["y_anim"])
        point_linear_animator(obj,obj["opacity_anim"])
        self["life"] = self["life"] - 1
    end
    obj["draw"] = function(self)
        draw_2d_image(self,self["image"])
    end
    table.insert(obj_char["VFX_HUD_table"],obj)
end

function insert_VFX_HUD_game_scene_counter_ver3(obj_char)
    -- x y z opacity sx sy r f
    local obj = {0, 0, 0, 0, 1, 1, 0, 0}
    obj["x"] = 800
    obj["y"] = 600
    obj["LCT"] = {0,0,0,0,0,0,0,0}
    obj["LCD"] = {0,0,0,0,0,0,0,0}
    obj["LCT"]["y"] = 0
    obj["LCD"]["y"] = 0
    obj["image"] = image_VFX_HUD_game_scene_counter_ver3
    obj["life"] = 40
    obj[1] = obj["x"] - obj[5]*(600)
    obj[2] = obj["y"] - obj[6]*(200)

-- sx_anim
    obj["sx_anim"] = {}
    obj["sx_anim"][0] = {1.000, 1}
    obj["sx_anim"][1] = {1.134, 2}
    obj["sx_anim"][2] = {1.176, 3}
    obj["sx_anim"][3] = {1.199, 4}
    obj["sx_anim"][4] = {1.213, 5}
    obj["sx_anim"][5] = {1.220, 7}
    obj["sx_anim"][7] = {1.228, 9}
    obj["sx_anim"][9] = {1.234, 10}
    obj["sx_anim"][10] = {1.236, 12}
    obj["sx_anim"][12] = {1.240, 14}
    obj["sx_anim"][14] = {1.245, 16}
    obj["sx_anim"][16] = {1.246, 18}
    obj["sx_anim"][18] = {1.247, 20}
    obj["sx_anim"][20] = {1.248, 25}
    obj["sx_anim"][25] = {1.249, 30}
    obj["sx_anim"][30] = {1.250, 32}
    obj["sx_anim"][32] = {1.251, 33}
    obj["sx_anim"][33] = {1.252, 34}
    obj["sx_anim"][34] = {1.253, 35}
    obj["sx_anim"][35] = {1.256, 36}
    obj["sx_anim"][36] = {1.258, 37}
    obj["sx_anim"][37] = {1.263, 38}
    obj["sx_anim"][38] = {1.270, 39}
    obj["sx_anim"][39] = {1.281, 40}
    obj["sx_anim"][40] = {1.300, 40}
    obj["sx_anim"]["prop"] = 5
    obj["sx_anim"]["length"] = 40
    obj["sx_anim"]["loop"] = false
    obj["sx_anim"]["fix_type"] = true

-- y_anim
    obj["y_anim"] = {}
    obj["y_anim"][0] = {600.00, 1}
    obj["y_anim"][1] = {584.41, 2}
    obj["y_anim"][2] = {575.88, 3}
    obj["y_anim"][3] = {571.29, 4}
    obj["y_anim"][4] = {568.60, 5}
    obj["y_anim"][5] = {567.10, 7}
    obj["y_anim"][7] = {565.20, 9}
    obj["y_anim"][9] = {563.69, 11}
    obj["y_anim"][11] = {562.51, 14}
    obj["y_anim"][14] = {561.24, 16}
    obj["y_anim"][16] = {560.69, 20}
    obj["y_anim"][20] = {560.00, 30}
    obj["y_anim"][30] = {560.00, 40}
    obj["y_anim"][40] = {560.00, 40}
    obj["y_anim"]["prop"] = "y"
    obj["y_anim"]["length"] = 40
    obj["y_anim"]["loop"] = false
    obj["y_anim"]["fix_type"] = true

-- opacity_anim
    obj["opacity_anim"] = {}
    obj["opacity_anim"][0] = {0.00, 1}
    obj["opacity_anim"][1] = {0.58, 2}
    obj["opacity_anim"][2] = {0.70, 3}
    obj["opacity_anim"][3] = {0.77, 4}
    obj["opacity_anim"][4] = {0.82, 5}
    obj["opacity_anim"][5] = {0.85, 6}
    obj["opacity_anim"][6] = {0.88, 7}
    obj["opacity_anim"][7] = {0.90, 9}
    obj["opacity_anim"][9] = {0.93, 11}
    obj["opacity_anim"][11] = {0.95, 13}
    obj["opacity_anim"][13] = {0.97, 15}
    obj["opacity_anim"][15] = {0.98, 20}
    obj["opacity_anim"][20] = {0.99, 30}
    obj["opacity_anim"][30] = {1.00, 31}
    obj["opacity_anim"][31] = {1.00, 32}
    obj["opacity_anim"][32] = {0.99, 33}
    obj["opacity_anim"][33] = {0.96, 34}
    obj["opacity_anim"][34] = {0.93, 35}
    obj["opacity_anim"][35] = {0.89, 36}
    obj["opacity_anim"][36] = {0.82, 37}
    obj["opacity_anim"][37] = {0.73, 38}
    obj["opacity_anim"][38] = {0.60, 39}
    obj["opacity_anim"][39] = {0.38, 40}
    obj["opacity_anim"][40] = {0.00, 40}
    obj["opacity_anim"]["prop"] = 4
    obj["opacity_anim"]["length"] = 40
    obj["opacity_anim"]["loop"] = false
    obj["opacity_anim"]["fix_type"] = true

-- update

    obj["update"] = function(self)
        point_linear_animator(obj,obj["sx_anim"])
        point_linear_animator(obj,obj["y_anim"])
        point_linear_animator(obj,obj["opacity_anim"])
        self[1] = self["x"] - self[5]*(600)
        self[2] = self["y"] - self[6]*(200)
        self["life"] = self["life"] - 1
        if(obj_char["state"] == "hurt" 
        or obj_char["state"] == "hurtstop")
        and obj_char["player_side"] == "R"
        then
            self["life"] = 0
        end
    end
    obj["draw"] = function(self)
        love.graphics.setBlendMode("add")
        draw_2d_image(self,self["image"])
        love.graphics.setBlendMode("alpha")
    end
    table.insert(obj_char["VFX_HUD_table"],obj)
end