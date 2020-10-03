event_inherited();

var _id = id;
with (obj_particles) {
	generate_debris(part_type_ship_debris, _id, 10);
}
audio_play_sound(snd_die, 1, false);

switch(object_index) {
	case obj_raider:
		score += 15;
		break;
	case obj_hunter:
		score += 30;
		break;
	case obj_brute:
		score += 50;
		break;
}

if (irandom_range(0, 2) == 0) {
	instance_create_layer(x, y, "Instances", obj_powerup);
}