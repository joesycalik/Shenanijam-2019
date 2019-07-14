alpha += 1 / room_speed; //1 per second

// 60 frames per second
// alpha += 1/60th
// 1 second -> alpha = 1

var interface_width = display_get_gui_width();
var interface_height = display_get_gui_height();

draw_set_alpha(min(0.75, alpha));
draw_rectangle_color(0, 0, interface_width, interface_height, 
	c_gray, c_gray, c_gray, c_gray, false);
draw_set_alpha(0.75);

font_set(fnt_reg, fa_center, fa_bottom);
//draw_text_color(interface_width * 0.5, interface_height * 0.5 + 100, "YA DEAD",
//	c_white, c_white, c_white, c_white, alpha);
draw_text_color(interface_width * 0.5, interface_height * 0.5 - 25, 
	"Kills: " + string(global.kills), c_maroon, c_maroon, c_maroon, c_maroon, alpha);

font_set(fnt_reg, fa_center, fa_center);
draw_text_color(interface_width * 0.5, interface_height * 0.5, 
	"Wave: " + string(global.wave_num), c_blue, c_blue, c_blue, c_blue, alpha);

font_set(fnt_reg, fa_center, fa_top);
draw_text_color(interface_width * 0.5, interface_height * 0.5 + 25, "Press any key",
	c_black, c_black, c_black, c_black, alpha);