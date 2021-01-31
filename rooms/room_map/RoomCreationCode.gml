if (!audio_is_playing(snd_map_theme))
{
	audio_stop_all();
	audio_play_sound(snd_map_theme,25,true);
	audio_sound_gain(snd_map_theme,0,0);
	audio_sound_gain(snd_map_theme,0.1,2000);
}
