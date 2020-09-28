/// @description 

if (instance_exists(obj_ship)) {
	var distance_to_ship = point_distance(x, y, obj_ship.x, obj_ship.y);
	
	if (distance_to_ship < 250) {
		// Turn to the player's ship
		face_target(obj_ship);
		
		// Fire a bullet
		bullet_counter++;
		if (bullet_counter >= 60) {
			bullet_counter = 0;
			create_bullet(faction, image_angle, 4, id);
		}
	} else {
		// do nothing
	}
}