var ins;

world[8] = 0;

world[0] = scrCreateObject(scrCreateFloor(0, 0, 0, 256, 256), texHouse, TEX_HOUSE_BROOM_FLOOR, 8, 8, 0, 0, 0);

world[1] = scrCreateObject(scrCreateCeil(0, 0, 100, 256, 256), texHouse, TEX_HOUSE_BROOM_CEIL, 8, 8, 0, 0, 0);

world[2] = scrCreateObject(scrCreateWalls(0, 0, 0, 32, 256, 100), texHouse, TEX_HOUSE_BROOM_WALL_1, 8, 1, 0, 0, 0);
world[3] = scrCreateObject(scrCreateWalls(32, 0, 0, 160, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 5, 1, 0, 0, 0);
world[4] = scrCreateObject(scrCreateWalls(224, 0, 0, 32, 256, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 8, 1, 0, 0, 0);
world[5] = scrCreateObject(scrCreateWalls(32, 224, 0, 64, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 2, 1, 0, 0, 0);
world[6] = scrCreateObject(scrCreateWalls(160, 224, 0, 64, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 2, 1, 0, 0, 0);

world[7] = scrCreateObject(scrCreateWalls(192, 0, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);

world[8] = scrCreateObject(scrCreateWalls(96, 224, 0, 64, 32, 100), texHouse, TEX_HOUSE_BALC_DOOR, 1, 1, 0, 0, 0);

// Hallway Door
ins = instance_create(192, 0, objDoor);
ins.target = scrArray(rooHouseHallway, 48, 176, 90);
ins.z = 0;
