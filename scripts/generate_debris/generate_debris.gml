function generate_debris(_particle_type, _creator, _count) {
	with(obj_particles) {
		part_particles_create_color(
			particle_system,
			_creator.x,
			_creator.y,
			_particle_type,
			_creator.image_blend,
			_count
		);
	}
}