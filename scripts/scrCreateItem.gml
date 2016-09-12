// scrCreateItem(0: model, 1: amount, 2: itemHash)

var ret;

ret[ITEM_MDL] = argument[0];
ret[ITEM_AMOUNT] = argument[1];
ret[ITEM_HASH] = argument[2];
ret[ITEM_EQUIPPED] = false;

return ret;
