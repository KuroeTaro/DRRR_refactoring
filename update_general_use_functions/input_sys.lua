function init_input()
    INPUT_SYS_CURRENT_COMMAND = {}
    INPUT_SYS_CURRENT_COMMAND_STATE = {}
    
    INPUT_SYS_CURRENT_COMMAND[1] = {}
    INPUT_SYS_CURRENT_COMMAND_STATE[1] = {}
    INPUT_SYS_CURRENT_COMMAND[2] = {}
    INPUT_SYS_CURRENT_COMMAND_STATE[2] = {}

    INPUT_SYS_CURRENT_JOYSTICK_TABLE = {}

    INPUT_SYS_CONTROLLER_STATE = {0,0,0,0}

    INPUT_SYS_CURRENT_JOYSTICK_TABLE = love.joystick.getJoysticks()

    INPUT_SYS_GLOBAL_PRIME_JOYSITCK = {}

    --加载手柄按键 键盘按键 手柄z轴 对于指令的表
    INPUT_SYS_COMMAND_TABLE = {
        "Up","Down","Left","Right",
        "A","B","C","D",
        "SP","Launcher","Back","Start",
        "RC","Dash","Burst","UA"
    }
    
    INPUT_SYS_BUTTON_TABLE = {
        "dpup","dpdown","dpleft","dpright",
        "x","y","b","a",
        "leftshoulder","rightshoulder","back","start"
    }
        
    INPUT_SYS_AXIS_TABLE = {"triggerleft","triggerright"}

    INPUT_SYS_STICK_TABLE = {"leftstick","rightstick"}

    INPUT_SYS_KEY_TABLE = {
        "w","s","a","d",
        "j","i","l","k",
        "lshift","o","escape","return",
        "u","h",'r','space'
    }
    
    for i=1,16 do
        INPUT_SYS_CURRENT_COMMAND_STATE[1][INPUT_SYS_COMMAND_TABLE[i]] = "Released"
        INPUT_SYS_CURRENT_COMMAND_STATE[2][INPUT_SYS_COMMAND_TABLE[i]] = "Released"
    end

    --初始化现指令数组
    for i = 1,16 do
        INPUT_SYS_CURRENT_COMMAND[1][INPUT_SYS_COMMAND_TABLE[i]] = 0
        INPUT_SYS_CURRENT_COMMAND[2][INPUT_SYS_COMMAND_TABLE[i]] = 0
    end
end

function update_input()
    --加载手柄
    update_controller()

    --获得所有指令的现在布尔值和上一帧布尔值
    --并且赋值到INPUT_SYS_CURRENT_COMMAND和perCommand
    if GAME_MODE == 2 then
        if INPUT_SYS_CURRENT_JOYSTICK_TABLE[1] == nil then 
            get_INPUT_SYS_CURRENT_COMMAND(
                INPUT_SYS_CURRENT_COMMAND[NETWORK_MATCH_SIDE],
                nil
            )
        else 
            get_INPUT_SYS_CURRENT_COMMAND(
                INPUT_SYS_CURRENT_COMMAND[NETWORK_MATCH_SIDE],
                INPUT_SYS_CURRENT_JOYSTICK_TABLE[1]
            )
        end
        -- INPUT_SYS_CURRENT_COMMAND[OTHER_SIDE] 从网络接口获取

    else
        if INPUT_SYS_CURRENT_JOYSTICK_TABLE[1] == nil then 
            get_INPUT_SYS_CURRENT_COMMAND(INPUT_SYS_CURRENT_COMMAND[1],nil)
            for i = 1,16 do
                INPUT_SYS_CURRENT_COMMAND[2][INPUT_SYS_COMMAND_TABLE[i]] = 0
            end
        else 
            get_INPUT_SYS_CURRENT_COMMAND(INPUT_SYS_CURRENT_COMMAND[1],INPUT_SYS_CURRENT_JOYSTICK_TABLE[1])
            get_INPUT_SYS_CURRENT_COMMAND(INPUT_SYS_CURRENT_COMMAND[2],INPUT_SYS_CURRENT_JOYSTICK_TABLE[2])
        end
    end

    --输入状态机
    state_machine_input(INPUT_SYS_CURRENT_COMMAND_STATE[1],INPUT_SYS_CURRENT_COMMAND[1])
    state_machine_input(INPUT_SYS_CURRENT_COMMAND_STATE[2],INPUT_SYS_CURRENT_COMMAND[2])
