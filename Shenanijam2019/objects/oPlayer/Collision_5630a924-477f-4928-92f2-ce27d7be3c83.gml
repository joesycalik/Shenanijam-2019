if (!holding_seed && !just_thrown) {
	
	holding_seed = true;
	//sprite_index = spr_bird_with_seed;
	
	with (other) {
		instance_destroy();	
	}
}