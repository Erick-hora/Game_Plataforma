/// @description Insert description here
// You can write your code in this editor
direita = keyboard_check(ord("D"));
esquerda = keyboard_check(ord("A"))
cima = keyboard_check(ord("W"))

hveloc = (direita - esquerda) * veloc ;

x += hveloc;