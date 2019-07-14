draw_set_font(fnt_reg);
draw_text_color(5, 55, "Kills: " + string(global.kills),
	c_aqua, c_aqua, c_aqua, c_aqua, 1);

if (player.hp > 0) {
	draw_sprite(spr_heart, 0, -5, 0)	
}

if (player.hp > 1) {
	draw_sprite(spr_heart, 0, 40, 0)	
}

if (player.hp > 2) {
	draw_sprite(spr_heart, 0, 90, 0)	
}