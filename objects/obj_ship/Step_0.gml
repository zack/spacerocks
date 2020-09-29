if (keyboard_check(vk_left)) {
	image_angle += 5;
}

if (keyboard_check(vk_right)) {
	image_angle -= 5;
}

if (keyboard_check(vk_up)) {
	// Speed up ship
    motion_add(image_angle, 0.05);
	
	exhaust_counter++;
	
	if (exhaust_counter >= 4) {
		// Exhaust particle FX
		var len = sprite_height * 0.4;
		var _xx = x - lengthdir_x(len, image_angle);
		var _yy = y - lengthdir_y(len, image_angle);
		with(obj_particles) {
			part_particles_create(particle_system, _xx, _yy, part_type_exhaust, 1);
		}
		
		exhaust_counter = 0;
	}
}

if (keyboard_check_pressed(vk_space)) {
	create_bullet(faction, image_angle, bulletSpd, id, guns);
}

move_wrap(true, true, sprite_width/2);