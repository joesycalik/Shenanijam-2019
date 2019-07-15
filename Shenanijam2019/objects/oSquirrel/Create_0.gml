player = oPlayer;

randomize();
spd = random_range(global.min_enemy_speed, global.max_enemy_speed);
fall_speed = 10;

splat_sprites[0] = spr_splat_1;
splat_sprites[1] = spr_splat_2;
splat_sprites[2] = spr_splat_3;
splat_sprites[3] = spr_splat_4;

current_sprite = 0;

death_sounds[0] = snd_squirrel_death_1;
death_sounds[1] = snd_squirrel_death_2;
death_sounds[2] = snd_squirrel_death_3;
death_sounds[3] = snd_squirrel_death_4;