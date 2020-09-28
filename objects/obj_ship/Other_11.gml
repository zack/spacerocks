if(!shield) {
	HP -= 1;
	if (HP <= 0) {
		instance_destroy();
		with(obj_game) {
			//alarm[1] = room_speed();
		}
	}
}