var interface_width = display_get_gui_width();
var interface_height = display_get_gui_height();

draw_set_alpha(alpha);
draw_rectangle_color(0, 0, interface_width, interface_height, 
	c_gray, c_gray, c_gray, c_gray, false);

font_set(fnt_reg, fa_center, fa_bottom);
draw_text_color(interface_width * 0.5, 100, 
	"HOW TO PLAY", 
	c_maroon, c_maroon, c_maroon, c_maroon, alpha);
	
font_set(fnt_small, fa_center, fa_top);
draw_text_color(interface_width * 0.5, 100, 
	"Throw your wrench to kill cursed squirrels, but don't let it touch the ground!\nIf your wrench touches the ground or you take two hits, you lose!\n Live through as many waves as you can!", 
	c_black, c_black, c_black, c_black, alpha);


font_set(fnt_reg, fa_center, fa_bottom);
draw_text_color(interface_width * 0.5, interface_height * 0.5, 
	"CONTROLS",
	c_maroon, c_maroon, c_maroon, c_maroon, alpha);

font_set(fnt_small, fa_center, fa_top);
draw_text_color(interface_width * 0.5, interface_height * 0.5, 
	"Move using WASD\nSPACE = Jump\nJ = Throw Wrench\n K = Pick Up Wrench",
	c_black, c_black, c_black, c_black, alpha);
	
font_set(fnt_reg, fa_center, fa_center);
draw_text_color(interface_width * 0.5, interface_height - 50, 
	"Press 'C' to return\nto the main menu", 
	c_maroon, c_maroon, c_maroon, c_maroon, alpha);