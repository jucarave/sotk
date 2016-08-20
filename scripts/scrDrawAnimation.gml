// scrDrawAnimation(0:model, 1:texture, 2:animationInd, 3:position)

var model = argument[0],
    texture = argument[1],
    animationInd = argument[2],
    position = argument[3];

shader_set(shdAnimation);

shader_set_uniform_f(global.UNIFORM_ANIMATION_IND, animationInd);
shader_set_uniform_f_array(global.UNIFORM_ANIMATION_POSITION, position);

shader_set_uniform_f_array(global.UNIFORM_ANIMATION_LIGHT0_POS, objLight.position);
shader_set_uniform_f_array(global.UNIFORM_ANIMATION_LIGHT0_COL, objLight.color);

vertex_submit(model, pr_trianglelist, texture);

shader_reset();
