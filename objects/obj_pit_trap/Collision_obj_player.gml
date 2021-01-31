//Starts invisible, but then is revealed when the player runs into it
visible = true;

with (obj_player)
{
	if (global.damage_cooldown <= 0)
	{
		if (image_index == 2)
		{
			//Apply my instance's damage to the player
			global.player_health = global.player_health - other.damage;
			//Give me 30 frames of cooldown before I can damage the player again
			global.damage_cooldown = 30;
			//Trigger 3 frames of flashing to the player to make them know they're taking damage
			flash = 3;
			audio_play_sound(snd_pit_trap,4,false);
		}
	}
}

if (has_text == true)
{
	with (instance_create_layer(x,y - 64,"foreground_decor",obj_text))
	{
		{
		text = other.flavor_text;
		}
		length = string_length(text);
		with (obj_camera)
		{
			//Make the camera look at the "other" object, the sign
			follow = other.id;
		}
	}
	has_text = false;
}