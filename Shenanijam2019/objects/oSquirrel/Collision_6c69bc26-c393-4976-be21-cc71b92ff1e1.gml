if (!other.resting && !other.dead) {
	audio_play_sound(snd_impact, -1, false);
	audio_play_sound(death_sounds[irandom_range(0, 3)], 0, false);
	with (other) {
		//instance_destroy();
		throwsp = 0;
		dead = true;
	}
	global.kills++;
	global.enemies_killed_this_wave++;
	instance_create_depth(x, y, 0, oSplatter);
	global.enemy_count--;
	instance_destroy();
}

