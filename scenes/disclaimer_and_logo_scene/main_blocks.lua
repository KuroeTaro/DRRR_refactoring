function disclaimer_logos_scene_update()
    -- 场景时间更新
    SCENE_TIMER = SCENE_TIMER + 1

    obj_state_machine_UI_disclaimer_and_logo_scene_singular(
        obj_UI_disclaimer_and_logo_scene_singular
    )

    -- 场景出口
    if obj_UI_disclaimer_and_logo_scene_singular["state"] == "end" then 
        -- 初始化/加载load_scene所需要的所有素材 对象 动画 图片 音频
        load_start_scene_prep()
        load_scene_prep_routine()

        -- 卸载所有资源 包括object anim image audio
        unload_disclaimer_and_logo_scene_all()

    end
end