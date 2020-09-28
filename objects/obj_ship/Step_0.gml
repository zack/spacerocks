if (keyboard_check(vk_left)) {
	image_angle += 5;
}

if (keyboard_check(vk_right)) {
	image_angle -= 5;
}

if (keyboard_check(vk_up)) {
	// Speed up ship
    motion_add(image_angle, 0.05);
	
	if (allow_exhaust) {
		// Draw exhaust
		var exhaustX = x + lengthdir_x(5, image_angle-180);
		var exhaustY = y + lengthdir_y(5, image_angle-180);
		var exhaust = instance_create_layer(
			exhaustX,
			exhaustY,
			"Instances",
			obj_exhaust
		);
		exhaust.direction = image_angle-180;
		allow_exhaust = false;
		alarm[0] = 15;
	}
}

if (keyboard_check_pressed(vk_space)) {
	create_bullet(faction, image_angle, bulletSpd, id);
}

move_wrap(true, true, sprite_width/2);