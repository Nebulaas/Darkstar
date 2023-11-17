/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_color(c_white)

var _m;
for (_m = 0; _m < array_length(menu); _m += 1)
{
	draw_sprite(menu[_m], 0, x + space, y + (_m * space))
}

draw_sprite(spr_menu_select, 0, x + 16, y + menu_position * space)