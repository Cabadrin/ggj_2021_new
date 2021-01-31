if (!audio_is_playing(snd_main_theme))
{
	audio_stop_sound(snd_dungeon_theme);
	audio_play_sound(snd_main_theme,25,true);
	audio_sound_gain(snd_main_theme,0,0);
	audio_sound_gain(snd_main_theme,0.1,2000);
}