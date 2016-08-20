// scrInitTextures()

global.UVS[5] = 0;

var w = 256,
    h = 128;
    
global.UVS[TEX_ROOM_WALL]           = scrArray(  2/w,   0/h,  32/w, 100/h);
global.UVS[TEX_ROOM_HAND]           = scrArray( 46/w,   0/h,  32/w, 100/h);
global.UVS[TEX_ROOM_WALL_H]         = scrArray( 89/w,   4/h,  32/w,  36/h);
global.UVS[TEX_ROOM_FLOOR]          = scrArray( 129/w,   4/h,  32/w,  32/h);
global.UVS[TEX_ROOM_CEIL]           = scrArray( 89/w,  76/h,  32/w,  32/h);

global.UVS[TEX_FULL]                = scrArray(  0, 0, 1, 1);
