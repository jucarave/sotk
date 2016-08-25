var ins;

world[16] = 0;

world[0] = scrCreateObject(scrCreateFloor(0, 0, 0, 288, 608), texHouse, TEX_HOUSE_FLOOR, 9, 19, 0, 0, 0);

world[1] = scrCreateObject(scrCreateCeil(0, 0, 100, 288, 608), texHouse, TEX_HOUSE_BROOM_CEIL, 9, 19, 0, 0, 0);

world[2] = scrCreateObject(scrCreateWalls(32, 128, 0, 96, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 3, 1, 0, 0, 0);
world[3] = scrCreateObject(scrCreateWalls(160, 128, 0, 64, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 2, 1, 0, 0, 0);
world[4] = scrCreateObject(scrCreateWalls(192, 0, 0, 32, 160, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 5, 1, 0, 0, 0);
world[5] = scrCreateObject(scrCreateWalls(256, 0, 0, 32, 480, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 15, 1, 0, 0, 0);
world[6] = scrCreateObject(scrCreateWalls(256, 512, 0, 32, 96, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 3, 1, 0, 0, 0);
world[7] = scrCreateObject(scrCreateWalls(0, 192, 0, 32, 192, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 6, 1, 0, 0, 0);
world[8] = scrCreateObject(scrCreateWalls(32, 352, 0, 160, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 5, 1, 0, 0, 0);
world[9] = scrCreateObject(scrCreateWalls(160, 352, 0, 32, 128, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 4, 1, 0, 0, 0);
world[10] = scrCreateObject(scrCreateWalls(160, 512, 0, 32, 96, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 3, 1, 0, 0, 0);

world[11] = scrCreateObject(scrCreateWalls(0, 160, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);
world[12] = scrCreateObject(scrCreateWalls(128, 128, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);
world[13] = scrCreateObject(scrCreateWalls(224, 0, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);
world[14] = scrCreateObject(scrCreateWalls(160, 480, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);
world[15] = scrCreateObject(scrCreateWalls(256, 480, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);

world[16] = scrCreateObject(scrCreateWalls(192, 576, 0, 64, 32, 100), texHouse, TEX_HOUSE_BALC_DOOR, 1, 1, 0, 0, 0);

// Hallway Door
ins = instance_create(0, 160, objDoor);
ins.target = scrArray(rooHouseHallway, 80, 80, 180);
ins.z = 0;

// Storage Room Door
ins = instance_create(160, 480, objDoor);
ins.target = scrArray(rooHouseStorage, 112, 48, 180);
ins.z = 0;

// Laundry Room Door
ins = instance_create(256, 480, objDoor);
ins.target = scrArray(rooHouseLaundry, 48, 48, 0);
ins.z = 0;
