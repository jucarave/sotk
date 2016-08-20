// scrCreateFloor(0: x, 1: y, 2: z, 3: w, 4: l)

var x1, y1, z1, x2, y2, tx, ty;

x1 = argument[0];
y1 = argument[1];
z1 = argument[2];

x2 = x1 + argument[3];
y2 = y1 + argument[4];

tx = 1;
ty = 1;

var model = d3d_model_create();

d3d_model_primitive_begin(model, pr_trianglelist);

d3d_model_vertex_normal_texture(model, x1, y1, z1,      0, 0, 1,      0, 0);
d3d_model_vertex_normal_texture(model, x2, y2, z1,      0, 0, 1,     tx,ty);
d3d_model_vertex_normal_texture(model, x1, y2, z1,      0, 0, 1,      0,ty);

d3d_model_vertex_normal_texture(model, x1, y1, z1,      0, 0, 1,      0, 0);
d3d_model_vertex_normal_texture(model, x2, y1, z1,      0, 0, 1,     tx, 0);
d3d_model_vertex_normal_texture(model, x2, y2, z1,      0, 0, 1,     tx,ty);

d3d_model_primitive_end(model);

return model;
