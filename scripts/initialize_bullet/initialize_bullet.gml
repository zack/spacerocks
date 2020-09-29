/// @description Initialize a ne wbullet
/// @function initialize_bullet(faction, direction, speed, creator, gun_type*);
/// @param {index} faction The faction that shot the bullet
/// @param {integer} direction The direction of the bullet
/// @param {integer} speed The speed of the bullet
/// @param {index} creator The id of the creator object
/// @param {index} instance Bullet instance

// change to test stuff

function initialize_bullet(_faction, _direction, _speed, _creator, _instance){
	with (_instance) {
		speed = _speed;
		faction = _faction;
		direction = _direction;
		creator = _creator;

		if (faction == factions.ally) {
			image_blend = c_aqua;
		} else if (faction == factions.enemy) {
			image_blend = c_red;
		}
	}
}
