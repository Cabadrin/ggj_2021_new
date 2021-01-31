//Draw black bars at the top and bottom of the screen
draw_sprite_ext(spr_pixel,0,0,0,2048,150,0,c_black,1);
draw_sprite_ext(spr_pixel,0,0,618,2048,150,0,c_black,1);

//Set up the color, position, etc. for the subtitles
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_sign);
//Show me the subtitle at the following coordinates
draw_text(640,638,print);

//Let's let them know they can skip it if they want
if (holdspace > 0) or (next > 0)
{
	//Show this 
	draw_text(1000,738,"HOLD SPACE TO SKIP");
}

//Fade in at screen load 
draw_sprite_ext(spr_pixel,0,0,0,2048,1536,0,c_black,a);