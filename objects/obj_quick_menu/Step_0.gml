/// @description Insert description here
// You can write your code in this editor

menu_position -= max(keyboard_check_pressed(vk_up),mouse_wheel_up(),0);
menu_position += max(keyboard_check_pressed(vk_down),mouse_wheel_down(),0);

if (menu_position < 0) menu_position = array_length(menu) - 1
if (menu_position > array_length(menu) - 1) menu_position = 0

var _confirm_input;
_confirm_input = max(keyboard_check(vk_space),keyboard_check(vk_enter),0);
if (_confirm_input == 1 && !keyboard_check(vk_escape)) scr_quick_menu();

function scr_quick_menu()
{
	switch(menu_position)
	{
		case 0: instance_destroy(); break;
		case 1: break;
		case 2: break;
		case 3: break;
		case 4: break;
		case 5: scr_fade_to_room(rm_title, 20, c_black); break;
		default: break;
	}
}