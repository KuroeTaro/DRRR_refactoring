-- 本工程中的数据命名标准

obj 对象
    -- obj_UI_disclaimer_and_logo_scene_singular
    -- obj_        UI_       disclaimer_and_logo_scene_       singular
    -- obj前缀   obj类型             所属场景名                 obj名称


anim 动画
    -- anim_disclaimer_and_logo_scene_general_flash_in_opacity
    -- anim_          UI_        point_liner_      disclaimer_and_logo_scene_         general_             flash_in_        opacity
    -- anim前缀  所属Object类型     动画类型              所属场景名                  动画所属obj名称           动画名称        当前动画属性
    --                                                                     如果多个obj都是用此动画则为general
    anim_UI_point_liner_disclaimer_and_logo_scene_singular_flash_out_opacity
    anim_disclaimer_and_logo_scene_general_flash_out

audio 音频
    -- audio_SFX_load_scene_end_load
    -- audio_           UI_           SFX_        load_scene_              general_                     end_load_
    -- image前缀   所属Object类型    图片类型        所属场景名           音频所属obj名称                    音频名
    --                                                     如果多个obj或者场景使用都是用此动画则为general
SFX_load_scene_start_load_audio

audio_UI_SFX_load_scene_general_loading

image 图片
    -- image_UI_load_scene_dabo_trig
    -- image_            UI_         load_scene_         dabo_trig
    -- image前缀    所属Object类型     所属场景名       图片所属obj名称


image_table 图片表
    -- image_table_UI_disclaimer_and_logo_scene_singular
    -- image_table_        UI_         disclaimer_and_logo_scene_          singular
    -- image前缀      所属Object类型           所属场景名                图片表所属obj名称


load 加载功能
    -- load_disclaimer_and_logo_scene_obj
    -- load_           disclaimer_and_logo_scene_       obj
                                                        anim
                                                        image
                                                        audio
                                                        prep
    -- load前缀               所属场景名                加载类型


unload 卸载功能
    -- unload_disclaimer_and_logo_scene_obj
    -- unload_           disclaimer_and_logo_scene_       obj
                                                          anim
                                                          image
                                                          audio
                                                          all
    -- load前缀                所属场景名                 加载类型

preset_animator 预设动画机
    -- preset_animator_disclaimer_and_logos_scene
    -- preset_animator_        disclaimer_and_logos_scene
    -- preset_animator前缀            所属场景名
    

order_load 分批次加载功能
    -- disclaimer_logos_scene_load_function
    -- order_load_      disclaimer_and_logo_scene_      general
    -- order_load前缀          所属场景名称              加载线程名


update 更新功能
    -- update_load_scene_flash_in
    -- update_          load_scene_         flash_in
    -- update_前缀      所属场景名称         update block 名

    disclaimer_logos_scene_update
    update_disclaimer_and_logos_scene_general


draw 绘图功能
    -- draw_load_scene_general
    -- draw_          load_scene_         general
    -- draw_前缀      所属场景名称      draw block 名

    draw_load_scene_general


state_machine 状态机
    -- state_machine_UI_disclaimer_and_logo_scene_singular_obj
    -- state_machine_         UI_          disclaimer_and_logo_scene_         singular
    -- state_machine前缀   所属Object类型           所属场景名               状态机所属obj名称
