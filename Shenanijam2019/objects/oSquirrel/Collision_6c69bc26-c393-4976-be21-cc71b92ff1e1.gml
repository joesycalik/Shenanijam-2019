if (!other.resting && !dead && !other.dead) {
	with (other) {
		//instance_destroy();
		throwsp = 0;
		dead = true;
	}
	
	dead = true;
	global.kills++;
	global.enemies_killed_this_wave++;
	sprite_index = splat_sprites[irandom_range(0, 3)];
	image_angle = random_range(0, 360);
	depth = 1;
	dead_x = x;
	dead_y = y;
}

