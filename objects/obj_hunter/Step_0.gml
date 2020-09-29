event_inherited();

if (instance_exists(obj_ship)) {
	var distance_to_ship = point_distance(x, y, obj_ship.x, obj_ship.y);
	
	if (distance_to_ship < 250) {
		// Turn to the player's ship
		face_target(obj_ship);
		direction = image_angle;
		
		if (point_distance(x, y, obj_ship.x, obj_ship.y) < 150) {
			speed -= 0.05;
		} else {
			speed += 0.01;
		}
		
		// Fire a bullet
		bullet_counter++;
		if (bullet_counter >= 60) {
			bullet_counter = 0;
			create_bullet(faction, image_angle, 4, id);
		}
	} else {
		speed = lerp(speed, original_speed, 0.1);
	}
}