/// @description Set camera to point at the target
/// @function set_camera_to_target(target);
/// @param {index} target The target of the camera

function set_camera_to_target(_target) {
	if(instance_exists(_target)) {
		global.cameraX = _target.x - global.cameraWidth/2;
		global.cameraY = _target.y - global.cameraHeight/2;
	
		global.cameraX = clamp(global.cameraX, 0, room_width - global.cameraWidth);
		global.cameraY = clamp(global.cameraY, 0, room_height - global.cameraHeight);
	}

	camera_set_view_pos(view_camera[0], global.cameraX, global.cameraY);
}
