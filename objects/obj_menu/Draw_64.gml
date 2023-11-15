/// @description Insert description here
// You can write your code in this editor

draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_set_color(c_white)

var m;
for (m = 0; m < array_length(menu); m += 1)
{
	draw_sprite(menu[m], 0, x + space, y + (m * space))
}

draw_sprite(spr_menu_select, 0, x + 16, y + menu_position * space)