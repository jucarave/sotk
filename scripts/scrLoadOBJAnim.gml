// scrLoadOBJAnim(0:filename)

var file, 
    line, 
    frames,
    frameInd,
    animation,
    aCount = 0,
    vertices, 
    vCount = 0,
    texCoords, 
    tCount = 0,
    normals,
    nCount = 0,
    faces,
    fCount = 0,
    type, 
    tParams,
    params,
    order = scrArray(0,2,1);

file = file_text_open_read(argument[0]);
frames = ds_list_create();

while (!file_text_eof(file)){
    line = file_text_read_string(file);
    file_text_readln(file);
    
    if (string_char_at(line, 1) == "#"){ continue; }
    if (string_char_at(line, 1) == "g"){ continue; }
    if (string_replace_all(line, " ", "") == ""){ continue; }
    
    if (string_pos("-- Frame ", line) != 0){
        frameInd = real(string_replace(line, "-- Frame ", ""));
        ds_list_add(frames, frameInd);
        
        if (vCount > 0){
            animation[aCount, 0] = vertices;
            animation[aCount, 1] = normals;
            aCount += 1;
            
            vCount = 0;
            nCount = 0;
            vertices = 0;
            normals = 0;
        }
        
        continue;
    }
    
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
            
            faces[fCount, 0 + (i * 3)] = tParams[0] - 1;
            faces[fCount, 1 + (i * 3)] = tParams[1] - 1;
            faces[fCount, 2 + (i * 3)] = tParams[2] - 1;
        }
        
        fCount += 1;
    }
}

if (vCount > 0){
    animation[aCount, 0] = vertices;
    animation[aCount, 1] = normals;
}

var ret = scrParseAnimation(animation, texCoords, faces);

ds_list_destroy(frames);
        
file_text_close(file);

return ret;
