function load_game_scene_char(side)
    local local_obj = {0, 103, 0, 1, 1, 1, 0, 0}
    local_obj["width"] = 400
    local_obj["height"] = 500
    local_obj["FCT"] = {0,0,0,0,0,0,0}
    local_obj["LCT"] = {0,0,0,0,0,0,0}
    local_obj["LCD"] = {0,0,0,0,0,0,0}

    local_obj["health"] = 500
    local_obj["ability"] = 600.0
    local_obj["heat"] = 100.0
    local_obj["risk"] = 3000.0
    local_obj["overdrive"] = 3000.0
    
    local_obj["velocity"] = {0.0, 0.0}

    local_obj["state"] = "idle"
    local_obj["state_machine"] = state_machine_char_IZY

    local_obj["knife_state"] = "onhold"
    local_obj["knife_state_machine"] = state_machine_char_IZY

    local_obj["feet_shadow_maker"] = {}
    local_obj["feet_shadow_maker"][1] = {}
    local_obj["feet_shadow_maker"][2] = {}

    local_obj["body_shadow_maker"] = {}
    local_obj["body_shadow_maker"][1] = {}
    local_obj["body_shadow_maker"][2] = {}

    if side == 1 then
        local_obj[1] = -325
        local_obj[5] = -1
        local_obj["facing"] = "right"
        obj_char_game_scene_char_LP = local_obj

    else
        local_obj[1] = 325
        local_obj[5] = 1
        local_obj["facing"] = "left"
        obj_char_game_scene_char_RP = local_obj

    end

end

function load_game_scene_VFX_IZY()

end

function load_game_scene_obj_created_by_IZY()

end



function state_machine_char_IZY()

end

function state_machine_char_IZY_knife()

end

function state_machine_VFX_IZY_common()

end
