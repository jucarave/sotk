var ins;

world[6] = 0;

world[0] = scrCreateObject(scrCreateFloor(0, 0, 0, 192, 192), texHouse, TEX_HOUSE_FLOOR, 6, 6, 0, 0, 0);

world[1] = scrCreateObject(scrCreateCeil(0, 0, 100, 192, 192), texHouse, TEX_HOUSE_BROOM_CEIL, 6, 6, 0, 0, 0);

world[2] = scrCreateObject(scrCreateWalls(0, 0, 0, 32, 192, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 6, 1, 0, 0, 0);
world[3] = scrCreateObject(scrCreateWalls(32, 0, 0, 128, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 4, 1, 0, 0, 0);
world[4] = scrCreateObject(scrCreateWalls(32, 160, 0, 128, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 4, 1, 0, 0, 0);
world[5] = scrCreateObject(scrCreateWalls(160, 64, 0, 32, 128, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 4, 1, 0, 0, 0);

world[6] = scrCreateObject(scrCreateWalls(160, 32, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);

// Living room door
ins = instance_create(160, 32, objDoor);
ins.target = scrArray(rooHouseLivingR, 208, 496, 0);
ins.z = 0;
