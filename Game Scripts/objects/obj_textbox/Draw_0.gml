accept_key = keyboard_check_pressed(vk_space);
textbox_x = camera_get_view_x( view_camera[0]); 
textbox_y = camera_get_view_y( view_camera[0]) + 144; 
//--------------------------setup-----------------------//
if setup = false
    {
	setup = true;
	draw_set_font(Font1);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//paradoxo entre as paginas
	for(var p = 0; p < page_number; p++)
	{
		
		//encontra a quantia de caracteres e assim extende a textbox conforme necessario
		text_length[p] = string_length (text[p]);
		
		// da a posição horizontal a caixa de texto
		 //retrato na esquerda
		 text_x_offset[p] = 80;
		 portrait_x_offset[p] = 8;
		 //retrato na direita
		 if speaker_side[p] == -1 {
			 text_x_offset[p] = 8;
			 portrait_x_offset[p] = 216;
		 }
		
		
		// sem caracteres na posição central
		if speaker_sprite[p] == noone {
		   text_x_offset[p] = 44;
		   }
		//mostrando aos caracteres quando eles devem pular e quebrar a linha
		for (var c = 0; c < text_length[p]; c++)
		{
		
		var _char_pos = c+1;
		
		//lista os caracteres individualmente
		char[c, p] = string_char_at(text[p], _char_pos);
		
		//encaixa corretamente a linha
		var _txt_up_to_char = string_copy( text[p], 1, _char_pos );
		var _current_txt_w = string_width( _txt_up_to_char ) - string_width( char[c, p] );
		
		//incrementando o ultimo espaço livre
		if char[c, p] == " " {last_free_space = _char_pos + 1 };
		
		//faz a linha quebrar
		if _current_txt_w - line_break_offset[p] > line_width
		{
		line_break_pos[ line_break_num[p] , p ] = last_free_space;
		line_break_num[p]++;
		var _txt_up_to_last_space = string_copy( text[p], 1, last_free_space );
		var _last_free_space_string = string_char_at( text[p], last_free_space );
		line_break_offset[p] = string_width( _txt_up_to_last_space ) - string_width( _last_free_space_string );
		}
			
		}
		
		//dando coordenadas aos caracteres
		for (var c = 0; c < text_length[p]; c++)
		{
			
			var _char_pos = c+1;
			var _txt_x = textbox_x + text_x_offset[p] + border;
			var _txt_y = textbox_y + border;
			//encaixa corretamente a linha
		var _txt_up_to_char = string_copy( text[p], 1, _char_pos );
		var _current_txt_w = string_width( _txt_up_to_char ) - string_width( char[c, p] );
		var _txt_line = 0;
		
		//compensando a quebra de linha
		for (var lb = 0; lb < line_break_num[p]; lb++)
		{
			//se a linha de caracteres está sendo atrelada apos a sua quebra
			if _char_pos >= line_break_pos[lb, p]
			{
				var _str_copy = string_copy( text[p], line_break_pos[lb, p], _char_pos-line_break_pos[lb, p] );
				_current_txt_w = string_width( _str_copy );
				
				//relembrando a linha de quando ela deve ser quebrada
				_txt_line = lb+1;// +1 pois ela inicia sendo 0
			}
		}
		
		//adiciona a horizontal e a vertical as novas informações que adicionei
		char_x[c, p] = _txt_x + _current_txt_w;
		char_y[c, p] = _txt_y + _txt_line*line_sep - 32;
		
		}
		
	}
	
	}




//-------------------------escrevendo o texto-----------------------//
if text_pause_timer <= 0
{

if draw_char < text_length[page]
   {
	  draw_char += text_spd;
	  draw_char = clamp(draw_char, 0, text_length[page]);
	  var _check_char = string_char_at( text[page], draw_char );
	  if _check_char == "." || _check_char == "!" || _check_char =="?" || _check_char == ","
	  {
		  text_pause_timer = text_pause_time;
		  if !audio_is_playing(snd[page])
		  {audio_play_sound(snd[page],8,false);}
	  }else{
		  
		//escrevendo o som, sim é confuso
		if snd_count < snd_delay{
		snd_count++;
		}else{
			snd_count = 0; 
			audio_play_sound(snd[page],8,false);}
	  }
   }
}  
     else {
           text_pause_timer--;	
          }
   
  //---------------------passando entre as paginas-----------------//
  if accept_key 
   {

   //se a escrita esta completa
   if draw_char == text_length[page]
      {
		 
	   //proxima pagina
	   if page < page_number-1
	   {
		  page++;
		  draw_char = 0;
	   }
	   //finaliza a caixa de texto
	   else
	       {
			   //atrela o texto as opções
			   
			   if option_number > 0 {
				   
				     create_textbox(option_link_id[option_pos]);
			   }
			  global.dialogo = false;
			  instance_destroy();
		   }
    
	  }
	  //se a escrita não está completa
	  else
	       {
			   
			   draw_char = text_length[page];
		   }
		    
		   
   }
  
  
  
  
  //-----------------desenha a caixa de texto-------------//
  var _txtb_x = textbox_x + text_x_offset[page];
  var _txtb_y = textbox_y - 30;
  txtb_img += txtb_img_spd;
  txtb_spr_w = sprite_get_width(txtb_spr[page]);
  txtb_spr_h = sprite_get_height(txtb_spr[page]);
  //desenha o speaker
  if speaker_sprite[page] != noone 
  {
    sprite_index = speaker_sprite[page];
	if draw_char == text_length[page] {image_index = 0};
	var _speaker_x = textbox_x + portrait_x_offset[page];
	if speaker_side[page] == -1 {_speaker_x += sprite_width};
	//desenha o speaker part 2
	draw_sprite_ext(txtb_spr[page], txtb_img, textbox_x + portrait_x_offset[page], textbox_y -30, sprite_width/txtb_spr_w, sprite_height/txtb_spr_h, 0, c_white, 1);
	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y - 30, speaker_side[page], 1, 0, c_white, 1);
  }
  //traseira da caixa de texto
  draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);
  
  
  //------------------------opções-------------------------//
  if draw_char == text_length[page] && page == page_number - 1
  {
	  
	  //seleciona as opções
	  option_pos += keyboard_check_pressed(vk_down) -  keyboard_check_pressed(vk_up);
	  option_pos = clamp(option_pos, 0, option_number-1);
	  
	  //desenha as opções
	  var _op_space = 17; //15
	  var _op_bord = 6;  //4
	  for (var op = 0; op < option_number; op++)
	  {
		  //a caixa de opções
		  var _o_w = string_width(option[op]) + _op_bord*2;
		  draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x + 16, _txtb_y - _op_space*option_number + _op_space*op, _o_w/txtb_spr_w, (_op_space-1)/txtb_spr_h, 0, c_white, 1);
         
		 //a seta
		 if option_pos == op
		   {
			draw_sprite(spr_textbox_arrow, 0, _txtb_x, _txtb_y - _op_space*option_number + _op_space*op);
		   }
		 
			
		  //os textos da opção
		  draw_text(_txtb_x + 16 + _op_bord, _txtb_y - _op_space*option_number + _op_space*op + 2, option[op]);
	}
	  
  }
  //desenha o texto
for(var c = 0; c < draw_char;	c++)
{
	
//o texto
draw_text( char_x[c, page], char_y[c, page], char[c, page] );
	
}















