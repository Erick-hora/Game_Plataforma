/// @description Insert description here
// You can write your code in this editor
if place_meeting(x, y ,obj_paredeinimigo) {
if direc == 0 {
	 direc = 1;
} else if  direc == 1 {
  direc = 0;	
}
}

if direc == 0 {
	sprite_index = spr_cebola_direita;
	x += veloc;
} else if direc == 1 {
	sprite_index = spr_cebola_esquerda;
x -= veloc;	
}