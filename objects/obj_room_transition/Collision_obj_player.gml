//moves to the next room when the player hits it
with (obj_player)
{
	if (hascontrol) && (global.quest_stage >= other.quest_requirement)
	{
		//hascontrol is defined in the player, this takes away control so people can't move during the transition
		hascontrol = false;
		//other.target refers to this level end object, we need it since we're WITH the player object.
		scr_transitions(TRANS_MODE.GOTO,other.target);
	}
	else if (point_in_circle(obj_player.x,obj_player.y,x,y,32)) && (global.quest_stage < other.quest_requirement) && (other.text_cooldown <= 0)
	{
		with (instance_create_layer(x + 128,y - 64,"foreground_decor",obj_text))
		{
			text = "You can't go here yet.\nTry talking around town!"
			length = string_length(text);
			with (obj_camera)
			{
				//Make the camera look at the "other" object, the sign
				follow = other.id;
			}
		}
		obj_player.hsp = 0;
		other.text_cooldown = 120;
	}
}