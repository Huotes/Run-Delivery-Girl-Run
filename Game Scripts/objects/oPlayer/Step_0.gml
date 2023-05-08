#region Movimentação
if global.morto == false{
cima = keyboard_check(vk_space);
direita = keyboard_check(vk_right) or keyboard_check(ord("D")) ;
esquerda = keyboard_check(vk_left) or keyboard_check(ord("A"));
hveloc = (direita - esquerda) * veloc;

if endnivel == true{hveloc += +4;}
	
if endnivel == false{hveloc = (direita - esquerda) * veloc;}
if !place_meeting(x,y+1,oWall){
	//queda
	vspd += gravidade;	
	
		if vspd > 0{
			falling = true;
			}
			}else{
				//pulo
				if cima{
					vspd = jump;
					sprite_index = Pulo;
					audio_play_sound(snd_pulo,1,false);
					}
					}
		
		var _inst = instance_place(x,y + vspd, oWall);
		if _inst{while !instance_place(x,y+ sign(vspd), oWall){y += sign(vspd);}
		falling = false;
		vspd = 0;
		sprite_index = Candy;
		}
	
	if place_meeting(x + hveloc, y, oWall){
		while !place_meeting(x + sign(hveloc),y,oWall){x += sign(hveloc);}
		hveloc = 0;}
	
		y += vspd; 
		x += hveloc;
		
	
		if direita{
	direc = 0;
	sprite_index = Candy;
	}else if esquerda{
	direc = 1;
	sprite_index = Freiar;
	}


#endregion


//morte 
if place_meeting(x,y,oObstaculo)  and global.morto == false{
	global.morto = true;
	audio_play_sound(snd_hit,1,false);	
}


if place_meeting(x,y,oDemonio)  and global.morto == false{
	global.morto = true;
	audio_play_sound(snd_hit,1,false);
	}

if global.morto == true {sprite_index = Morri;
	if !instance_exists(oSkate){instance_create_layer(x,y+10,"Instances",oSkate);}
	}
}

if global.morto == true and y >= 16 and !place_meeting(x,y,oWall){
	y += +5; 
	x += +5;
	
	}
	if global.level1complete == true and endnivel == true and room == Room1{
if !instance_exists(oInvocaFase2){instance_create_depth(x,y,-9999,oInvocaFase2);
	endnivel = false;
	}
}

if global.level2complete == true and endnivel == true and room == Room2{
if !instance_exists(oInvocaFase3){instance_create_depth(x,y,-9999,oInvocaFase3);
	endnivel = false;
	global.level1complete = false;
	}
}

if global.level3complete == true and endnivel == true and room == Room3{
if !instance_exists(oInvocaFase4){instance_create_depth(x,y,-9999,oInvocaFase4);
	endnivel = false;
	global.level2complete = false;
	}
}

if global.level4complete == true and endnivel == true and room == Room4{
if !instance_exists(oInvocaFaseBoss){instance_create_depth(x,y,-9999,oInvocaFaseBoss);
	endnivel = false;
	global.level3complete = false;
	}
}