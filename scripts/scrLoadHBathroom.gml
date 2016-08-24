var ins;

world[1] = 0;

world[0] = scrCreateObject(scrCreateFloor(0, 0, 0, 224, 192), texHouse, TEX_HOUSE_BATH_FLOOR, 7, 6, 0, 0, 0);

world[1] = scrCreateObject(scrCreateCeil(0, 0, 100, 224, 192), texHouse, TEX_HOUSE_BROOM_CEIL, 7, 6, 0, 0, 0);

world[2] = scrCreateObject(scrCreateWalls(0, 0, 0, 224, 32, 100), texHouse, TEX_HOUSE_BATH_WALL, 7, 1, 0, 0, 0);
world[3] = scrCreateObject(scrCreateWalls(0, 32, 0, 32, 128, 100), texHouse, TEX_HOUSE_BATH_WALL, 4, 1, 0, 0, 0);
world[4] = scrCreateObject(scrCreateWalls(192, 64, 0, 32, 96, 100), texHouse, TEX_HOUSE_BATH_WALL, 3, 1, 0, 0, 0);
world[5] = scrCreateObject(scrCreateWalls(0, 160, 0, 224, 32, 100), texHouse, TEX_HOUSE_BATH_WALL, 7, 1, 0, 0, 0);

world[6] = scrCreateObject(scrCreateWalls(192, 32, 0, 32, 32, 100), texHouse, TEX_HOUSE_BATH_DOOR, 1, 1, 0, 0, 0);

// Bedroom door
ins = instance_create(192, 32, objDoor);
ins.target = scrArray(rooHouseHallway, 48, 80, 0);
ins.z = 0;
