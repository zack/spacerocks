event_inherited();

image_index = HP - 1;

if (instance_exists(obj_ship)) {
	var distance_to_ship = point_distance(x, y, obj_ship.x, obj_ship.y);
	
	if (distance_to_ship < 250) {
		// Turn to the player's ship
		face_target(obj_ship);
		direction = image_angle;
		speed += 0.01;
		
	} else {
		speed = lerp(speed, original_speed, 0.1);
	}
}