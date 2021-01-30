//draw gui just draws on the screen itself, ignores the room coordinates

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	//Draw a black rectangle over the entire GUI, start it on the top-left to the whole width, then bottom-left
	draw_rectangle(0,0,w,percent*h_half,false);
	draw_rectangle(0,h,w,h-(percent*h_half),false);
}
