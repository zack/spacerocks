if (other.id == creator) {
	exit;
} else if (other.faction == faction) {
	instance_destroy();
	exit;
} else {
	instance_destroy();
	with (other) {
		event_perform(ev_other, ev_user1);
	}
}