// scrLoadWorld(0: WorldId)

switch (argument[0]){
    case WORLD.HOUSE_BEDROOM:
        scrLoadHBedroom();
        break;
        
    case WORLD.HOUSE_HALLWAY:
        scrLoadHHallway();
        break;
        
    case WORLD.HOUSE_BATHROOM:
        scrLoadHBathroom();
        break;
        
    case WORLD.HOUSE_STUDY:
        scrLoadHStudy();
        break;
        
    case WORLD.HOUSE_LIVING_ROOM:
        scrLoadHLivingR();
        break;
        
    case WORLD.HOUSE_STORAGE:
        scrLoadHStorage();
        break;
        
    case WORLD.HOUSE_LAUNDRY:
        scrLoadHLaundry();
        break;
        
    case WORLD.HOUSE_BALCONY:
        scrLoadHBalcony();
        break;
        
    case WORLD.HOUSE_KITCHEN:
        scrLoadHKitchen();
        break;
}
