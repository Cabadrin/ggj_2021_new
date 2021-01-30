//Assuming we're not in mode off, then execute the transition

if (mode != TRANS_MODE.OFF)
{
	if (mode == TRANS_MODE.INTRO)
	{
		//You could so something simpler like 'percent = max(0,percent - 0.05)' if you wanted a constant speed animation
		percent = max(0,percent - max((percent/10),0.005));
		
	}
	else
	{
		//1.2 instead of 1 to add an extra 0.2 seconds to give a bit of a delay, not an instant restart animation
		percent = min(1.2, percent + max(((1.2 - percent)/10),0.005));
		
	}
	//If we reached either end of the animation
	if (percent == 1.2) || (percent == 0)
	{
		//Then let's transition to another mode. This is like a series of if statements, using switch to handle multiple cases.
		switch(mode)
		{
			//This would go off if the mode equalled TRANS_MODE.INTRO
			case TRANS_MODE.INTRO:
			{
				//Let's turn off the animation if we're done
				mode = TRANS_MODE.OFF;
				//Include break statements to avoid situations where multiple cases could be true
				break;
			}
			case TRANS_MODE.NEXT:
			{
				//Animate and then send me to the next room in GameMaker
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				//Send me to the selected room
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}