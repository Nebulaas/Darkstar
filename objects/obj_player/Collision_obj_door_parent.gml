/// @description Insert description here
// You can write your code in this editor

hspeed = 0;
vspeed = 0;

if (!instance_exists(obj_transition_parent))
{
	//room transition & changing destination
	var _target_room = rm_title_load;
	if (room == rm_title_load) _target_room = rm_game;
	scr_fade_to_room(_target_room, 60, c_black);
}

	








