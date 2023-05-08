if global.morto == false and room != RmBoss{
	padrao_obstaculo = irandom(1);
	
	switch padrao_obstaculo{
	
	case 0 : var _inst = instance_create_layer(room_width,95,"Instances",oDonut);
			_inst.image_xscale = choose(1,-1);
			
	break;		
	}
	

alarm[3] = irandom_range(room_speed * 0.8, room_speed * 6);
}
