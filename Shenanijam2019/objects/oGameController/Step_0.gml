global.seconds_passed = delta_time/1000000;



if (global.enemies_spawned_this_wave < global.wave_enemies){
	global.allowEnemySpawns = true;
	//var low, high, left, right, up, down, getX, getY;

	//low= 10; //The range outside the view, change these to suit
	//high= 30;

	//left = view_xview - random_range(low,high);
	//right = view_wview + random_range(low,high);
	//above = view_yview - random_range(low,high);
	//below = view_hview + random_range(low,high);

	//getX = choose(left, right);
	//getY = choose(above, below);

	//instance_create_depth(getX, getY, 0, oSquirrel);
	//global.enemy_count++;
	//global.enemies_spawned_this_wave++;
}
else {
	global.allowEnemySpawns = false;	
}

if (global.enemies_killed_this_wave == global.wave_enemies) {
	global.wave_num++;
	global.wave_enemies += 6;
	global.enemies_killed_this_wave = 0;
	global.enemies_spawned_this_wave = 0;
	if (global.max_enemy_speed < 10) global.max_enemy_speed += 0.5
	else global.max_enemy_speed = 10;
}


if (global.game_over && !end_screen_spawned) {
	end_screen_spawned = true;
	instance_create_depth(0, 0, 0, oEnd_Screen);	
}