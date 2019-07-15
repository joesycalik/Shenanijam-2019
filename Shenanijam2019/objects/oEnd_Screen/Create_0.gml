with oInterface {
	// Run inside all instances of oInterface
	instance_deactivate_object(id);
}

alpha = 0;


audio_pause_sound(snd_music_1);
audio_play_sound(snd_game_over, 0, false);
alarm[0] = 180.86;