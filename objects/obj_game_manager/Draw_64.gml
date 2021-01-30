if (instance_exists(obj_player))
{
	killtextscale = max(killtextscale * 0.95, 1);
	scr_drawsettext(c_black,fnt_sign,fa_right, fa_top);
	//Draw the shadow for the text. It's drawn first so the white text comes over it later
	draw_text_transformed(RESOLUTION_W-8,32,string(round(obj_player.player_health)) + " Durability Remaining ",killtextscale,killtextscale,0);
	draw_set_color(c_white)
	//Now draw the white text
	draw_text_transformed(RESOLUTION_W-10,30,string(round(obj_player.player_health)) + " Durability Remaining ",killtextscale,killtextscale,0);
}