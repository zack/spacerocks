/// @description Set camera to point at the target
/// @function set_camera_to_target(target);
/// @param {index} target The target of the camera

function set_camera_to_target(_target) {
	if(instance_exists(_target)) {
		// Set camera on target
		global.cameraX = _target.x - global.cameraWidth/2;
		global.cameraY = _target.y - global.cameraHeight/2;
		
		// Clamp camera to room
		global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
		global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);
	}
		
	// Set camera shake
	global.cameraX += random_range(-global.camera_shake, global.camera_shake);
	global.cameraY += random_range(-global.camera_shake, global.camera_shake);

	// Slowly bring camera shake down to 0
	if (global.camera_shake > 0) {
		global.camera_shake = max(0, global.camera_shake - 0.2);
	}

	camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
}
