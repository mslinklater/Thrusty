/// @description

if( keyboard_check_pressed(vk_escape))		// Quit
{
	game_end();
}

if( keyboard_check_pressed(vk_f1))			// Edit mode
{
	room_goto(rm_edit);
}

if( keyboard_check_pressed(vk_f2))			// Play mode
{
	room_goto(rm_play);
}

if( keyboard_check_pressed( ord("F") ) )	// Full screen toggle
{
	window_set_fullscreen(!window_get_fullscreen());
	
	with(obj_userSettingsManager)
	{
		event_user(kEventSave);
	}
}