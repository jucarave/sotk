//scrDrawInventory()

draw_set_font(fntDialog);
draw_set_color(c_black);
draw_set_alpha(0.8);

draw_rectangle(0,0,853,80,false);

draw_set_alpha(1.0);
draw_set_color(c_white);

var size = ds_list_size(global.PL_ITEMS);

if (size > 0) {
    var iStart = max(invCursor - 10, 0),
        iEnd = min(iStart + 10, size),
        ic = invCursor - iStart,
        item, model,
        selected;
        
    for (var i=iStart;i<iEnd;i++) {
        item = ds_list_find_value(global.PL_ITEMS, i);
        model = item[ITEM_MDL];
        
        draw_sprite(sprInventory, model[0, MDL_INV_IND], 34 + i * 72, 8);
        
        if (invCursor == i) { 
            selected = item; 
        }
        
        if (item[ITEM_EQUIPPED]){
            draw_text(80 + i * 72, 48, "E");
        }
    }
    
    model = selected[ITEM_MDL];
    
    draw_set_color(c_red);
    draw_rectangle(34 + ic * 72, 8, 98 + ic * 72, 72, true);
    
    draw_set_color(c_white);
    
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    
    draw_rectangle(60,392,793,468,false);
    
    if (state == PLAYER_FSM.INVENTORY_SELECT){
        draw_rectangle(680,315,793,370,false);
    }
    
    draw_set_alpha(1.0);
    draw_set_color(c_white);
    
    draw_text(64, 396, model[0, MDL_NAME]);
    draw_text_ext(96, 420, model[0, MDL_DESC], 24, 660);
    
    if (state == PLAYER_FSM.INVENTORY_SELECT){
        if (model[0, MDL_TYPE] == ITEM_TYPES.WEAPON){
            if (selected[ITEM_EQUIPPED]){
                draw_text(712, 320, "Unequip");
            }else{
                draw_text(712, 320, "Equip");
            }
        }else{
            draw_text(712, 320, "Use");
        }
        
        draw_text(712, 344, "Cancel");
        draw_sprite(sprInventorySelect, 0, 688, 323 + 24 * invActionCursor);
    }
}
