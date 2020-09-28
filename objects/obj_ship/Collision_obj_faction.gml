if (shield) {
	with(other) {
		event_perform(ev_other, ev_user1);
	}
} else if (other.faction != faction) {
	event_perform(ev_other, ev_user1);
}