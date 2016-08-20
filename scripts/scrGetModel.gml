// scrGetModel(0: filename)

var filename = argument[0];
var animation = (string_pos("Animations", filename) != 0);

if (!instance_exists(objModels)){ instance_create(0, 0, objModels); }

var ind = ds_list_find_index(objModels.modelsPaths, filename);

if (ind != -1){
    return ds_list_find_value(objModels.models, ind);
}

var model;
if (animation){
    model = scrLoadOBJAnim(filename);
}else{
    model = scrLoadOBJModel(filename);
}

ds_list_add(objModels.models, model);
ds_list_add(objModels.modelsPaths, filename);

return model;
