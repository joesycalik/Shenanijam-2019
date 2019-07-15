randomize();

if (global.allowEnemySpawns) {
	var rand = irandom_range(0, 1000);
	if (rand = 8) {
		instance_create_depth(x, y, -1, oSquirrel);
		global.enemy_count++;
		global.enemies_spawned_this_wave++;
	}
}