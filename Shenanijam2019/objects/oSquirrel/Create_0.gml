player = oPlayer;

randomize();
spd = random_range(1, global.max_enemy_speed);

dead = false;
fall_speed = 10;

splat_sprites[0] = spr_splat_1;
splat_sprites[1] = spr_splat_2;
splat_sprites[2] = spr_splat_3;
splat_sprites[3] = spr_splat_4;