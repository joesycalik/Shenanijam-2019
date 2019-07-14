if (!other.resting && !dead && !other.dead) {
	with (other) {
		//instance_destroy();
		throwsp = 0;
		dead = true;
	}
	
	dead = true;
	global.kills++;
	sprite_index = spr_splat;
	depth = 1;
	dead_x = x;
	dead_y = y;
}

