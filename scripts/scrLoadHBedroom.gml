var ins;

world[12] = 0;

world[0] = scrCreateObject(scrCreateFloor(0, 0, 0, 64, 256), texHouse, TEX_HOUSE_BROOM_FLOOR, 2, 8, 0, 0, 0);
world[1] = scrCreateObject(scrCreateFloor(64, 0, 0, 192, 64), texHouse, TEX_HOUSE_BROOM_FLOOR, 6, 2, 0, 0, 0);
world[2] = scrCreateObject(scrCreateFloor(64, 128, 0, 192, 128), texHouse, TEX_HOUSE_BROOM_FLOOR, 6, 4, 0, 0, 0);
world[3] = scrCreateObject(scrCreateFloor(96, 64, 0, 160, 64), texHouse, TEX_HOUSE_BROOM_FLOOR, 5, 2, 0, 0, 0);
world[4] = scrCreateObject(scrCreateFloor(64, 64, 0, 32, 64), texHouse, TEX_HOUSE_BROOM_CARPET, 1, 2, 0, 0, 0);


world[5] = scrCreateObject(scrCreateCeil(0, 0, 100, 256, 256), texHouse, TEX_HOUSE_BROOM_CEIL, 8, 8, 0, 0, 0);

world[6] = scrCreateObject(scrCreateWalls(0, 0, 0, 32, 256, 100), texHouse, TEX_HOUSE_BROOM_WALL_1, 8, 1, 0, 0, 0);

world[7] = scrCreateObject(scrCreateWalls(32, 0, 0, 64, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 2, 1, 0, 0, 0);
world[8] = scrCreateObject(scrCreateWalls(96, 0, 0, 64, 32, 100), texHouse, TEX_HOUSE_BROOM_WINDOW, 1, 1, 0, 0, 0);
world[9] = scrCreateObject(scrCreateWalls(160, 0, 0, 96, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 3, 1, 0, 0, 0);

world[10] = scrCreateObject(scrCreateWalls(224, 32, 0, 32, 192, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 6, 1, 0, 0, 0);

world[11] = scrCreateObject(scrCreateWalls(32, 224, 0, 160, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 5, 1, 0, 0, 0);
world[12] = scrCreateObject(scrCreateWalls(192, 224, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);

// world[9] = scrCreateObject(scrGetModel(MDL_BEDROOM), texBedroom, TEX_FULL, 1, 1, 0, 0, 0);

// Hand
/*var ins = instance_create(32, 112, objHand);
ins.z = 32;*/

// Hallway Door
ins = instance_create(192, 224, objDoor);
ins.target = scrArray(rooHouseHallway, 48, 48, 270);
ins.z = 0;

// Desk lamp light
/*ins = instance_create(128, 48, objLight);
ins.z = 48;
ins.color = scrArray(1.0, 1.0, 1.0);*/

var steelPipeHash = 0;
if (!global.F_PICKED_ITEMS[steelPipeHash]){
    ins = instance_create(208, 120, objItem);
    ins.item = scrCreateItem(objSystem.steelPipe, 1, steelPipeHash);
    ins.z = 26;
    ins.rx = 90;
    ins.rz = 200;
    scrSubscribeBoundingBox(196, 90, 24, 15, 32, 2, ins);
}
