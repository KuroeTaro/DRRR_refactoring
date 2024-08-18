function input_load()
    current_command = {}
    command_state = {}
    
    current_command[1] = {}
    command_state[1] = {}
    current_command[2] = {}
    command_state[2] = {}

    joystick_list = {}

    controller_state = {0,0,0,0}

    joystick_list = love.joystick.getJoysticks()

    --加载手柄按键 键盘按键 手柄z轴 对于指令的表
    command_list = {
        "Up","Down","Left","Right",
        "A","B","C","D",
        "SSP","SP","back","start",
        "RC","Dash"}
    
    buttom_list = {
        "dpup","dpdown","dpleft","dpright",
        "x","y","b","a",
        "leftshoulder","rightshoulder","back","start"}
        
    axis_list = {"triggerleft","triggerright"}

    key_list = {
        "w","s","a","d",
        "j","i","l","k",
        "lshift","space","escape","return",
        "q","e"}
    
    for i=1,14 do
        command_state[1][command_list[i]] = "Released"
        command_state[2][command_list[i]] = "Released"
    end

    --初始化现指令数组
    for i = 1,14 do
        current_command[1][command_list[i]] = 0
        current_command[2][command_list[i]] = 0
    end
end

function input_update()
    --加载手柄
    update_controller()

    --获得所有指令的现在布尔值和上一帧布尔值
    --并且赋值到current_command和perCommand
    if CURRENT_SCENE == "online_match_stage" then
        if joystick_list[1] == nil then 
            get_current_command(
                current_command[NETWORK_MATCH_SIDE],
                joystick_list[NETWORK_MATCH_SIDE]
            )
        else 
            get_current_command(
                current_command[NETWORK_MATCH_SIDE],
                joystick_list[NETWORK_MATCH_SIDE]
            )
        end

        -- current_command[OTHER_SIDE] 从网络接口获取

    else
        if joystick_list[1] == nil then 
            get_current_command(current_command[1],joystick_list[1])
            for i = 1,14 do
                current_command[2][command_list[i]] = 0
            end
        else 
            get_current_command(current_command[1],joystick_list[1])
            get_current_command(current_command[2],joystick_list[2])
        end
    end

    --输入状态机
    input_state_machine(command_state[1],current_command[1])
    input_state_machine(command_state[2],current_command[2])
end

--将手柄按键的值转化为指令表内的数值
function joystick_buttom_command(js,buttom_name)
    if js ~= nil then
        result = js:isGamepadDown(buttom_name)
    else result = false end 
    return result 
end 

--将手柄扳机的值转化为指令表内的数值
function joystick_axis_command(js,axis_name)
    if js ~= nil then 
        result = js:getGamepadAxis(axis_name)
    else result = 0.0 end
    return result
end 

--加载手柄
function update_controller()
    joystick_list = love.joystick.getJoysticks()
    
    controller_state[2] = controller_state[0]
    controller_state[3] = controller_state[1]

    if joystick_list[1] == nil then 
        controller_state[0] = 0
    else 
        controller_state[0] = 1
    end 

    if joystick_list[2] == nil then 
        controller_state[1] = 0
    else 
        controller_state[1] = 1
    end 
end

--获得所有指令的现在布尔值和上一帧布尔值（键盘）
function get_current_command(current_command,joystick)
    --(键盘)
    if joystick == nil then
        for i = 1,14 do
            if love.keyboard.isDown(key_list[i]) then
                current_command[command_list[i]] = 1
            else current_command[command_list[i]] = 0
            end
        end
    else
        for i = 1,12 do
            if joystick_buttom_command(joystick,buttom_list[i]) then
                current_command[command_list[i]] = 1
            else current_command[command_list[i]] = 0
            end
        end

        for i = 1,2 do
            if joystick_axis_command(joystick,axis_list[i]) > 0.2 then
                current_command[command_list[i+12]] = 1
            else current_command[command_list[i+12]] = 0
            end
        end
    end
end

--输入状态机
function input_state_machine(command_state,current_command)
    for i=1,14 do
        local switch = 
        {
            ["Released"] = function()
                if current_command[command_list[i]] == 1 then 
                    command_state[command_list[i]] = "Pressing"
                end
            end,
            ["Releasing"] = function()
                if current_command[command_list[i]] == 1 then 
                    command_state[command_list[i]] = "Pressing"
                else
                    command_state[command_list[i]] = "Released"
                end
            end,
            ["Pressing"] = function()
                if current_command[command_list[i]] == 1 then 
                    command_state[command_list[i]] = "Holding"
                else
                    command_state[command_list[i]] = "Releasing"
                end
            end,
            ["Holding"] = function()
                if current_command[command_list[i]] == 0 then 
                    command_state[command_list[i]] = "Releasing"
                end
            end
        }
        local this_function = switch[command_state[command_list[i]]]
        if this_function then this_function() end
    end
end

function input_sys_draw()
    for i, v in ipairs(command_list) do
        love.graphics.print(v, 0, i*15-15)
        love.graphics.print(command_state[1][v], 100, i*15-15)
        love.graphics.print(command_state[2][v], 160, i*15-15)
    end 
end