// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_transitions() {
	// @arg mode sets the transition mode 
	// @arg target sets the target room for GOTO

	with (obj_transition)
	{
		mode = argument[0];
		if (argument_count > 1) target = argument[1];
	}


}
