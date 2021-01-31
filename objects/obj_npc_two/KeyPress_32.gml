//If player is within 64px of the sign and right-clicks, show the sign text
if (point_in_circle(obj_player.x,obj_player.y,x,y,128)) && (!instance_exists(obj_text))
{
	//Create a new obj_text instance 64px above on the current layer
	with (instance_create_layer(x,y - 64,"foreground_decor",obj_text))
	{
		//Render the text that lives in the object
		if (global.quest_stage == 3)
		{
		text = other.text_unfulfilled;
		global.quest_stage = 4;
		}
		else if (global.item_two == true)
		{
		text = other.text_fulfilled;
		global.quest_stage = 5;
		}
		length = string_length(text);
		with (obj_camera)
		{
			//Make the camera look at the "other" object, the sign
			follow = other.id;
		}
	}
}