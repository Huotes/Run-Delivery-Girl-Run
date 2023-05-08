if global.morto == false{
xspd = spd;
x += xspd;
if place_meeting(x,y,oLevelComplete){
	spd = 0;
	oPlayer.endnivel = true;}
}