function state_machine_UI_char_select_scene_movie_cover_loop(obj)
    local speed = 2
    obj["FCT"][8] = obj["FCT"][8] + 1
    if obj["FCT"][8] > speed then
        obj[8] = obj[8] + 1
        obj["FCT"][8] = 0
    end
    if obj[8] > 9 then
        obj[8] = 0
    end
end

function state_machine_UI_char_select_scene_timer(obj)
    obj["time"][3] = obj["time"][3]-1
    if obj["time"][3] == -1 then 
        obj["time"][2] = obj["time"][2]-1
        obj["time"][3] = 60
    end
    if obj["time"][2] == -1 then 
        obj["time"][1] = obj["time"][1]-1
        obj["time"][2] = 9
    end
    if obj["time"][1] == -1 then 
        obj["time"][1] = 0
    end
end