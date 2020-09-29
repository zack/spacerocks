var len = 500;

// Draw line
draw_line_width_color(
	x, 
	y,
	x + lengthdir_x(len, direction),
	y + lengthdir_y(len, direction),
	2,
	image_blend,
	c_white
	
);

// Get collision
var inst = collision_line(
	x, 
	y,
	x + lengthdir_x(len, direction),
	y + lengthdir_y(len, direction),
	obj_faction,
	false,
	false
);

// Collide
if (inst != noone && inst.faction != faction) {
	with(inst) {
		if (!immune_to_laser) {
			event_perform(ev_other, ev_user1);
		}
	}
}