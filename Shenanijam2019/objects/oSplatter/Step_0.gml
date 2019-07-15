image_alpha -= 0.05 * global.seconds_passed;
if (image_alpha <= 0) {
	instance_destroy();
	global.enemy_count--;
}