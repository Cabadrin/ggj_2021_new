with (obj_player)
{
	if (global.damage_cooldown <= 0)
	{
		//Apply my instance's damage to the player
		global.player_health = global.player_health - other.damage;
		//Give me 30 frames of cooldown before I can damage the player again
		global.damage_cooldown = 30;
		//Trigger 3 frames of flashing to the player to make them know they're taking damage
		flash = 3;
	}
}