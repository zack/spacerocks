event_inherited();
instance_destroy();

lives -= 1;

with (obj_game) {
	alarm[1] = room_speed;
}

audio_play_sound(snd_die, 1, false);

var _id = id;
with (obj_particles) {
	generate_debris(part_type_ship_debris, _id, 10);
}