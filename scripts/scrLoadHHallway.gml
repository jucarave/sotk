var ins;

world[11] = 0;

world[0] = scrCreateObject(scrCreateFloor(0, 0, 0, 128, 256), texHouse, TEX_HOUSE_FLOOR, 4, 8, 0, 0, 0);

world[1] = scrCreateObject(scrCreateCeil(0, 0, 100, 128, 256), texHouse, TEX_HOUSE_BROOM_CEIL, 4, 8, 0, 0, 0);

world[2] = scrCreateObject(scrCreateWalls(0, 0, 0, 32, 64, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 2, 1, 0, 0, 0);
world[3] = scrCreateObject(scrCreateWalls(0, 96, 0, 32, 192, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 5, 1, 0, 0, 0);
world[4] = scrCreateObject(scrCreateWalls(96, 0, 0, 32, 64, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 2, 1, 0, 0, 0);
world[5] = scrCreateObject(scrCreateWalls(96, 96, 0, 32, 160, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 5, 1, 0, 0, 0);
world[6] = scrCreateObject(scrCreateWalls(64, 0, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 1, 1, 0, 0, 0);
world[7] = scrCreateObject(scrCreateWalls(64, 224, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_WALL_2, 1, 1, 0, 0, 0);

world[8] = scrCreateObject(scrCreateWalls(32, 0, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);
world[9] = scrCreateObject(scrCreateWalls(0, 64, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);
world[10] = scrCreateObject(scrCreateWalls(96, 64, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);
world[11] = scrCreateObject(scrCreateWalls(32, 224, 0, 32, 32, 100), texHouse, TEX_HOUSE_BROOM_DOOR, 1, 1, 0, 0, 0);

// Bedroom door
ins = instance_create(32, 0, objDoor);
ins.target = scrArray(rooHouseBedroom, 192, 192, 90);
ins.z = 0;

// Bathroom door
ins = instance_create(0, 64, objDoor);
ins.target = scrArray(rooHouseBathroom, 176, 80, 180);
ins.z = 0;

// Study door
ins = instance_create(32, 224, objDoor);
ins.target = scrArray(rooHouseStudy, 176, 48, 270);
ins.z = 0;

// Living room door
ins = instance_create(96, 64, objDoor);
ins.target = scrArray(rooHouseLivingR, 48, 176, 0);
ins.z = 0;
