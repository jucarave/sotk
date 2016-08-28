var ins;

world[7] = 0;

world[0] = scrCreateObject(scrCreateFloor(0, 0, 0, 288, 256), texHouse, TEX_HOUSE_FLOOR, 9, 8, 0, 0, 0);

world[1] = scrCreateObject(scrCreateCeil(0, 0, 100, 288, 256), texHouse, TEX_HOUSE_BROOM_CEIL, 9, 8, 0, 0, 0);

world[2] = scrCreateObject(scrCreateWalls(0, 0, 0, 288, 32, 100), texHouse, TEX_HOUSE_KITC_WALL, 9, 1, 0, 0, 0);
world[3] = scrCreateObject(scrCreateWalls(0, 32, 0, 32, 192, 100), texHouse, TEX_HOUSE_KITC_WALL, 6, 1, 0, 0, 0);
world[4] = scrCreateObject(scrCreateWalls(256, 32, 0, 32, 192, 100), texHouse, TEX_HOUSE_KITC_WALL, 6, 1, 0, 0, 0);
world[5] = scrCreateObject(scrCreateWalls(0, 192, 0, 96, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 3, 1, 0, 0, 0);
world[6] = scrCreateObject(scrCreateWalls(128, 192, 0, 160, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 5, 1, 0, 0, 0);

world[7] = scrCreateObject(scrCreateWalls(96, 192, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);

// Living room door
ins = instance_create(96, 192, objDoor);
ins.target = scrArray(rooHouseLivingR, 144, 176, 270);
ins.z = 0;
