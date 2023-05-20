 /// @description Insert description here
 script_execute(estado);
//combate
if alarm[0] > 0 {
 	if image_alpha >= 1{
		alpha_hit = -0.05;	
	} else if image_alpha <= 0 {
		alpha_hit = 0.05;	
	}
}else{
	image_alpha = 1;	
}

image_alpha += alpha_hit;


if vida <= 0 {
	game_restart();	
}