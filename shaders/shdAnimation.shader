attribute vec4 in_Position;
attribute vec4 in_TextureCoord;
attribute vec3 in_Normal;
attribute vec3 in_Colour;

uniform float uAnimationInd;
uniform vec3 uPosition;

varying vec3 v_position;
varying vec3 v_normal;
varying vec2 v_texcoord;

varying vec4 v_coord;

void main() {
    vec3 aStart = in_Position.xyz;
    vec3 aEnd = vec3(in_Position.w, in_TextureCoord.z, in_TextureCoord.w);
    
    vec3 pos = mix(aStart, aEnd, uAnimationInd);
    vec3 nor = mix(in_Normal, in_Colour, uAnimationInd);
    
    vec4 object_space_pos = vec4(pos + uPosition, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_position = object_space_pos.xyz;
    v_texcoord = in_TextureCoord.xy;
    v_normal = nor;
    
    v_coord = gl_Position;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~uniform vec3 uLight0_col;
uniform vec3 uLight0_pos;

varying vec3 v_position;
varying vec3 v_normal;
varying vec2 v_texcoord;

varying vec4 v_coord;

float ditherLight(float weight, float lightRange, float col1, float col2, vec2 coord) {
    float ret = col1;
    if (weight > lightRange){
        ret = col1;
    }else{
        float mx = floor(mod(coord.x, 2.0));
        float my = floor(mod(coord.y, 2.0));
        
        if (weight > lightRange - 0.02){
            if (mx == 0.0 && my == 0.0){
                ret = col2;
            }else{
                ret = col1;
            }
        }else if (weight > lightRange - 0.06){
            if ((mx == 0.0 && my == 0.0) || (mx == 1.0 && my == 1.0)){
                ret = col2;
            }else{
                ret = col1;
            }
        }else if (weight > lightRange - 0.07){
            if (mx == 1.0 && my == 0.0){
                ret = col1;
            }else{
                ret = col2;
            }
        }else{
            ret = col2;
        }
    }
    
    return ret;
}

void main()
{
    vec2 resolution = vec2(853.0, 480.0) / 4.0;
    
    vec4 col = texture2D( gm_BaseTexture, v_texcoord );
    
    vec3 lPos = (uLight0_pos - v_position);
    vec3 dir = normalize(lPos);
    
    float weight = max(dot(normalize(v_normal), dir), 0.0);
    vec2 coord = floor(vec2(v_coord.x / v_coord.w * 0.5 + 0.5, v_coord.y / v_coord.w * 0.5 + 0.5) * resolution);
    
    if (weight > 0.3){
        weight = 1.0;
    }else if (weight >= 0.1){
        weight = ditherLight(weight, 0.3, 1.0, 0.8, coord);
    }else{
        weight = 0.8;
    }
    
    col.rgb *= weight * uLight0_col;
    
    gl_FragColor = col;
}

