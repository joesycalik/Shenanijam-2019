if (global.game_over) {
	instance_destroy();	
}

if (!global.game_over) {
	if (player.x > x && image_xscale < 0) {
		image_xscale *= -1;	
	} else if (player.x < x and image_xscale > 0) {
		image_xscale *= -1;	
	}

	xModifier = irandom_range(-200, 200);
	yModifier = irandom_range(-200, 200);
	
	move_towards_point(player.x, player.y, spd);
}
//else if (dead && !global.game_over) {
//	image_alpha -= 0.05 * global.seconds_passed;
//	x = dead_x;
//	y = dead_y;
//	if (image_alpha <= 0) {
//		instance_destroy();
//		global.enemy_count--;
//	}
//}

if (alarm[0] = -1) {
	alarm[0] = 120;	
}

randomize();
var play_sound = irandom_range(0, 1000);
if (play_sound == 750) {
	audio_play_sound(snd_squirrel_growl, 0, false);
}