global.seconds_passed = 0;
global.tilemap = layer_tilemap_get_id("Collision");

instance_create_depth(0, 0, 0, oCamera);
global.enemy_count = 0;
global.kills = 0;