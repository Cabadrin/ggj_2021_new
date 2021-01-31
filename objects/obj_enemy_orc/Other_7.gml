/// @description Insert description here
// You can write your code in this editor

if distance_to_object(obj_player) < 200
{
	audio_play_sound(choose(snd_scissors_one,snd_scissors_two,snd_scissors_three),4,false);
}