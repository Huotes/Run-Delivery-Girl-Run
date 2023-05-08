
if global.morto == false{
	padrao_obstaculo2 = irandom(1);
	
	switch padrao_obstaculo2{
	
	case 0 : var _inst = instance_create_layer(room_width,120,"Instances",oDemonio);
		    _inst.image_speed = 1;
	break;
	/*
	case 1 : 
	var _yy = -10;
	repeat(3){
	var _inst = instance_create_layer(room_width,75 + _yy,"Instances",oObstaculoAereo);
			_inst.image_index = 0;
			_yy += 10;
	}
	break;
	
	case 2 : 
	var _xx = -20;
	repeat(2){
	var _inst = instance_create_layer(room_width + _xx,75,"Instances",oObstaculoAereo);
			_inst.image_index = 1;
			_xx += 25;
	}
	break;
	
	case 3 : 
	var _xx = -20;
	repeat(3){
	var _inst = instance_create_layer(room_width + _xx,75,"Instances",oObstaculoAereo);
			_inst.image_index = 1;
			_xx += 13;
	}
	break;
	
	case 4 : 
	var _xx = -20;
	repeat(2){
	var _inst = instance_create_layer(room_width + _xx,75,"Instances",oObstaculoAereo);
			_inst.image_index = 2;
			_xx += 25;
				}

			break;
	*/
	}
	
	


alarm[2] = irandom_range(room_speed * 1, room_speed * 4);
}



