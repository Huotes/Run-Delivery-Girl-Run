xspd = spd;
yspd = spd;
if !place_meeting(x,y+1,oWall){
	//queda
	yspd += gravidade;	
	
		if yspd > 0{
			falling = true;
			}}
			
		var _inst = instance_place(x,y + yspd, oWall);
		if _inst{while !instance_place(x,y+ sign(yspd), oWall){y += sign(yspd);}
		falling = false;
		yspd = 0;
		}
if parou = true{xspd = 0; yspd = 0;}
			
x += xspd;
y += yspd;
if place_meeting(x,y + yspd,oWall){yspd = 0;}
if place_meeting(x + xspd,y,oWall){xspd = 0;}


