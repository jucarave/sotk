// Open Inventory
if (keyboard_check_pressed(ord('T'))){
    if (state == PLAYER_FSM.INVENTORY || state == PLAYER_FSM.INVENTORY_SELECT){
        state = prevState;
        prevState = noone;
        invActionCursor = 0;
        invCursor = 0;
    }else{
        prevState = state;
        state = PLAYER_FSM.INVENTORY;
    }
    
    exit;
}

if (state == PLAYER_FSM.INVENTORY) {
    var size = ds_list_size(global.PL_ITEMS);
    
    if (keyboard_check_pressed(ord('D'))){
        invCursor += 1;
        
        if (invCursor >= size){
            invCursor = 0;
        }
    }else if (keyboard_check_pressed(ord('A'))){
        invCursor -= 1;
        
        if (invCursor < 0){
            invCursor = size - 1;
        }
    }else if (keyboard_check_pressed(ord('E'))){
        state = PLAYER_FSM.INVENTORY_SELECT;
    }
}else if (state == PLAYER_FSM.INVENTORY_SELECT) {
    if (keyboard_check_pressed(ord('W'))){
        invActionCursor -= 1;
        
        if (invActionCursor < 0){
            invActionCursor = 1;
        }
    }else if (keyboard_check_pressed(ord('S'))){
        invActionCursor += 1;
        
        if (invActionCursor > 1){
            invActionCursor = 0;
        }
    }else if (keyboard_check_pressed(ord('E'))){
        if (invActionCursor == 0){
            scrUseItem(invCursor);
        }else if (invActionCursor == 1){
            invActionCursor = 0;
            state = PLAYER_FSM.INVENTORY;
        }
    }
}
