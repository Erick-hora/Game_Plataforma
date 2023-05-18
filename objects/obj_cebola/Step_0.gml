/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if place_meeting(x, y, obj_parede_inimigo){
	if direc == 0 {
		direc = 1; 
	} 
	else if  direc == 1 {
		direc = 0;	
	}
}

if direc == 0 {
	x += veloc;
	sprite_index = spr_cebola_andando_direita
} else if direc == 1{
	x -= veloc;	
	sprite_index = spr_cebola_andando_esquerda
}	

if vida <= 0 {
	instance_destroy();
}	