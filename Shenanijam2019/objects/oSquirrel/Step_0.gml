if (!dead) {
	if (player.x > x && image_xscale < 0) {
		image_xscale *= -1;	
	} else if (player.x < x and image_xscale > 0) {
		image_xscale *= -1;	
	}

	xModifier = irandom_range(-200, 200);
	yModifier = irandom_range(-200, 200);
	
	move_towards_point(player.x + xModifier, player.y + yModifier, spd);
}
else {
	image_alpha -= 0.05 * global.seconds_passed;
	x = dead_x;
	y = dead_y;
	if (image_alpha <= 0) {
		instance_destroy();
		global.enemy_count--;	
	}
}