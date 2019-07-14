global.seconds_passed = 0;
global.tilemap = layer_tilemap_get_id("Collision");

instance_create_depth(0, 0, 0, oCamera);
global.enemy_count = 0;
global.kills = 0;
global.game_over = false;

global.wave_num = 1;
global.wave_enemies = 4;

global.enemies_spawned_this_wave = 0;
global.allowEnemySpawns = true
global.enemies_killed_this_wave = 0;

global.max_enemy_speed = 3;