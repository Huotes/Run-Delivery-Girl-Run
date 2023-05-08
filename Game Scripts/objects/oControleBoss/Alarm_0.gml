if global.morto == false{
	padrao_obstaculo = irandom(1);
	
	switch padrao_obstaculo{
	
	case 0 : var _inst = instance_create_layer(room_width,115,"Instances",oObstaculo);
			_inst.image_index = 0;
			
	break;		
	}
	

alarm[0] = irandom_range(room_speed * 0.8, room_speed * 1);
}
