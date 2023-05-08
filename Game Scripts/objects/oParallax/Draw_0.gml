//utiliza do posicionamento da camera do jogador para movimentar o parallax
var _canx = camera_get_view_x(view_camera[0]);
var _cany = camera_get_view_y(view_camera[0]);

//variaveis para simplificar de ficar colocando números
var _p0 = 1;
var _p1 = .8;
var _p2 = .6;
var _p3 = .4;


//céu
draw_sprite_tiled(sFundo, 0,_canx*_p0, _cany*_p0);
//montanhas
draw_sprite_tiled(sFundo, 1,_canx*_p1, _cany*_p1);
//terreno1
draw_sprite_tiled(sFundo, 2,_canx*_p2, _cany*_p2);
//terreno2
draw_sprite_tiled(sFundo, 3,_canx*_p3, _cany*_p3);


