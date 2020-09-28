with(other) {
	var powerup_type = image_index;
	instance_destroy();
}

switch(powerup_type) {
	case powerups.shield:
		shield = true;
		alarm[1] = seconds(8);
		break;
	default:
		guns = powerup_type;
		alarm[2] = seconds(5);
		break;
}