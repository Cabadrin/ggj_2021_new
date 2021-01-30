//moves to the next room when the player hits it
with (obj_player)
{
	if (hascontrol)
	{
		//hascontrol is defined in the player, this takes away control so people can't move during the transition
		hascontrol = false;
		//other.target refers to this level end object, we need it since we're WITH the player object.
		scr_transitions(TRANS_MODE.GOTO,other.target);
	}
}