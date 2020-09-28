function generate_debris() {
	repeat(10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}