end

--将手柄按键的值转化为指令表内的数值
function get_joystick_buttom_command(js,buttom_name)
    local result = nil
    if js ~= nil then
        result = js:isGamepadDown(buttom_name)
    else result = false end 
    return result 
end 

--将手柄扳机的值转化为指令表内的数值
function get_joystick_axis_command(js,axis_name)
    local result = nil
    if js ~= nil then 
        result = js:getGamepadAxis(axis_name)
    else result = 0.0 end
    return result
end 

--加载手柄
function update_controller()
    INPUT_SYS_CURRENT_JOYSTICK_TABLE = love.joystick.getJoysticks()
    if INPUT_SYS_GLOBAL_PRIME_JOYSITCK[1] and INPUT_SYS_GLOBAL_PRIME_JOYSITCK[1]:isConnected() == false then
        INPUT_SYS_GLOBAL_PRIME_JOYSITCK = {}
    end
    if INPUT_SYS_GLOBAL_PRIME_JOYSITCK[2] and INPUT_SYS_GLOBAL_PRIME_JOYSITCK[2]:isConnected() == false then
        INPUT_SYS_GLOBAL_PRIME_JOYSITCK[2] = nil
    end

    if INPUT_SYS_GLOBAL_PRIME_JOYSITCK == {} or INPUT_SYS_GLOBAL_PRIME_JOYSITCK[1] == nil then
        for i=1,#INPUT_SYS_CURRENT_JOYSTICK_TABLE,1 do
            if (INPUT_SYS_CURRENT_JOYSTICK_TABLE[i]:isGamepadDown("dpleft") 
            or INPUT_SYS_CURRENT_JOYSTICK_TABLE[i]:isGamepadDown("dpright")
            or INPUT_SYS_CURRENT_JOYSTICK_TABLE[i]:isGamepadDown("a")
            or INPUT_SYS_CURRENT_JOYSTICK_TABLE[i]:isGamepadDown("b"))
            and INPUT_SYS_CURRENT_JOYSTICK_TABLE[i] ~= INPUT_SYS_GLOBAL_PRIME_JOYSITCK[2]
            then
                INPUT_SYS_GLOBAL_PRIME_JOYSITCK[1] = INPUT_SYS_CURRENT_JOYSTICK_TABLE[i]
                INPUT_SYS_GLOBAL_PRIME_JOYSITCK[2] = nil
                break
            end
        end
    end
    
    if INPUT_SYS_GLOBAL_PRIME_JOYSITCK[2] == nil then
        for i=1,#INPUT_SYS_CURRENT_JOYSTICK_TABLE,1 do
            if (INPUT_SYS_CURRENT_JOYSTICK_TABLE[i]:isGamepadDown("dpleft") 
            or INPUT_SYS_CURRENT_JOYSTICK_TABLE[i]:isGamepadDown("dpright")
            or INPUT_SYS_CURRENT_JOYSTICK_TABLE[i]:isGamepadDown("a")
            or INPUT_SYS_CURRENT_JOYSTICK_TABLE[i]:isGamepadDown("b"))
            and INPUT_SYS_CURRENT_JOYSTICK_TABLE[i] ~= INPUT_SYS_GLOBAL_PRIME_JOYSITCK[1]
            then
                INPUT_SYS_GLOBAL_PRIME_JOYSITCK[2] = INPUT_SYS_CURRENT_JOYSTICK_TABLE[i]
                break
            end
        end
    end

    INPUT_SYS_CURRENT_JOYSTICK_TABLE = INPUT_SYS_GLOBAL_PRIME_JOYSITCK
        
    INPUT_SYS_CONTROLLER_STATE[2] = INPUT_SYS_CONTROLLER_STATE[0]
    INPUT_SYS_CONTROLLER_STATE[3] = INPUT_SYS_CONTROLLER_STATE[1]

    if INPUT_SYS_CURRENT_JOYSTICK_TABLE[1] == nil then 
        INPUT_SYS_CONTROLLER_STATE[0] = 0
    else 
        INPUT_SYS_CONTROLLER_STATE[0] = 1
    end 

    if INPUT_SYS_CURRENT_JOYSTICK_TABLE[2] == nil then 
        INPUT_SYS_CONTROLLER_STATE[1] = 0
    else 
        INPUT_SYS_CONTROLLER_STATE[1] = 1
    end 
