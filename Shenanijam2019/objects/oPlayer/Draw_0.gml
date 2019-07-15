draw_self();

if (holding_seed) {
	if (grounded) {
		if (walking_sprite == 0) {
			draw_sprite_ext(spr_walking_wrench_1, 0, x, y, sign(image_xscale), 1, 0, c_white, 1);
		}
		else {
			draw_sprite_ext(spr_walking_wrench_2, 0, x, y, sign(image_xscale), 1, 0, c_white, 1);	
		}
		
	}
	else {
		if !aiming draw_sprite_ext(spr_held_seed, 0, x, y, sign(image_xscale), 1, 0, c_white, 1)
		else draw_sprite_ext(spr_held_seed_tilted, 0, x, y, sign(image_xscale), 1, 0, c_white, 1);
	}
}