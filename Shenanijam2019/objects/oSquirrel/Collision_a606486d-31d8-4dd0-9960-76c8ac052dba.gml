with (other) {
	if (iframes == 0 && hp > 0) {
		audio_play_sound(snd_squirrel_scratch, 0, false);
		hp--;
		iframes = 10;
	}
}