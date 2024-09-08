extern float time;

float hash1(vec2 p){
    return fract(sin(p.x*0.129898 + p.y*0.78233) * 43758.5453);
}
float value_noise(vec2 p){
    vec2 cell = floor(p);
    vec2 sub = p - cell;
    vec2 cube = sub*sub*(3.-2.*sub);
    const vec2 off = vec2(0,1); 
    return mix( mix(hash1(cell+off.xx), hash1(cell+off.yx), cube.x),
                mix(hash1(cell+off.xy), hash1(cell+off.yy), cube.x), cube.y);
}
float fractal_noise(vec2 p, int oct, float per){
    float noise_sum = 0.0; //Noise total
    float weight_sum = 0.0; //Weight total
    float weight = 1.0; //Octave weight
    for(int i = 0; i < oct; i++) //Iterate through octaves{
        noise_sum += value_noise(p) * weight; 
        weight_sum += weight;
        weight *= per;
        p *= mat2(1.6,1.2,-1.2,1.6); 
    }
    return noise_sum / weight_sum; 
}
vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords){
    vec2 coord = screen_coords/900*10.0;        // size adj
    coord.x += time*0.1;                        // rolling speed adj
    float noise = 0.0;
    noise = (fractal_noise(coord, 6, 0.7)+1)/2; // final brightness&contrast adj
    return vec4(noise);
}