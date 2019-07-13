/// @arg speed
/// @arg direction

var spd = argument0;
var dir = argument1;

var xTarg = x + lengthdir_x(spd, dir);
var yTarg = y + lengthdir_y(spd, dir);

if (place_free(xTarg, yTarg)) {
	x = xTarg;
	y = yTarg;
}
else {
	var sweep_interval = 10;
	
	for (var angle = sweep_interval; angle <= 80; angle += sweep_interval) {
		for (var multiplier = -1; multiplier <= 1; multiplier += 2) {
			var angle_to_check = dir + angle * multiplier;
			
			xTarg = x + lengthdir_x(spd, angle_to_check);
			yTarg = y + lengthdir_y(spd, angle_to_check);
			
			if (place_free(xTarg, yTarg)) {
				x = xTarg;
				y = yTarg;
				exit;
			}
		}
	}
}