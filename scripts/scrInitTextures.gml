// scrInitTextures()

var w = 256,
    h = 256;
    
global.UVS[TEX_FULL]                = scrArray(  0, 0, 1, 1);
    
global.UVS[TEX_HOUSE_BROOM_WALL_1]           = scrArray(  4/w,    0/h,  32/w, 100/h);
global.UVS[TEX_HOUSE_BROOM_WALL_2]           = scrArray( 46/w,    0/h,  32/w, 100/h);
global.UVS[TEX_HOUSE_BROOM_DOOR]             = scrArray( 89/w,    0/h,  32/w, 100/h);
global.UVS[TEX_HOUSE_BROOM_CARPET]           = scrArray( 220/w,  42/h,  32/w,  32/h);
global.UVS[TEX_HOUSE_BROOM_FLOOR]            = scrArray( 220/w,   4/h,  32/w,  32/h);
global.UVS[TEX_HOUSE_BROOM_CEIL]             = scrArray( 220/w,  80/h,  32/w,  32/h);
global.UVS[TEX_HOUSE_BROOM_WINDOW]           = scrArray( 128/w,   0/h,  64/w, 100/h);

global.UVS[TEX_HOUSE_FLOOR]                  = scrArray( 220/w, 118/h,  32/w,  32/h);
global.UVS[TEX_HOUSE_BALC_DOOR]              = scrArray(  89/w, 102/h,  64/w, 100/h);

global.UVS[TEX_HOUSE_BATH_FLOOR]             = scrArray( 220/w, 156/h,  32/w,  32/h);
global.UVS[TEX_HOUSE_BATH_WALL]              = scrArray(   4/w, 102/h,  32/w, 100/h);
global.UVS[TEX_HOUSE_BATH_DOOR]              = scrArray(  46/w, 102/h,  32/w, 100/h);
