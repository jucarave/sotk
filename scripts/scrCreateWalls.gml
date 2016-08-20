// scrCreateWalls(x,y,z,w,h,l)

var x1, y1, z1, x2, y2, z2, tx, ty;

x1 = argument[0];
y1 = argument[1];
z1 = argument[2];

x2 = x1 + argument[3];
y2 = y1 + argument[4];
z2 = z1 + argument[5];

tx = 1;
ty = 1;

var model = d3d_model_create();

d3d_model_primitive_begin(model, pr_trianglelist);

// HORIZONTAL
if (argument[3] >= argument[4]){
    d3d_model_vertex_normal_texture(model, x1, y2, z2,       0,  1,  0,       0,  0);
    d3d_model_vertex_normal_texture(model, x2, y2, z1,       0,  1,  0,      tx,  ty);
    d3d_model_vertex_normal_texture(model, x1, y2, z1,       0,  1,  0,       0,  ty);
    d3d_model_vertex_normal_texture(model, x1, y2, z2,       0,  1,  0,       0,  0);
    d3d_model_vertex_normal_texture(model, x2, y2, z2,       0,  1,  0,      tx,  0);
    d3d_model_vertex_normal_texture(model, x2, y2, z1,       0,  1,  0,      tx,  ty);
    
    d3d_model_vertex_normal_texture(model, x2, y1, z2,       0, -1,  0,       0,  0);
    d3d_model_vertex_normal_texture(model, x1, y1, z1,       0, -1,  0,      tx,  ty);
    d3d_model_vertex_normal_texture(model, x2, y1, z1,       0, -1,  0,       0,  ty);
    d3d_model_vertex_normal_texture(model, x2, y1, z2,       0, -1,  0,       0,  0);
    d3d_model_vertex_normal_texture(model, x1, y1, z2,       0, -1,  0,      tx,  0);
    d3d_model_vertex_normal_texture(model, x1, y1, z1,       0, -1,  0,      tx,  ty);
}

// VERTICAL
if (argument[4] >= argument[3]){
    d3d_model_vertex_normal_texture(model, x1, y1, z2,      -1,  0,  0,       0,  0);
    d3d_model_vertex_normal_texture(model, x1, y2, z1,      -1,  0,  0,      tx,  ty);
    d3d_model_vertex_normal_texture(model, x1, y1, z1,      -1,  0,  0,       0,  ty);
    d3d_model_vertex_normal_texture(model, x1, y1, z2,      -1,  0,  0,       0,  0);
    d3d_model_vertex_normal_texture(model, x1, y2, z2,      -1,  0,  0,      tx,  0);
    d3d_model_vertex_normal_texture(model, x1, y2, z1,      -1,  0,  0,      tx,  ty);
    
    d3d_model_vertex_normal_texture(model, x2, y2, z2,       1,  0,  0,       0,  0);
    d3d_model_vertex_normal_texture(model, x2, y1, z1,       1,  0,  0,      tx,  ty);
    d3d_model_vertex_normal_texture(model, x2, y2, z1,       1,  0,  0,       0,  ty);
    d3d_model_vertex_normal_texture(model, x2, y2, z2,       1,  0,  0,       0,  0);
    d3d_model_vertex_normal_texture(model, x2, y1, z2,       1,  0,  0,      tx,  0);
    d3d_model_vertex_normal_texture(model, x2, y1, z1,       1,  0,  0,      tx,  ty);
}

d3d_model_primitive_end(model);

return model;
