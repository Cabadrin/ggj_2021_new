global.damage_cooldown = global.damage_cooldown - 1;


if (global.player_health <= 0)
{
	room_goto(room_failed);
}