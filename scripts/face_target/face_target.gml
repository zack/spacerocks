/// @description Face target
/// @function face_target(target);
/// @param {index} target The target

function face_target(_target){
	var angle_to_target = point_direction(x, y, _target.x, _target.y);
	angle_to_target = image_angle - angle_difference(image_angle, angle_to_target);
	image_angle = lerp(image_angle, angle_to_target, 0.1);
}
