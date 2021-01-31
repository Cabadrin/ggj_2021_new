/// @description Layer management
if (global.quill == true) layer_set_visible("map_quill",true);
if (global.inkwell == true) layer_set_visible("map_inkwell",true);
if (global.pen == true) layer_set_visible("map_pen",true);
if (global.quest_stage >= 2) layer_set_visible("map_dng_one",true);
if (global.quest_stage >= 4)
{
	layer_set_visible("map_dng_two",true);
	layer_set_visible("map_not_done",false);
	layer_set_visible("map_is_done",true);
}

//Make these objects invisible if they're not already
object_set_visible(obj_room_transition, false);
object_set_visible(obj_wall, false);
object_set_visible(obj_damage_volume, false);
object_set_visible(obj_slow_volume, false);