if (body == 0) {
	draw_sprite_ext(spr_body_1, -1, x, y, 1, 1, image_angle, c_white, 1);
}

if (eyes == 0) {
	draw_sprite_ext(spr_eyes_1, -1, x, y, 1, 1, image_angle, c_white, 1);	
}

if (mouth == 0) {
	draw_sprite_ext(spr_mouth_1, -1, x, y, 1, 1, image_angle, c_white, 1);
}
else if (mouth == 1) {
	draw_sprite_ext(spr_mouth_2, -1, x, y, 1, 1, image_angle, c_white, 1);	
}

if (side == 0) {
	draw_sprite_ext(spr_side_1, -1, x, y, 1, 1, image_angle, c_white, 1);	
}

if (tail == 0) {
	draw_sprite_ext(spr_tail_1, -1, x, y, 1, 1, image_angle, c_white, 1);	
}