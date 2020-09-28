/// @description Game setup

score = 0;
lives = 3;

audio_set_master_gain(0, 0.25);
draw_set_font(fnt_text);

randomize();

enum factions {
	neutral,
	ally,
	enemy
}

enum powerups {
	two_bullets,
	three_bullets,
	four_bullets,
	star_bullets,
	laser,
	shield
}