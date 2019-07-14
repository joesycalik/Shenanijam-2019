key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
//key_drop = keyboard_check_released(ord("E"));
key_fire = keyboard_check_released(ord("J"));
key_aim = keyboard_check_pressed(ord("J"));
//key_dash = keyboard_check_pressed(ord("F"));
key_dive = keyboard_check_pressed(ord("F"));

var move = key_right - key_left;

if (move > 0 && image_xscale < 0) {
	image_xscale *= -1;
}
else if (move < 0 && image_xscale > 0) {
	image_xscale *= -1;	
}

dash = 1;
//if (key_dash) {
//	dash = 20;	
//}

hsp = move * (walksp * dash);

vsp = (vsp) + grv;

if (key_jump) {
	vsp = -10;
}
else if (key_dive) {
	vsp = 15;	
}

var bbox_side;

// Horizontal Collision
//if (place_meeting(x + hsp, y, oGround)) {
	//while (!place_meeting(x + sign(hsp), y, oGround)) {
	//	x = x + sign(hsp);
	//}
	//hsp = 0;
//}

//Tilemap collision
if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(global.tilemap, bbox_side + ceil(hsp), bbox_top) != 0) ||
	(tilemap_get_at_pixel(global.tilemap, bbox_side + ceil(hsp), bbox_bottom) != 0) {
	if (hsp > 0) x = x - (x mod 64) + 63 - (bbox_right - x);
	else x = x - (x mod 64) - (bbox_left - x);
	hsp = 0;
}

x = x + hsp;// + (sign(hsp) * key_dash * 10);

// Vertical Collision
//if (place_meeting(x, y + vsp, oGround)) {
	//while (!place_meeting(x, y + sign(vsp), oGround)) {
	//	y = y + sign(vsp);
	//}
	//vsp = 0;
//}

//Tilemap collision
altered_vsp = vsp;
if (altered_vsp > 0) altered_vsp = ceil(altered_vsp) else altered_vsp = floor(altered_vsp);

if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(global.tilemap, bbox_left, bbox_side + altered_vsp) != 0) ||
	(tilemap_get_at_pixel(global.tilemap, bbox_right, bbox_side + altered_vsp) != 0) {
	if (vsp > 0) y = y - (y mod 64) + 63 - (bbox_bottom - y);
	else y = y - (y mod 64) - (bbox_top - y);
	vsp = 0;
}

y = y + vsp;// + (sign(vsp) * key_dash * 100);

//if (holding_seed && key_drop) {
	//holding_seed = false;
	//sprite_index = spr_bird_without_seed;
	//instance_create_depth(x, y, 0, oSeed);	
//}

if (key_aim) {
	aiming = true;
	sprite_index = spr_bird_tilted;
}

if (holding_seed && key_fire) {
	aiming = false;
	sprite_index = spr_bird;
	holding_seed = false;
	
	var new_seed = instance_create_depth(x, y, 0, oSeed);
	new_seed.resting = false;
	if (image_xscale > 0) {
		new_seed.throw_dir = 1;
	} else {
		new_seed.throw_dir = -1;	
	}
	throwsp = THROW_SPEED;
}

if (iframes > 0) {
	iframes = iframes - 10 * global.seconds_passed;	
}
else {
	iframes = 0;
}

if (hp == 0) {
	global.game_over = true;
	instance_destroy();
}