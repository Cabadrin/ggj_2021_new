// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @desc DrawSetColor(color,font,halign,valign)
/// @arg color
/// @arg font
/// @arg halign
/// @arg valign
function scr_drawsettext(argument0, argument1, argument2, argument3) {
	//Allows one line setup of drawing vars
	//Requires four arguments so you don't forget any

	draw_set_color(argument0);
	draw_set_font(argument1);
	draw_set_halign(argument2);
	draw_set_valign(argument3);


}
