/// @description Insert description here
// You can write your code in this editor
instance_create_layer(x,y,"Instances",obj_boom)

with(other){
	instance_destroy();
}

// call hit event
event_user(0);
