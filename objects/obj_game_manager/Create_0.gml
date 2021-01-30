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
global.game_score = 0;
global.score_this_room = 0;
global.item_one = false;
global.item_two = false;
global.item_three = false;
global.quest_stage = 0;

//Set in macros
surface_resize(application_surface, RESOLUTION_W, RESOLUTION_H);
//room_goto(ROOM_START);