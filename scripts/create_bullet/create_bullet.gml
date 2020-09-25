/// @description Create Bullet
/// @function create_bullet(faction, direction, speed, creator);
/// @param {index} faction The faction that shot the bullet
/// @param {integer} direction The direction of the bullet
/// @param {integer} speed The speed of the bullet
/// @param {index} creator The id of the creator object


function create_bullet(_faction, _direction, _speed, _creator){
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	
	with (inst) {
		speed = _speed;
		faction = _faction;
		direction = _direction;
		creator = _creator;
	}
	
	if (faction == factions.ally) {
		image_blend = c_aqua;
	} else if (faction == factions.enemy) {
		image_blend = c_red;
	}
	
	audio_play_sound(snd_zap, 1, false);
}
