/// @description Core game manager code and global variables
//Always randomize values before we start
randomize();

global.gamePaused = false;
global.textSpeed = 0.75;
global.i_camera = instance_create_layer(10,10,layer,obj_camera);
global.attacks = 0;
global.losses = 0;
global.wins = 0;
global.restart = 0;
killtextscale = 1;
global.game_score = 0;
global.score_this_room = 0;
global.item_one = false;
global.item_two = false;
global.item_three = false;
global.quest_stage = 0;
global.damage_cooldown = 0;

//Make these objects invisible if they're not already
//We don't want players to see them
object_set_visible(obj_room_transition, false);
object_set_visible(obj_wall, false);
object_set_visible(obj_damage_volume, false);

//Set in macros
surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
//room_goto(ROOM_START);