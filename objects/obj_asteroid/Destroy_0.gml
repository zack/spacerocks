event_inherited();

var _id = id;
with (obj_particles) {
	generate_debris(part_type_asteroid_debris, _id, 10);
}

if (irandom_range(0, 5) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup);
}