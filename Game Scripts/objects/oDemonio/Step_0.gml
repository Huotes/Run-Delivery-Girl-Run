if global.morto == false{
x -= abs(global.velocidade + -2 );

if x <= -100{instance_destroy();}

floatdir += floatspd;
y = ystart + dsin(floatdir)*6;}