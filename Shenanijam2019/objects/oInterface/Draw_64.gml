font_set(fnt_reg, fa_left, fa_top);
draw_text_color(5, 55, "Kills: " + string(global.kills),
	c_maroon, c_maroon, c_maroon, c_maroon, 1);

if (player.hp > 0) {
	draw_sprite(spr_heart, 0, -5, 0)	
}

if (player.hp > 1) {
	draw_sprite(spr_heart, 0, 40, 0)	
}

if (player.hp > 2) {
	draw_sprite(spr_heart, 0, 90, 0)	
}

var interface_width = display_get_gui_width();
var interface_height = display_get_gui_height();

font_set(fnt_reg, fa_right, fa_top);
draw_text_color(interface_width - 5, 5, "Wave: " + string(global.wave_num),
	c_blue, c_blue, c_blue, c_blue, 1);