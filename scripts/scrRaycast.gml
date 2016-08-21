// scrRaycast(0:x, 1:y, 2:z, 3:direction, 4:zdirection)

var i, box, f1, f2,

    x1 = argument[0],
    y1 = argument[1],
    z1 = argument[2],
    dir = argument[3],
    zdir = argument[4],
    
    _zc = cos(degtorad(zdir)),
    
    x2 = x1 + cos(degtorad(dir)) * _zc * 48,
    y2 = y1 - sin(degtorad(dir)) * _zc * 48,
    z2 = z1 + sin(degtorad(zdir)) * 48,
    
    sx = abs(x2 - x1),
    sy = abs(y2 - y1),
    sz = abs(z2 - z1),
    
    bBoxes = objWorld.bBoxes,
    len = ds_list_size(bBoxes);  

for (i=0;i<len;i++){
    box = ds_list_find_value(bBoxes, i);
    
    if (box[3] < x1 && box[3] < x2){ continue; }
    if (box[0] > x1 && box[0] > x2){ continue; }
    
    if (box[4] < y1 && box[4] < y2){ continue; }
    if (box[1] > y1 && box[1] > y2){ continue; }
    
    if (box[5] < z1 && box[5] < z2){ continue; }
    if (box[2] > z1 && box[2] > z2){ continue; }
    
    f1 = 0;
    f2 = 1;
    
    if (x2 > x1){
        f1 = max((box[0] - x1) / sx, f1);
        f2 = min((box[3] - x1) / sx, f2);
    }else if (x2 < x1){
        f1 = max((x1 - box[3]) / sx, f1);
        f2 = min((x1 - box[0]) / sx, f2);
    }
    
    if (y2 > y1){
        f1 = max((box[1] - y1) / sy, f1);
        f2 = min((box[4] - y1) / sy, f2);
    }else if (y2 < y1){
        f1 = max((y1 - box[4]) / sy, f1);
        f2 = min((y1 - box[1]) / sy, f2);
    }
    
    if (z2 > z1){
        f1 = max((box[2] - z1) / sz, f1);
        f2 = min((box[5] - z1) / sz, f2);
    }else if (z2 < z1){
        f1 = max((z1 - box[5]) / sz, f1);
        f2 = min((z1 - box[2]) / sz, f2);
    }
    
    if (f1 > f2){ continue; }
    
    return scrArray(f1, f2, box[6]);
}

return scrArray(-1, -1);
