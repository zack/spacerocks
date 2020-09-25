/// @description Insert description here
// You can write your code in this editor

instance_destroy();

with(other) {
	score += 10;
	
	audio_play_sound(snd_hurt, 1, false);
	instance_destroy();
	
	if(sprite_index == spr_asteroid_huge) {
		repeat(2) {
			var inst= instance_create_layer(x, y, "Instances", obj_asteroid);
			inst.sprite_index = spr_asteroid_med;
		}
	} else if (sprite_index == spr_asteroid_med) {
		repeat(2) {
			var inst= instance_create_layer(x, y, "Instances", obj_asteroid);
			inst.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}