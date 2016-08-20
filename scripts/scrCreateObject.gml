// scrCreateObject(0:model, 1:background, 2:uvs, 3:repeatH, 4:repeatV, 5:x, 6:y, 7:z)

var ret, rep;

var tex = background_get_texture(argument[1]);
var uv = global.UVS[argument[2]];

rep[1] = argument[4];
rep[0] = argument[3];

ret[MESH_MODEL] = argument[0];
ret[MESH_MAT] = tex;
ret[MESH_REPEAT] = rep;
ret[MESH_UV] = uv;
ret[MESH_X] = argument[5];
ret[MESH_Y] = argument[6];
ret[MESH_Z] = argument[7];

return ret;
