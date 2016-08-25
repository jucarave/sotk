var ins;

world[6] = 0;

world[0] = scrCreateObject(scrCreateFloor(0, 0, 0, 192, 192), texHouse, TEX_HOUSE_BATH_FLOOR, 6, 6, 0, 0, 0);

world[1] = scrCreateObject(scrCreateCeil(0, 0, 100, 192, 192), texHouse, TEX_HOUSE_BROOM_CEIL, 6, 6, 0, 0, 0);

world[2] = scrCreateObject(scrCreateWalls(128, 0, 0, 32, 160, 100), texHouse, TEX_HOUSE_BATH_WALL, 2, 1, 0, 0, 0);
world[3] = scrCreateObject(scrCreateWalls(32, 0, 0, 96, 32, 100), texHouse, TEX_HOUSE_BATH_WALL, 3, 1, 0, 0, 0);
world[4] = scrCreateObject(scrCreateWalls(32, 128, 0, 96, 32, 100), texHouse, TEX_HOUSE_BATH_WALL, 3, 1, 0, 0, 0);
world[5] = scrCreateObject(scrCreateWalls(0, 64, 0, 32, 96, 100), texHouse, TEX_HOUSE_BATH_WALL, 3, 1, 0, 0, 0);

world[6] = scrCreateObject(scrCreateWalls(0, 32, 0, 32, 32, 100), texHouse, TEX_HOUSE_BATH_DOOR, 1, 1, 0, 0, 0);

// Living room door
ins = instance_create(0, 32, objDoor);
ins.target = scrArray(rooHouseLivingR, 240, 496, 180);
ins.z = 0;
