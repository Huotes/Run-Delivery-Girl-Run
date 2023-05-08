if global.morto == false{
x -= abs(global.velocidade + -2 );

if x <= -100{instance_destroy();}

floatdir += floatspd;
y = ystart + dsin(floatdir)*4;
if place_meeting(x,y,oPlayer){
	audio_play_sound(snd_crunch,8,false);
	global.donut += 1;
	instance_destroy();}
}

