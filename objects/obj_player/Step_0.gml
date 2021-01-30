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

//Find out if there is a tile horizontally
if (tilemap_get_at_pixel(collision_map,x + hsp,y))
{
	//Mod returns a remainder. How many times does tile size go into the x? Puts us at the very left of the tile.
	x -= x mod TILE_SIZE
	//Move me to the right if I am in the tile, and need to go to the right
	if (sign(hsp) == 1) x += TILE_SIZE - 1;
	//Stop me
	hsp = 0;
}

//Find out if there's a collidable object horizontally
if(place_meeting(x+hsp,y,par_collidable))
{
	while(!place_meeting(x+sign(hsp),y,par_collidable))
	{
		x = x + sign(hsp);
	}
	hsp = 0
}
x = x + hsp;


//Now set my horizontal movement
x = x + hsp;

//Find out if there is a tile vertically
if (tilemap_get_at_pixel(collision_map,x,y + vsp))
{
	//Mod returns a remainder. How many times does tile size go into the x? Puts us at the very left of the tile.
	y -= y mod TILE_SIZE
	//Move me to the right if I am in the tile, and need to go to the right
	if (sign(vsp) == 1) y += TILE_SIZE - 1;
	//Stop me
	vsp = 0;
}

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

//Animation controls - what sprite index we should be using
var v_old_sprite = sprite_index;

//If I am moving, set my direction and my sprite to the moving sprite. If not, I am idle.
if (h_move != 0) or (v_move != 0)
{
	//Only set my direction when I have pressed a key / moved
	//Also makes certain we always get a direction, regardless of the input value (what if we had more than 360?)
	direction = input_direction;
	sprite_index = spr_player4_anim_strip;
	
} else sprite_index = spr_player4_idle_anim;

//When we start moving again, make sure we start from the beginning of the animation
if (v_old_sprite != sprite_index) local_frame = 0;

//Update my image sprite
scr_player_animate();

//Let's get the direction angle we want to move in
input_direction = point_direction(0,0,key_right - key_left,key_down - key_up)
//If it equals zero, it cancels each other out to don't move. If it isn't 0, we do want to move.
input_magnitude = ( key_right - key_left != 0) || (key_down - key_up != 0)