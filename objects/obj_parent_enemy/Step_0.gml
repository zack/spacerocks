exhaust_counter++;
	
if (exhaust_counter >= 4) {
	// Exhaust particle FX
	var len = sprite_height * 0.4;
	var _xx = x - lengthdir_x(len, image_angle);
	var _yy = y - lengthdir_y(len, image_angle);
	with(obj_particles) {
		part_particles_create(particle_system, _xx, _yy, part_type_exhaust_enemy, 1);
	}
		
	exhaust_counter = 0;
}