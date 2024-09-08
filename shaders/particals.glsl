
// 伪随机函数
float random(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

// 判断点是否在圆形内（考虑高宽比）
bool isPointInCircle(vec2 point, vec2 center, float radius, float aspectRatio) {
    vec2 pointAdjusted = vec2(point.x * aspectRatio, point.y); // 调整点的X坐标
    vec2 centerAdjusted = vec2(center.x * aspectRatio, center.y); // 调整中心的X坐标
    return length(pointAdjusted - centerAdjusted) < radius;
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = gl_FragCoord.xy / iResolution.xy; // 规范化屏幕坐标 (0,1)
    float aspectRatio = iResolution.x / iResolution.y; // 计算高宽比

    int numParticles = 50; // 粒子的数量

    for (int i = 0; i < numParticles; ++i) {
        vec2 randomSeed = vec2(float(i) * 12.9898 + 78.233, float(i) * 57.0 + 93.0);
        vec2 initialPosition = vec2(random(randomSeed), random(randomSeed + 1.0));
        vec2 velocity = vec2(random(randomSeed + 2.0) - 0.5, random(randomSeed + 3.0) - 0.5) * 0.1;
        
        // 更新粒子位置
        vec2 particlePosition = initialPosition + velocity * iTime;

        // 保证粒子位置在 [0, 1] 范围内循环
        particlePosition = mod(particlePosition, vec2(1.0));

        float randomRadius = 0.001 + 0.005 * random(randomSeed + 4.0); // 随机半径在0.01到0.03之间

        if (isPointInCircle(uv, particlePosition, randomRadius, aspectRatio)) {
            fragColor = vec4(1.0); // 白色
            return;
        }
    }

    // 默认背景颜色
    fragColor = vec4(0.0);
}


//////////////


#version 330 core
out vec4 FragColor;

uniform float uTime; // 传入的时间，用于动画效果
uniform vec2 uResolution; // 屏幕分辨率

// 伪随机函数
float random(vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898, 78.233))) * 43758.5453123);
}

// 判断点是否在圆形内（考虑高宽比）
bool isPointInCircle(vec2 point, vec2 center, float radius, float aspectRatio) {
    vec2 pointAdjusted = vec2(point.x * aspectRatio, point.y); // 调整点的X坐标
    vec2 centerAdjusted = vec2(center.x * aspectRatio, center.y); // 调整中心的X坐标
    return length(pointAdjusted - centerAdjusted) < radius;
}

void main()
{
    vec2 uv = gl_FragCoord.xy / uResolution; // 规范化屏幕坐标 (0,1)
    float aspectRatio = uResolution.x / uResolution.y; // 计算高宽比

    int numParticles = 100; // 粒子的数量

    for (int i = 0; i < numParticles; ++i) {
        vec2 randomSeed = vec2(float(i) * 12.9898 + 78.233, float(i) * 57.0 + 93.0);
        vec2 initialPosition = vec2(random(randomSeed), random(randomSeed + 1.0));
        vec2 velocity = vec2(random(randomSeed + 2.0) - 0.5, random(randomSeed + 3.0) - 0.5) * 0.1;
        
        // 更新粒子位置
        vec2 particlePosition = initialPosition + velocity * uTime;

        // 保证粒子位置在 [0, 1] 范围内循环
        particlePosition = mod(particlePosition, vec2(1.0));

        float randomRadius = 0.01 + 0.02 * random(randomSeed + 4.0); // 随机半径在0.01到0.03之间

        if (isPointInCircle(uv, particlePosition, randomRadius, aspectRatio)) {
            FragColor = vec4(1.0); // 白色
            return;
        }
    }

    // 默认背景颜色
    FragColor = vec4(0.0);
}
