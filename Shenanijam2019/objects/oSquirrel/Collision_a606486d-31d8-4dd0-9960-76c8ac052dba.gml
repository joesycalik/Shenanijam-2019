audio_play_sound(snd_squirrel_scratch, 0, false);
with (other) {
	if (iframes == 0 && hp > 0) {
		hp--;
		iframes = 10;
	}
}