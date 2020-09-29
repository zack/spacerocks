particle_system = part_system_create();

// Player Exhaust
part_type_exhaust = part_type_create();
part_type_sprite(part_type_exhaust, spr_exhaust, false, false, false);
part_type_size(part_type_exhaust, .4, .4, 0.05, 0);
part_type_color3(part_type_exhaust, c_white, c_fuchsia, c_purple);
part_type_alpha3(part_type_exhaust, 1, 1, 0);
part_type_life(part_type_exhaust, 20, 20);

// Enemy Exhaust
part_type_exhaust_enemy = part_type_create();
part_type_sprite(part_type_exhaust_enemy, spr_exhaust, false, false, false);
part_type_size(part_type_exhaust_enemy, .4, .4, 0.05, 0);
part_type_color3(part_type_exhaust_enemy, c_yellow, c_orange, c_red);
part_type_alpha3(part_type_exhaust_enemy, 1, 1, 0);
part_type_life(part_type_exhaust_enemy, 20, 20);

// Asteroid Debris
part_type_asteroid_debris = part_type_create();
part_type_sprite(part_type_asteroid_debris, spr_asteroid_debris_strip4, false, false, true);
part_type_life(part_type_asteroid_debris, 60, 80);
part_type_alpha3(part_type_asteroid_debris, 0.8, 0.8, 0);
part_type_direction(part_type_asteroid_debris, 0, 359, 0, false);
part_type_orientation(part_type_asteroid_debris, 0, 359, 1, false, false);
part_type_speed(part_type_asteroid_debris, 2, 2.4, -0.02, 0);

// Ship Debris
part_type_ship_debris = part_type_create();
part_type_sprite(part_type_ship_debris, spr_ship_debris_strip5, false, false, true);
part_type_size(part_type_ship_debris, 0.5, 1, 0, 0);
part_type_life(part_type_ship_debris, 60, 80);
part_type_alpha3(part_type_ship_debris, 0.6, 0.6, 0);
part_type_direction(part_type_ship_debris, 0, 359, 0, false);
part_type_orientation(part_type_ship_debris, 0, 359, 1, false, false);
part_type_speed(part_type_ship_debris, 3, 4, -0.05, 0);