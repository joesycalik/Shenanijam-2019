if (instance_exists(follow_target)) {
	x = lerp(x, follow_target.x, 0.1);
	y = lerp(y, follow_target.y, 0.1);
}

var cam = view_camera[0];
var view_width = camera_get_view_width(cam);
var view_height = camera_get_view_height(cam);

camera_set_view_pos(cam, x - view_width * 0.5, y - view_height * 0.5);