end

--获得所有指令的现在布尔值和上一帧布尔值（键盘）
function get_INPUT_SYS_CURRENT_COMMAND(INPUT_SYS_CURRENT_COMMAND,joystick)
    --(键盘)
    if joystick == nil then
        for i = 1,16 do
            if love.keyboard.isDown(INPUT_SYS_KEY_TABLE[i]) then
                INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i]] = 1
            else INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i]] = 0
            end
        end
    else
        for i = 1,12 do
            if get_joystick_buttom_command(joystick,INPUT_SYS_BUTTON_TABLE[i]) then
                INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i]] = 1
            else INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i]] = 0
            end
        end

        for i = 1,2 do
            if get_joystick_axis_command(joystick,INPUT_SYS_AXIS_TABLE[i]) > 0.2 then
                INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i+12]] = 1
            else INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i+12]] = 0
            end
        end
        for i = 1,2 do
            if get_joystick_buttom_command(joystick,INPUT_SYS_STICK_TABLE[i]) then
                INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i+14]] = 1
            else INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i+14]] = 0
            end
        end
    end
end

--输入状态机
function state_machine_input(INPUT_SYS_CURRENT_COMMAND_STATE,INPUT_SYS_CURRENT_COMMAND)
    for i=1,16 do
        local switch = 
        {
            ["Released"] = function()
                if INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i]] == 1 then 
                    INPUT_SYS_CURRENT_COMMAND_STATE[INPUT_SYS_COMMAND_TABLE[i]] = "Pressing"
                end
            end,
            ["Releasing"] = function()
                if INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i]] == 1 then 
                    INPUT_SYS_CURRENT_COMMAND_STATE[INPUT_SYS_COMMAND_TABLE[i]] = "Pressing"
                else
                    INPUT_SYS_CURRENT_COMMAND_STATE[INPUT_SYS_COMMAND_TABLE[i]] = "Released"
                end
            end,
            ["Pressing"] = function()
                if INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i]] == 1 then 
                    INPUT_SYS_CURRENT_COMMAND_STATE[INPUT_SYS_COMMAND_TABLE[i]] = "Holding"
                else
                    INPUT_SYS_CURRENT_COMMAND_STATE[INPUT_SYS_COMMAND_TABLE[i]] = "Releasing"
                end
            end,
            ["Holding"] = function()
                if INPUT_SYS_CURRENT_COMMAND[INPUT_SYS_COMMAND_TABLE[i]] == 0 then 
                    INPUT_SYS_CURRENT_COMMAND_STATE[INPUT_SYS_COMMAND_TABLE[i]] = "Releasing"
                end
            end
        }
        local this_function = switch[INPUT_SYS_CURRENT_COMMAND_STATE[INPUT_SYS_COMMAND_TABLE[i]]]
        if this_function then this_function() end
    end
end

function draw_input_sys()
    for i, v in ipairs(INPUT_SYS_COMMAND_TABLE) do
        love.graphics.print(v, 0, i*15-15)
        love.graphics.print(INPUT_SYS_CURRENT_COMMAND_STATE[1][v], 100, i*15-15)
        love.graphics.print(INPUT_SYS_CURRENT_COMMAND_STATE[2][v], 160, i*15-15)
    end 
end