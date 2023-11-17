// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

var _room = argument[0];
var _duration = argument[1];
var _color = argument[2]; 

var _instance = instance_create_depth(0, 0, 0, obj_transition_fade)

with (_instance)
{
	target_room = _room;
	duration = _duration;
	color = _color;
}

instance_destroy(obj_title_menu);
