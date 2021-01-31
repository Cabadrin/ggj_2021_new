/// @description Movement controls 

//Where is the player going?
if(hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_up = keyboard_check_pressed(vk_up) or keyboard_check(ord("W"));
	key_down = keyboard_check_pressed(vk_down) or keyboard_check(ord("S"));
	key_activate = keyboard_check_pressed(vk_space);
	key_attack = keyboard_check_pressed(vk_shift);
	key_item = keyboard_check_pressed(vk_alt);
}
else
{
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
	key_activate = 0;
	key_attack = 0;
	key_item = 0;
}

input_direction = point_direction(0,0,key_right - key_left,key_down - key_up);

//Move me in the direction that is right - left. If right is 0, move me full speed to the left, etc.
var h_move = key_right - key_left;
var v_move = key_down - key_up;

hsp = h_move * spd_walk;

vsp = v_move * spd_walk;


//Find out if there's a collidable object horizontally
if(place_meeting(x+hsp,y,par_collidable))
{
	while(!place_meeting(x+sign(hsp),y,par_collidable))
	{
		x = x + sign(hsp);
	}
	hsp = 0
}
x += hsp;


//Find out if there's a collidable object vertically
if(place_meeting(x,y+vsp,par_collidable))
{
	while(!place_meeting(x,y+sign(vsp),par_collidable))
	{
		y = y + sign(vsp);
	}
	//Stop me
	vsp = 0
}
//Now set my vertical movement
y += vsp;

if (vsp != 0) || (hsp != 0)
{
	if (playing_walk < 0)
	{
		audio_play_sound(choose(snd_move_one,snd_move_two,snd_move_three,snd_move_four,snd_move_five,snd_move_six),4,false);
		playing_walk = 30
	}
}
playing_walk = playing_walk - 1;

//Animation controls - what sprite index we should be using
var v_old_sprite = sprite_index;

//If I am moving, set my direction and my sprite to the moving sprite. If not, I am idle.
if (h_move != 0) or (v_move != 0)
{
	//Only set my direction when I have pressed a key / moved
	//Also makes certain we always get a direction, regardless of the input value (what if we had more than 360?)
	direction = input_direction;
	sprite_index = spr_mapwell_idle;
	
} else sprite_index = spr_mapwell_idle;

//When we start moving again, make sure we start from the beginning of the animation
if (v_old_sprite != sprite_index) local_frame = 0;

//Update my image sprite
scr_player_animate();

//Speed me up gradually if something slowed me down
if (spd_walk < 4)
{
	spd_walk = min(spd_walk + 0.01, 4);
}

//Let's get the direction angle we want to move in
input_direction = point_direction(0,0,key_right - key_left,key_down - key_up)
//If it equals zero, it cancels each other out to don't move. If it isn't 0, we do want to move.
input_magnitude = ( key_right - key_left != 0) || (key_down - key_up != 0)


if (global.player_health <= 0)
{
	room_goto(room_failed);
}