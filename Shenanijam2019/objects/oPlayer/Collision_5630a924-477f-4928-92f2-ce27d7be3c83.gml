if (keyboard_check(ord("K")) && !holding_seed) {
	
	holding_seed = true;
	//sprite_index = spr_bird_with_seed;
	
	with (other) {
		instance_destroy();	
	}
}