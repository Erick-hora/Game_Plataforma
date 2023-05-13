 /// @description Insert description here
// You can write your code in this editor
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"));
cima = keyboard_check_pressed(ord("W"));



hveloc = (direita - esquerda) * veloc;


if direita {
	direc = 0;
	sprite_index = spr_andando_direita;
} else if esquerda {
    direc = 1;
	sprite_index = spr_andando_esquerda;
} else {
	if  direc == 0 {
		sprite_index = spr_personagem_direita;
	} else if direc == 1 {
		sprite_index = spr_personagem_esquerda;	
	}
}

if !place_meeting(x, y + 1, obj_parede) {
     vveloc += gravidade;	
}else {	
if cima {
	vveloc = -2.8;	
} 
}
if place_meeting(x + hveloc, y, obj_parede) {
	while !place_meeting(x + sign(hveloc), y, obj_parede) {
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