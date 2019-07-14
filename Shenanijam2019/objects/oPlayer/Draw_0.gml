draw_self();

if (holding_seed) {
	draw_sprite_ext(spr_held_seed, 0, x, y, sign(image_xscale), 1, 0, c_white, 1);	
}