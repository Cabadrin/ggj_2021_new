if (global.item_one == true) && (global.quest_stage == 1)
{
	object_set_sprite(obj_npc_one, spr_npc2_wave_anim);
	instance_destroy();
	instance_create_layer(x,y,"player",obj_npc_one);
}
else
{
	object_set_sprite(obj_npc_one, spr_npc2_idle);
	instance_destroy();
	instance_create_layer(x,y,"player",obj_npc_one);
}