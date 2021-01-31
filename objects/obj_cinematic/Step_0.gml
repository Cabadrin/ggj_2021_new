//Moving the camera
//Set it to this spot
camera_set_view_pos(view_camera[0],xpos,640);
//Fade out to a max alpha, or reduce fade to 1
if (!fadeout) a = max(a - 0.002, max_fadeout); else a = min(a + 0.002, 1);

//Can't actually add half a letter, so this sets it to one letter every five frames
l += 0.25;
//Where to start the copy (from the first letter), take L number of letters from there
print = string_copy(str,1,l);

if (l > string_length(str)+20) && (next < array_length_1d(strings)-1) //How much longer we want to wait to move to the next string, and only run this if the current position in the array is at least one less than the total size of the array
{
	//Take it back to 0
	l = 0;
	//Increment the next string
	next ++;
	//If we're done, start incrementing the space hold
	if (next == array_length_1d(strings)-1) holdspace ++;
	
}


//Str will always contain the defined line of text
str = strings[next];

//Increment the holdspace if i hold down spacebar
if (keyboard_check_direct(vk_space)) holdspace++;
//Fade us out if we reach the end of the scene or they hold down space
if (holdspace > 80) fadeout = 1;
//Send us to the next room if we fade out
if (a = 1) && (fadeout = 1) room_goto_next();
