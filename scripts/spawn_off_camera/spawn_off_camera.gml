/// @description Spawn Off Camera
/// @function spawn_off_camera(obj, num);
/// @param {index} object The object to spawn
/// @param {integer} num The number of instances to spawn

function spawn_off_camera(_obj, _num) {
	var xx, yy;

	var pad = 64;

	repeat(_num){
		do {
			xx = random_range(0, room_width);
			yy = random_range(0, room_height);
		} until (!point_in_rectangle(xx, yy,
			global.cameraX - pad,
			global.cameraY - pad,
			global.cameraX + global.cameraWidth + pad,
			global.cameraY + global.cameraHeight + pad
		));

		instance_create_layer(xx, yy, "Instances", _obj);
	}
}
