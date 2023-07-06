function scr_button() {
	with(instance_create_layer(1852,0,"Instances",obj_button)) { // Chrome X button
		button_w = 68
		button_h = 45
		button_id = 0
		is_movable = false
		image_xscale = button_w / 64
		image_yscale = button_h / 64
	}
	with(instance_create_layer(295,15,"Instances",obj_button)) { // Scrogle X button
		button_w = 20
		button_h = 20
		button_id = 0.1
		is_movable = false
		image_xscale = button_w / 64
		image_yscale = button_h / 64
	}
	with(instance_create_layer(144,108,"Instances",obj_button)) { // Scrogle logo
		button_w = 224
		button_h = 108
		button_id = 1
		is_movable = false
		image_xscale = button_w / 64
		image_yscale = button_h / 64
	}
	with(instance_create_layer(135,56,"Instances",obj_button)) { // Chrome refresh
		button_w = 32
		button_h = 32
		button_id = 1.1
		is_movable = false
		image_xscale = button_w / 64
		image_yscale = button_h / 64
	}
	with(instance_create_layer(20,248,"Instances",obj_button)) { // Index AbSc
		button_w = 472
		button_h = 64
		button_id = 2
		button_pos = 192
		is_movable = false
		image_xscale = button_w / 64
		image_yscale = button_h / 64
	}
	with(instance_create_layer(20,344,"Instances",obj_button)) { // Index EfSe
		button_w = 472
		button_h = 64
		button_id = 2
		button_pos = 736
		is_movable = false
		image_xscale = button_w / 64
		image_yscale = button_h / 64
	}
	with(instance_create_layer(20,440,"Instances",obj_button)) { // Index CuSe
		button_w = 472
		button_h = 64
		button_id = 2
		button_pos = 1636
		is_movable = false
		image_xscale = button_w / 64
		image_yscale = button_h / 64
	}
	with(instance_create_layer(20,536,"Instances",obj_button)) { // Index JoSc
		button_w = 472
		button_h = 64
		button_id = 2
		button_pos = 2376
		is_movable = false
		image_xscale = button_w / 64
		image_yscale = button_h / 64
	}
	with(instance_create_layer(960,3040,"Instances",obj_button)) { // Installation
		button_w = 512
		button_h = 128
		button_id = 3
		is_movable = true
		origin_y = y
		image_xscale = button_w / 64
		image_yscale = button_h / 64
	}
	with(instance_create_layer(1773,55,"Instances",obj_button)) { // Scrogle Setting
		button_w = 32
		button_h = 32
		button_id = 4
		is_movable = false
		origin_y = y
		image_xscale = button_w / 64
		image_yscale = button_h / 64
	}
}