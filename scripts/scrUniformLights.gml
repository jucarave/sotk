// scrUniformLights(0: shader)

var shader = argument[0];

if (shader == shdBasic){
    if (instance_exists(objLight)){
        shader_set_uniform_f(global.UNIFORM_LIGHT0_USE, 1);
        shader_set_uniform_f_array(global.UNIFORM_LIGHT0_POS, objLight.position);
        shader_set_uniform_f_array(global.UNIFORM_LIGHT0_COL, objLight.color);
    }else{
        shader_set_uniform_f(global.UNIFORM_LIGHT0_USE, 0);
    }
}else if (shader == shdAnimation){
    if (instance_exists(objLight)){
        shader_set_uniform_f(global.UNIFORM_ANIMATION_LIGHT0_USE, 1);
        shader_set_uniform_f_array(global.UNIFORM_ANIMATION_LIGHT0_POS, objLight.position);
        shader_set_uniform_f_array(global.UNIFORM_ANIMATION_LIGHT0_COL, objLight.color);
    }else{
        shader_set_uniform_f(global.UNIFORM_ANIMATION_LIGHT0_USE, 0);
    }
}
