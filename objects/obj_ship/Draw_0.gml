draw_self(); // required to draw yourself;

// Draw guns
if (guns >= 0) {
	draw_sprite_ext(
		spr_ship_powerups_strip6,
		guns,
		x, y,
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		image_alpha
	);
}

// Draw shield
if (shield) {
	var alpha = min(1, alarm[1]/room_speed);
	
	draw_sprite_ext(
		spr_ship_powerups_strip6,
		powerups.shield,
		x, y,
		image_xscale,
		image_yscale,
		image_angle,
		image_blend,
		alpha
	);
}
