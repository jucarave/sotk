// scrUseItem(0: itemIndex)

var item = ds_list_find_value(global.PL_ITEMS, argument[0]),
    model = item[ITEM_MDL];
    
if (model[0, MDL_TYPE] == ITEM_TYPES.WEAPON){
    item[ITEM_EQUIPPED] = !item[ITEM_EQUIPPED];
    
    if (item[ITEM_EQUIPPED]){
        global.PL_WEAPON = model;
    }else{
        global.PL_WEAPON = -1;
    }
    
    ds_list_replace(global.PL_ITEMS, argument[0], item);
    weapon = global.PL_WEAPON;
}
