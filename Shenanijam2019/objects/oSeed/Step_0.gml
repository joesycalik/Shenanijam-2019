vsp = vsp + reg_grv;	

// Vertical Collision
//if (place_meeting(x, y + vsp, oGround)) {
//	throwsp--;
//	while (!place_meeting(x, y + sign(vsp), oGround)) {
//		y = y + sign(vsp);
//	}
//	vsp = 0;
//}

altered_vsp = vsp;
if (altered_vsp > 0) altered_vsp = ceil(altered_vsp) else altered_vsp = floor(altered_vsp);

if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(global.tilemap, bbox_left, bbox_side + altered_vsp) != 0) ||
	(tilemap_get_at_pixel(global.tilemap, bbox_right, bbox_side + altered_vsp) != 0) {
	throwsp--;
	if (vsp > 0) y = y - (y mod 64) + 63 - (bbox_bottom - y);
	else y = y - (y mod 64) - (bbox_top - y);
	vsp = 0;
}

y = y + vsp;

hsp = throw_dir * throwsp;

if (throwsp > 0) {
	throwsp -= THROW_SPEED_DECREMENT_STEP;	
}
else {
	throwsp = 0;	
}

// Horizontal Collision
//if (place_meeting(x + hsp, y, oGround)) {
//	throwsp = 0;
//	while (!place_meeting(x + sign(hsp), y, oGround)) {
//			x = x + sign(hsp);
//	}
//	hsp = 0;
//}

//Tilemap collision
if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(global.tilemap, bbox_side + ceil(hsp), bbox_top) != 0) ||
	(tilemap_get_at_pixel(global.tilemap, bbox_side + ceil(hsp), bbox_bottom) != 0) {
	throwsp = 0;
	if (hsp > 0) x = x - (x mod 64) + 63 - (bbox_right - x);
	else x = x - (x mod 64) - (bbox_left - x);
	hsp = 0;
}

if (!resting) {
	x = x + hsp;
}

if (vsp <= 0 && hsp <= 0 && throw_dir > 0) {
	resting = true;	
} else if (vsp <= 0 && hsp >= 0 && throw_dir < 0){
	resting = true;	
}

if (resting) {
	dead = false;	
}