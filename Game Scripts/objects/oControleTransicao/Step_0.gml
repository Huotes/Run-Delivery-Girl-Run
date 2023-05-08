if room == RmCutscene and global.cutscene == true and !instance_exists(obj_textbox){
if !instance_exists(oInvocaFase1){instance_create_depth(x,y,-99999,oInvocaFase1);}
}

if room == RmStart and keyboard_check_pressed(vk_enter){
if !instance_exists(oInvocautscene){instance_create_depth(x,y,-99999,oInvocautscene);}
}

