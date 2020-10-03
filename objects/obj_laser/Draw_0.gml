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
	x + lengthdir_x(25, direction), 
	y + lengthdir_y(25, direction),
	x + lengthdir_x(len, direction),
	y + lengthdir_y(len, direction),
	obj_faction,
	false,
	false
);

show_debug_message(inst);

if (inst != 100003) {
	if (inst > 0) {
		show_debug_message("Inst: " + string(inst));
	}
	// Collide
	if (inst != noone && inst.faction != faction) {
		show_debug_message("Collided");
		with(inst) {
			event_perform(ev_other, ev_user1);
		}
	} else if (inst == noone) {
		show_debug_message("No one");
	} else if (inst.faction == faction) {
		show_debug_message("Same faction");
		//show_debug_message("faction match:" + string(faction) + " = " + string(inst.faction));
	} else {
		show_debug_message("Else");
	}
}
