// scrLoadWorld(0: WorldId)

switch (argument[0]){
    case WORLD_HOUSE_BEDROOM:
        scrLoadHBedroom();
        break;
        
    case WORLD_HOUSE_HALLWAY:
        scrLoadHHallway();
        break;
        
    case WORLD_HOUSE_BATHROOM:
        scrLoadHBathroom();
        break;
        
    case WORLD_HOUSE_STUDY:
        scrLoadHStudy();
        break;
        
    case WORLD_HOUSE_LIVING_ROOM:
        scrLoadHLivingR();
        break;
}
