vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
    vec4 texColor = Texel(texture, texture_coords);
    
    // 如果 alpha > 0，则解除预乘
    if (texColor.a > 0.0) {
        texColor.rgb /= texColor.a;
    }
    
    // 乘以传入的颜色（可以理解为 Love2D draw 调用时的颜色叠加）
    return texColor * color;
}