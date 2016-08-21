// scrLoadWorld(0: WorldId)

switch (argument[0]){
    case WORLD_BEDROOM:
        scrLoadBedroom();
        break;
        
    case WORLD_HALLWAY:
        world[0] = scrCreateObject(scrGetModel(MDL_BEDROOM), texBedroom, TEX_FULL, 1, 1, 0, 0, 0);
        break;
}
