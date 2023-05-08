


if global.morto == false and room == Room1 { 
	global.velocidade = -3; 
	layer_hspeed("Background",global.velocidade);
}

if global.morto == false and room == Room2 { 
	global.velocidade = -4; 
	layer_hspeed("Background",global.velocidade);
}

if global.morto == false and room == Room3 { 
	global.velocidade = -5; 
	layer_hspeed("Background",global.velocidade);
}

if global.morto == false and room == Room4 { 
global.velocidade = -6; 
layer_hspeed("Background",global.velocidade);
}

if global.morto == true {global.velocidade = 0; layer_hspeed("Background",0);}

