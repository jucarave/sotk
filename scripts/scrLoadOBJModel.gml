// scrLoadOBJModel(0:filename)

var model, 
    file, 
    line, 
    vertices, 
    vCount = 0,
    texCoords, 
    tCount = 0,
    normals,
    nCount = 0,
    type, 
    tParams,
    v, t, n,
    params,
    order = scrArray(0,2,1);

file = file_text_open_read(argument[0]);

model = d3d_model_create();
d3d_model_primitive_begin(model, pr_trianglelist);

while (!file_text_eof(file)){
    line = file_text_read_string(file);
    file_text_readln(file);
    
    if (string_char_at(line, 1) == "#"){ continue; }
    if (string_char_at(line, 1) == "g"){ continue; }
    if (string_replace_all(line, " ", "") == ""){ continue; }
    
    type = string_copy(line, 0, 2);
    line = string_replace(line, type, "");
    
    if (type == "v ") {
        params = scrStringExplode(line, " ", true);
        vertices[vCount++] = params;
    }else if (type == "vn") {
        params = scrStringExplode(line, " ", true);
        normals[nCount++] = params;
    }else if (type == "vt") {
        params = scrStringExplode(line, " ", true);
        texCoords[tCount++] = params;
    }else if (type == "f "){
        params = scrStringExplode(line, " ", false);
        
        for (var i=0;i<3;i++){
            tParams = scrStringExplode(params[order[i]], "/", true);
            
            v = vertices[tParams[0] - 1];
            t = texCoords[tParams[1] - 1];
            n = normals[tParams[2] - 1];
            
            d3d_model_vertex_normal_texture(
                model, 
                v[0],-v[1], v[2],
                n[0],-n[1], n[2],
                t[0], t[1]
            );
        }
    }
}

d3d_model_primitive_end(model);

file_text_close(file);

return model;
