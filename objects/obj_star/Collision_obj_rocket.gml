/// @description Insert description here
// You can write your code in this editor

with(other){
	if (is_activated){
		instance_destroy();
	}
	global.star_fuel = min(global.star_fuel + other.refuel_amount, 1000);
}

show_debug_message("missile collision " + string(global.star_fuel));