/// @description Insert description here
// You can write your code in this editor

if (instance_exists(star))
	ratio = star.current_fuel_ratio;
else ratio = 0

/////////////////// DEBUGGING

draw_text_transformed_color(heart_x + 20, heart_y + 20 , "diff " +  string(global.difficulty),
			1, 1, 0, c_white, c_white, c_white, c_white, 1);

draw_text_transformed_color(heart_x + 20, heart_y + 40 , "d_scale " +  string(global.diff_scale),
			1, 1, 0, c_white, c_white, c_white, c_white, 1);
			
draw_text_transformed_color(heart_x + 20, heart_y + 60 , "time "+  string(global.time) + " = " + string(global.time/60) +"s",
			1, 1, 0, c_white, c_white, c_white, c_white, 1);




/////////////////// PLAYER HEALTH

//  player 1
if(instance_exists(player1)){
draw_sprite_ext(spr_heart, 0, heart_x, heart_y, 1.5, 1.5, 0, c_white, 1);

draw_text_transformed_color(heart_x - 11, heart_y - 20 ,string(player1.life),
			2, 2, 0, c_white, c_white, c_white, c_orange, 1);
}

// player 2
if (instance_exists(player2)){
draw_sprite_ext(spr_heart, 0, w_width - heart_x, heart_y, 1.5, 1.5, 0, c_white, 1);

draw_text_transformed_color(w_width - heart_x - 11, heart_y - 20 ,string(player2.life),
			2, 2, 0, c_white, c_white, c_white, c_orange, 1);	
}


/////////////////// STAR FUEL
//  star fuel
draw_sprite_part_ext(spr_star_fuel_1, 0, 0, 0, 1, 10, window_get_width()/2, fuelbar_y,
			fuelbar_width * ratio, 1, merge_color(c_red, c_white, ratio), 1);

// flipped
draw_sprite_part_ext(spr_star_fuel_1, 0, 0, 0, 1, 10, window_get_width()/2, fuelbar_y,
			-fuelbar_width * ratio, 1, merge_color(c_red, c_white, ratio), 1);

// star fuel border
draw_sprite_part_ext(spr_bar_border, 0, 0, 0, 108, 10, window_get_width()/2 - 1, fuelbar_y,
			11, 1, c_white, 1);

// flipped
draw_sprite_part_ext(spr_bar_border, 0, 0, 0, 108, 10, window_get_width()/2 + 1, fuelbar_y,
			-11, 1, c_white, 1);
