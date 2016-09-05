// scrDrawWeapon()

//weaponAnim = ANIM_ATTACK;
//weaponAnimInd = 4;

if (!is_array(weapon)){ exit; }

var frame1 = weapon[weaponAnim, floor(weaponAnimInd)],
    frame2 = weapon[weaponAnim, 1];

if (floor(weaponAnimInd + 1) <= weapon[weaponAnim, MDL_NUM_FRAMES]){
    frame2 = weapon[weaponAnim, floor(weaponAnimInd + 1)];
}

var fr = frac(weaponAnimInd),
    wrx = scrMix(frame1[ANIM_FRAME_RX], frame2[ANIM_FRAME_RX], fr),
    wry = scrMix(frame1[ANIM_FRAME_RY], frame2[ANIM_FRAME_RY], fr),
    wrz = scrMix(frame1[ANIM_FRAME_RZ], frame2[ANIM_FRAME_RZ], fr),
    wx = scrMix(frame1[ANIM_FRAME_X], frame2[ANIM_FRAME_X], fr),
    wy = scrMix(frame1[ANIM_FRAME_Y], frame2[ANIM_FRAME_Y], fr),
    wz = scrMix(frame1[ANIM_FRAME_Z], frame2[ANIM_FRAME_Z], fr);

/*wx = posx;
wy = posy;
wz = posz;

wrx = rotx;
wry = roty;
wrz = rotz;/**/
    
draw_set_color(c_white);
shader_set(shdBasic);

scrUniformLights(shdBasic);

shader_set_uniform_f_array(global.UNIFORM_REPEAT, weapon[0, MDL_REPEAT]);
shader_set_uniform_f_array(global.UNIFORM_UV, weapon[0, MDL_UVS]);

d3d_transform_set_identity();

d3d_transform_set_translation(0, 0, 0);

d3d_transform_add_rotation_x(wrx);
d3d_transform_add_rotation_y(wry);
d3d_transform_add_rotation_z(wrz);
d3d_transform_add_translation(wx, wy, wz);

d3d_transform_add_rotation_y(zdirection);
d3d_transform_add_rotation_z(direction);

d3d_transform_add_translation(x, y, z+height);

d3d_model_draw(weapon[0, MDL_MODEL], 0, 0, 0, weapon[0, MDL_TEXTURE]);

d3d_transform_set_identity();

shader_reset();
