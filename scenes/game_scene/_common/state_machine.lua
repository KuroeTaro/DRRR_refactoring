function state_machine_automatic_player_game_scene(obj,length)
    local speed = 0
    if obj[8] >= length - 1 then
        return
    end
    obj["FCT"][8] = obj["FCT"][8] + 1
    if obj["FCT"][8] > speed then
        obj[8] = obj[8] + 1
        obj["FCT"][8] = 0
    end
end