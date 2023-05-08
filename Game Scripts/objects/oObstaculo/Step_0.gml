if global.morto == false{
x -= abs(global.velocidade);

if x <= -100{instance_destroy();}
}
if place_meeting(x,y,oPlayer) and global.morto == true {image_index = 1;}