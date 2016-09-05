// scrUnsubscribeBoundingBox(0: instance)

var ins = argument[0],
    size = ds_list_size(objWorld.bBoxes),
    i, val;
    
for (i=0;i<size;i++){
    val = ds_list_find_value(objWorld.bBoxes, i);
    
    if (val[6] == ins){
        ds_list_delete(objWorld.bBoxes, i);
        i -= 1;
        size -= 1;
    }
}
