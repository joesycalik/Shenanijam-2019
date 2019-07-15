splat_sprites[0] = spr_splat_1;
splat_sprites[1] = spr_splat_2;
splat_sprites[2] = spr_splat_3;
splat_sprites[3] = spr_splat_4;

randomize();

sprite_index = splat_sprites[irandom_range(0, 3)];

image_angle = random_range(0, 360);
depth = 1;
