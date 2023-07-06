x_diff = x - mouse_x
y_diff = mouse_y - y

if(mouse_check_button_pressed(mb_left) && alive == 0) {
	if(x_diff < 0 || x_diff > 360 || y_diff < 0 || y_diff > 500) {
		global.in_setting = false
		instance_destroy(obj_popup)
		instance_destroy()
	}
	else {
		if(y_diff > 190 && y_diff < 250) {global.search_type = (global.search_type+1) % 3}
		else if(y_diff > 290 && y_diff < 380) {
			if(x_diff > 180) {global.trsh_hover = 1 + (global.trsh_hover+29) % 120}
			else {global.trsh_popup = 1 + (global.trsh_popup+29) % 120}
		}
		else if(y_diff > 420) {
			global.opac_popup = global.opac_popup - 0.2
			if(global.opac_popup < 0) {global.opac_popup = 0.9}
		}
	}
}

if(alive > 0) {alive -= 1}