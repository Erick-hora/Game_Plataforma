// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cenoura_movendo(){
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
if alarm[2] <= 0 {
	image_index = 0;

	estado = scr_cenoura_atacando;
	alarm[3] = 200;

}
}


function scr_cenoura_atacando() {	
	if direc == 0{
		sprite_index = spr_cenoura_atacando_direita; //animação de ataque direita
		
	}else if direc == 1{
		sprite_index = spr_cenoura_atacando_esquerda; //animação de ataque esquerda	
		
	}
	
	if alarm[3] <= 0{
		estado = scr_cenoura_movendo; //quando a animação de atq acaba, mudar para a de movimetação
		alarm [2] = 220;
		image_index = 1
	}	
}

