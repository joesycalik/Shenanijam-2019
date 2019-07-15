if keyboard_check_pressed(ord("C")) && alpha >= 1 {
	room_goto_next();		
}
else if keyboard_check_pressed(vk_space) && alpha >= 1 {
	room_goto(game_room);		
}