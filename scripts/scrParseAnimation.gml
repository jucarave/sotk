// scrParseAnimation(0: animation[vertices, normals], 1: texCoords, 2: triangles, 3: loop)

var animation = argument[0],
    texCoords = argument[1],
    triangles = argument[2],
    
    aSize = array_height_2d(animation),
    tSize = array_height_2d(triangles),
    
    v1, v2,
    vn1, vn2,
    h1, h2,
    
    i, j, k, len = 0,
    ret,
    buffer;

for (i=0;i<aSize;i++){
    v1 = animation[i, 0];
    vn1 = animation[i, 1];
    
    if (i + 1 < aSize){
        v2 = animation[i + 1, 0];
        vn2 = animation[i + 1, 1];
    }else{
        v2 = v1;
        vn2 = vn1;
    }

    buffer = vertex_create_buffer();
    
    vertex_begin(buffer, global.VERTEX_ANIMATION_FORMAT);
    
    for (j=0;j<tSize;j++){
        for (k=0;k<3;k++){
            // Vertices
            h1 = v1[triangles[j, 0 + k * 3]];
            h2 = v2[triangles[j, 0 + k * 3]];
            vertex_float4(buffer, h1[0], -h1[1], h1[2], h2[0]);
            
            // Texture Coords
            h1 = texCoords[triangles[j, 1 + k * 3]];
            vertex_float4(buffer, h1[0], h1[1], -h2[1], h2[2]);
            
            // Normals
            h1 = vn1[triangles[j, 2 + k * 3]];
            vertex_float3(buffer, h1[0],-h1[1], h1[2]);
            
            // Colour
            h1 = vn2[triangles[j, 2 + k * 3]];
            vertex_float3(buffer, h1[0],-h1[1], h1[2]);
        }
    }
    
    vertex_end(buffer);
    
    ret[len++] = buffer;
}

return ret;
