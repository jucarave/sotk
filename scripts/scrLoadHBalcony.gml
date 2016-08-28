var ins;

world[8] = 0;

world[0] = scrCreateObject(scrCreateFloor(0, 0, 0, 640, 192), texHouse, TEX_HOUSE_BALC_FLOOR, 20, 6, 0, 0, 0);

//world[1] = scrCreateObject(scrCreateCeil(0, 0, 100, 192, 192), texHouse, TEX_HOUSE_BROOM_CEIL, 6, 6, 0, 0, 0);

world[1] = scrCreateObject(scrCreateWalls(0, 0, 0, 96, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 3, 1, 0, 0, 0);
world[2] = scrCreateObject(scrCreateWalls(160, 0, 0, 320, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 10, 1, 0, 0, 0);
world[3] = scrCreateObject(scrCreateWalls(544, 0, 0, 96, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 3, 1, 0, 0, 0);

world[4] = scrCreateObject(scrCreateWalls(0, 32, 0, 32, 160, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 5, 1, 0, 0, 0);
world[5] = scrCreateObject(scrCreateWalls(608, 32, 0, 32, 160, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 5, 1, 0, 0, 0);

world[6] = scrCreateObject(scrCreateWalls(0, 192, 0, 640, 32, 32), texHouse, TEX_HOUSE_BALC_BANISTER, 20, 1, 0, 0, 0);

world[7] = scrCreateObject(scrCreateWalls(96, 0, 0, 64, 32, 100), texHouse, TEX_HOUSE_BALC_DOOR, 1, 1, 0, 0, 0);
world[8] = scrCreateObject(scrCreateWalls(480, 0, 0, 64, 32, 100), texHouse, TEX_HOUSE_BALC_DOOR, 1, 1, 0, 0, 0);

// Living room door
ins = instance_create(480, 0, objDoor);
ins.target = scrArray(rooHouseLivingR, 208, 560, 90);
ins.z = 0;
ins.width = 64;

// Study room door
ins = instance_create(96, 0, objDoor);
ins.target = scrArray(rooHouseStudy, 112, 208, 90);
ins.z = 0;
ins.width = 64;
