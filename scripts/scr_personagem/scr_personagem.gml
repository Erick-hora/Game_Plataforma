// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_personagem_movendo(){
//movimentação
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"))
cima = keyboard_check_pressed(ord("W"))

hveloc = (direita - esquerda) * veloc ;


if direita{
	direc = 0;
	sprite_index = spr_direita_correndo
} else if esquerda {
	direc = 1;
	sprite_index = spr_correndo_esquerda
} else if direc == 0 {
	sprite_index = spr_personagem_direita
	
}else if direc == 1 {
sprite_index = spr_personagem_esquerda

}



if !place_meeting(x, y + 1, obj_parede){
	vveloc += gravidade;	
}else {
if cima {
	vveloc = -2.8;	
}

}
if place_meeting(x + hveloc, y, obj_parede){
	while !place_meeting(x + sign(hveloc), y, obj_parede){
	x += sign(hveloc);
}
hveloc = 0; 
}

x += hveloc;

if place_meeting(x, y + vveloc, obj_parede) {
	while !place_meeting(x, y + sign(vveloc), obj_parede) {
		y += sign(vveloc);
}

vveloc = 0;

}

y += vveloc;

if keyboard_check_pressed(vk_space) {
	image_index = 0; //reseta a animação
	
	estado = scr_personagem_atacando; //mudança para atacando
	
	
	//cria hitbox e da a direção dela baseada na direc
	if direc == 0 {
		instance_create_layer(x + 20, y  - 8, "instances" ,obj_hitbox);
	} else if direc == 1{
			instance_create_layer(x - 20, y  - 8, "instances" ,obj_hitbox);
	}	
}

}


function scr_personagem_atacando() {
	if direc == 0{
		sprite_index = spr_personagem_atacando_direita; //animação de ataque direita
	}else if direc == 1{
		sprite_index = spr_personagem_atacando_esquerda; //animação de ataque esquerda	
	}
	
	if scr_terminando(){
		estado = scr_personagem_movendo; //quando a animação de atq acaba, mudar para a de movimetação
	}	
}
