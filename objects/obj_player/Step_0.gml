/// @description Insert description here
// You can write your code in this editor

// performing the movement
var _horizontal_move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var _vertical_move = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// if in a transition
if (!instance_exists(obj_transition_parent))
{
	hspeed = 4 * _horizontal_move;
	vspeed = 4 * _vertical_move;

	// updating the sprites accordingly
	// only one sprite at a time, first active sprite overrides the rest
	if (_vertical_move > 0 && _horizontal_move == 0) sprite_index = spr_player_down;
	else if (_vertical_move < 0 && _horizontal_move == 0) sprite_index = spr_player_up;

	if (_horizontal_move > 0 && _vertical_move == 0) sprite_index = spr_player_right;
	else if (_horizontal_move < 0 && _vertical_move == 0) sprite_index = spr_player_left;

	// stopping the animation at the zeroth frame if not moving, continuing the animation otherwise
	if (_horizontal_move == 0 && _vertical_move == 0) 
	{
	    image_index = 0;
	    image_speed = 0;
	} 
	else 
	{
		image_speed = 1;
	}
}

//room collision & transition
//if (place_meeting(x, y, obj_door_parent) && !instance_exists(obj_transition_parent))
//{
//	//room transition & changing destination
//	var _target_room = rm_title_load;
//	if (room == rm_title_load) _target_room = rm_title_options;
//	scr_fade_to_room(_target_room, 60, c_black);
//}

// open quick menu if not already open
if (keyboard_check(vk_escape) && !instance_exists(obj_menu_parent)) instance_activate_object(obj_quick_menu);

//improved collision code so player can move along surfaces
if(place_meeting(x + hspeed, y, obj_collidable_parent))
{
    hspeed = 0;
}
if(place_meeting(x, y + vspeed, obj_collidable_parent))
{
    vspeed = 0;
}