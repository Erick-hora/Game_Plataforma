/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
event_inherited();
if vida > 0 {
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
	sprite_index = spr_cenoura_direita
} else if direc == 1{
	x -= veloc;	
	sprite_index = spr_cenoura_esquerda
}	

} 