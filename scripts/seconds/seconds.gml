/// @description Return the number of frames for the specified number of seconds
/// @function seconds(seconds);
/// @param {integer} seconds The number of seconds

function seconds(_seconds) {
	return _seconds * room_speed;
}
