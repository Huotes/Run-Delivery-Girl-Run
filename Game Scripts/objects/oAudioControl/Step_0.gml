if room == RmStart and !audio_is_playing(sndTitle){audio_play_sound(sndTitle,8,true);}
if room == Room1 and !audio_is_playing(sndStages){
	audio_stop_sound(sndTitle);
	audio_play_sound(sndStages,8,true);
	}
	
	if room == RmBoss and !audio_is_playing(sndBoss){
	audio_stop_sound(sndStages);
	audio_play_sound(sndBoss,8,true);
	}

