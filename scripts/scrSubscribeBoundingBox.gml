// scrSubscribeBoundingBox(0:x1, 1:y1, 2:z1, 3: w, 4: l, 5: h, 6: ins)

var x1 = argument[0];
var y1 = argument[1];
var z1 = argument[2];
var x2 = x1 + argument[3];
var y2 = y1 + argument[4];
var z2 = z1 + argument[5];
var ins = argument[6];

ds_list_add(objWorld.bBoxes, scrArray(x1, y1, z1, x2, y2, z2, ins));
