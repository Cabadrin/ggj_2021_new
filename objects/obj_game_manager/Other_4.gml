/// @description Layer management

//Turn off the layer that set collisions
layer_set_visible("collidable", false);

//Make these objects invisible if they're not already
object_set_visible(obj_room_transition, false);
object_set_visible(obj_wall, false);
object_set_visible(obj_damage_volume, false);