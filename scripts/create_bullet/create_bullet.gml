/// @description Create Bullet
/// @function create_bullet(faction, direction, speed, creator, gun_type*);
/// @param {index} faction The faction that shot the bullet
/// @param {integer} direction The direction of the bullet
/// @param {integer} speed The speed of the bullet
/// @param {index} creator The id of the creator object
/// @param {index} gun_type The type of gun

// change to test stuff

function create_bullet(_faction, _direction, _speed, _creator, _gun_type){
	var gun_type = -1;
	if (argument_count > 4) {
		gun_type = _gun_type;
	}
	
	switch(gun_type) {
		case powerups.three_bullets:
			var inst = instance_create_layer(x, y, "Instances", obj_bullet);
			initialize_bullet(_faction, _direction, _speed, _creator, inst);
			
		case powerups.two_bullets:
			audio_play_sound(snd_zap, 1, false);
			
			var sep = 12;
			var os_x1 = lengthdir_x(sep, _direction + 90);
			var os_x2 = lengthdir_x(sep, _direction - 90);
			var os_y1 = lengthdir_y(sep, _direction + 90);
			var os_y2 = lengthdir_y(sep, _direction - 90);
			
			var inst = instance_create_layer(x + os_x1, y + os_y1, "Instances", obj_bullet);
			initialize_bullet(_faction, _direction, _speed, _creator, inst);
			
			var inst = instance_create_layer(x + os_x2, y + os_y2, "Instances", obj_bullet);
			initialize_bullet(_faction, _direction, _speed, _creator, inst);
			
			break;

		case powerups.four_bullets:
			audio_play_sound(snd_zap, 1, false);
			var sep = 7, bullet_angle;
			
			var i = 0; repeat(4) {
				bullet_angle = _direction + (i * 90);
				var inst = instance_create_layer(
					x + lengthdir_x(sep, bullet_angle),
					y + lengthdir_y(sep, bullet_angle),
					"Instances",
					obj_bullet
				);
				initialize_bullet(_faction, bullet_angle, _speed, _creator, inst);
				i++;
			}
		
			break;
			
		case powerups.star_bullets:
			audio_play_sound(snd_zap, 1, false);
			var sep = 7, bullet_angle;
			
			var i = 0; repeat(8) {
				bullet_angle = _direction + (i * 45);
				var inst = instance_create_layer(
					x + lengthdir_x(sep, bullet_angle),
					y + lengthdir_y(sep, bullet_angle),
					"Instances",
					obj_bullet
				);
				initialize_bullet(_faction, bullet_angle, _speed, _creator, inst);
				i++;
			}
			break;
			
		case powerups.laser:
			audio_play_sound(snd_laser, 1, false);
			var inst = instance_create_layer(x, y, "Instances", obj_laser);
			initialize_bullet(_faction, _direction, 0, _creator, inst);
			break;
			
		default:
			audio_play_sound(snd_zap, 1, false);
			var inst = instance_create_layer(x, y, "Instances", obj_bullet);
			initialize_bullet(_faction, _direction, _speed, _creator, inst);
			
			break;
	}
}
