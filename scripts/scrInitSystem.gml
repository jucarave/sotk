// scrInitSystem()

// Resolution
global.RES_WIDTH = 853;
global.RES_HEIGHT = 480;

// Basic shader
global.UNIFORM_UV = shader_get_uniform(shdBasic, "uUV");
global.UNIFORM_REPEAT = shader_get_uniform(shdBasic, "uRepeat");

global.UNIFORM_LIGHT0_USE = shader_get_uniform(shdBasic, "uUseLight0");
global.UNIFORM_LIGHT0_POS = shader_get_uniform(shdBasic, "uLight0_pos");
global.UNIFORM_LIGHT0_COL = shader_get_uniform(shdBasic, "uLight0_col");

// Animation Shader
global.UNIFORM_ANIMATION_LIGHT0_USE = shader_get_uniform(shdAnimation, "uUseLight0");
global.UNIFORM_ANIMATION_LIGHT0_POS = shader_get_uniform(shdAnimation, "uLight0_pos");
global.UNIFORM_ANIMATION_LIGHT0_COL = shader_get_uniform(shdAnimation, "uLight0_col");

global.UNIFORM_ANIMATION_IND = shader_get_uniform(shdAnimation, "uAnimationInd");
global.UNIFORM_ANIMATION_POSITION = shader_get_uniform(shdAnimation, "uPosition");

// Animation vertex format
vertex_format_begin();
vertex_format_add_custom(vertex_type_float4, vertex_usage_position);
vertex_format_add_custom(vertex_type_float4, vertex_usage_textcoord);
vertex_format_add_custom(vertex_type_float3, vertex_usage_normal);
vertex_format_add_custom(vertex_type_float3, vertex_usage_colour);
global.VERTEX_ANIMATION_FORMAT = vertex_format_end();
