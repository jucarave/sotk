// scrInitWeapons()

// Steel pipe
steelPipe[0, MDL_MODEL] = scrGetModel("Items/steelPipe.obj");
steelPipe[0, MDL_TEXTURE] = background_get_texture(texItems);
steelPipe[0, MDL_REPEAT] = scrArray(1, 1);
steelPipe[0, MDL_UVS] = global.UVS[TEX_ITEM_STEELPIPE];

// Idle animation
steelPipe[ANIM_IDLE, MDL_NUM_FRAMES] = 1;
steelPipe[ANIM_IDLE, 1] = scrArray( 16,  5, -26,        16,  0,  40);

// Attack animation
steelPipe[ANIM_ATTACK, MDL_NUM_FRAMES] = 6;
steelPipe[ANIM_ATTACK, 1] = scrArray( 16,   5, -26,        16,   0,  40);
steelPipe[ANIM_ATTACK, 2] = scrArray( 17,   7, -11,        43,  31,  18);
steelPipe[ANIM_ATTACK, 3] = scrArray( 17,   7, -11,        43,  31,  18);
steelPipe[ANIM_ATTACK, 4] = scrArray( 24,  -5, -17,        -7, -77,  35);
steelPipe[ANIM_ATTACK, 5] = scrArray( 24,  -5, -17,        -7, -77,  35);
steelPipe[ANIM_ATTACK, 6] = scrArray( 16,   5, -26,        16,   0,  40);
