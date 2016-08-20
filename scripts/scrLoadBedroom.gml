world[9] = 0;

world[0] = scrCreateObject(scrCreateFloor(0, 0, 0, 256, 224), textures, TEX_ROOM_FLOOR, 8, 7, 0, 0, 0);
world[1] = scrCreateObject(scrCreateCeil(0, 0, 100, 256, 224), textures, TEX_ROOM_CEIL, 8, 7, 0, 0, 0);
world[2] = scrCreateObject(scrCreateWalls(32, 0, 0, 192, 32, 100), textures, TEX_ROOM_WALL, 6, 1, 0, 0, 0);
world[3] = scrCreateObject(scrCreateWalls(32, 192, 0, 192, 32, 100), textures, TEX_ROOM_WALL, 6, 1, 0, 0, 0);
world[4] = scrCreateObject(scrCreateWalls(0, 32, 0, 32, 64, 100), textures, TEX_ROOM_WALL, 2, 1, 0, 0, 0);
world[5] = scrCreateObject(scrCreateWalls(0, 96, 0, 32, 32, 100), textures, TEX_ROOM_HAND, 1, 1, 0, 0, 0);
world[6] = scrCreateObject(scrCreateWalls(0, 128, 0, 32, 64, 100), textures, TEX_ROOM_WALL, 2, 1, 0, 0, 0);
world[7] = scrCreateObject(scrCreateWalls(224, 32, 0, 32, 128, 100), textures, TEX_ROOM_WALL, 4, 1, 0, 0, 0);
world[8] = scrCreateObject(scrCreateWalls(224, 160, 64, 32, 32, 36), textures, TEX_ROOM_WALL_H, 1, 1, 0, 0, 0);
world[9] = scrCreateObject(scrGetModel(MDL_BEDROOM), texBedroom, TEX_FULL, 1, 1, 0, 0, 0);

// Hand
var ins = instance_create(32, 112, objHand);
ins.z = 32;

// Desk lamp light
ins = instance_create(45, 45, objLight);
ins.z = 28;
ins.color = scrArray(1.0, 1.0, 1.0);
