x_diff = mouse_x - x
y_diff = mouse_y - y

if(mouse_check_button_pressed(mb_left)
   && y_diff > 0 && y_diff <= 32
   && x_diff > 0 && x_diff <= 320) {
	if(x_diff > 292 && is_pineed) {instance_destroy()}
	image_index += 1 - is_pineed
	is_pineed = 1
	is_moving = true
	mouse_offX = mouse_x - x
	mouse_offY = mouse_y - y
}

if(mouse_check_button_released(mb_left)) {is_moving = false}

if(x_diff > 0 && x_diff <= 320 && y_diff > 0 && y_diff <= 440) {
	global.on_popup = true
	timer_delete = global.trsh_popup
}
else {
	global.on_popup = false
	if (!is_pineed && !global.hover_each[search_id]) {
		timer_delete -= 1
		if(timer_delete <= 0) {instance_destroy()}
	}
}

if(is_moving) {
	x = mouse_x - mouse_offX
	y = mouse_y - mouse_offY
}
x = min(max(x,0),1600)
y = min(max(y,96),576)

if(global.on_popup) {opacity = min(opacity+1/10,1)}
else {opacity = max(opacity-1/20,global.opac_popup)}
image_alpha = opacity