// Pick a random frame
image_index = powerups.shield;// irandom_range(0, image_number - 1);

// Run alarm 0 (destroy self) in 5 seconds
alarm[0] = 5 * room_speed;

// Make this green;
image_blend = c_lime;

// Don't animate
image_speed = 0;