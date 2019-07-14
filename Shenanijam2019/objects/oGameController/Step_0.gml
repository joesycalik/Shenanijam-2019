global.seconds_passed = delta_time/1000000;



if (global.enemy_count < 10){
	var low, high, left, right, up, down, getX, getY;

	low= 10; //The range outside the view, change these to suit
	high= 30;

	left = view_xview - random_range(low,high);
	right = view_wview + random_range(low,high);
	above = view_yview - random_range(low,high);
	below = view_hview + random_range(low,high);

	getX = choose(left, right);
	getY = choose(above, below);

	instance_create_depth(getX, getY, 0, oSquirrel);
	global.enemy_count++;
}