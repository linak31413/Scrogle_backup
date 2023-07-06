is_visible = keyboard_check(vk_lshift)

if(position_meeting(mouse_x, mouse_y, self) && (button_id < 2 || button_id == 4 || mouse_y > 96)
   && mouse_y < 1016) {visibility = min(0.5, visibility+1/20)}
else {visibility = max(0, visibility-1/10)}

if(is_movable) {
	y = origin_y - global.offset
}