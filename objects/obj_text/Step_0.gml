//Where we progress our string

letters += spd;
//Allows you to round up since we're actually doing 1.75 letters left, 2.25 letters left, etc.
text_current = string_copy(text,1,letters);
//This helps us determine the width of the box, since we know the font width and number of letters
draw_set_font(fnt_sign);

//It pretends it's gonna draw the text, if it does, how high would it be in pixels? 
if (h == 0) h = string_height(text);
//Make the width wide enough to contain our text
w = string_width(text_current);

//Now destroy after it's read and the player presses anything
if (letters >= length) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	//After I'm destroyed, put the camer focus back on the player
	with(obj_camera) follow = obj_player;
}