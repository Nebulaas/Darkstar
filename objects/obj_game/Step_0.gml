/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_escape) && !instance_exists(obj_title_menu) && !instance_exists(obj_transition_fade)) 
{
	instance_create_layer(0, 0, "Menus", obj_title_menu);
}









