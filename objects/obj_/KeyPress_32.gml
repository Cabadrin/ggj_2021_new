//If player is within 64px of the sign and right-clicks, show the sign text
if (point_in_circle(obj_player.x,obj_player.y,x,y,128)) && (!instance_exists(obj_text))
{
	//Create a new obj_text instance 64px above on the current layer
	with (instance_create_layer(x,y - 64,"foreground_decor",obj_text))
	{
		//Render the text that lives in the object
		if (global.item_three == false)
		{
		text = "Even more coins! And they're in mint condition\nI'm sure someone will want to know about this";
		global.item_three = true;
		}
		else
		{
		text = "Better not knock them down ...";
		}
		length = string_length(text);
		with (obj_camera)
		{
			//Make the camera look at the "other" object, the sign
			follow = other.id;
		}
	}
}