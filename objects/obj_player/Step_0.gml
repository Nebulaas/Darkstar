/// @description Insert description here
// You can write your code in this editor

// performing the movement
var horizontal_move = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var vertical_move = keyboard_check(ord("S")) - keyboard_check(ord("W"));

x += 4 * horizontal_move;
y += 4 * vertical_move;

