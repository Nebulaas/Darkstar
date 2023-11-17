/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_escape) && !instance_exists(obj_menu_parent) && !instance_exists(obj_transition_parent)) 
{
	instance_create_layer(0, 0, "Menus", obj_quick_menu);
}









