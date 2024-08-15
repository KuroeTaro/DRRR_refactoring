-- state machine 只在持续更新同一个object时使用
-- 格式参考input state machine

function state_machine_UI_start_scene_noise_BG_static_loop(obj)
    local speed = 4
    obj["FCT"][8] = obj["FCT"][8] + 1
    if obj["FCT"][8] > speed then
        obj[8] = obj[8] + 1
        obj["FCT"][8] = 0
    end
    if obj[8] > 49 then
        obj[8] = 0
    end
end