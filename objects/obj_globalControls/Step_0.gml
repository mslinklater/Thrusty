/// @description

if( keyboard_check(vk_escape))
{
	game_end();
}

if( keyboard_check(vk_f1))
{
	room_goto(rm_edit);
}
if( keyboard_check(vk_f2))
{
	room_goto(rm_play);
}
