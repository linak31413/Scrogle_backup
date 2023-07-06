is_visible = keyboard_check(vk_lshift)

if(mouse_y > 96 && mouse_y < 1016 && (position_meeting(mouse_x+12, mouse_y+6, self)
   || position_meeting(mouse_x-12, mouse_y+6, self)
   || position_meeting(mouse_x+12, mouse_y-6, self)
   || position_meeting(mouse_x-12, mouse_y-6, self))) {global.hover_each[search_id] = true}
else {global.hover_each[search_id] = false}

y = origin_y - global.offset

if(mouse_check_button_pressed(mb_left)) {
	if(global.hover_each[search_id]) {
		is_scrolled = true
		show_result = false
		scroll_end = 0
		scroll_start = 1 - (x + search_w - mouse_x) / search_w
		scroll_start = min(max(scroll_start,0),1)
	}
	else {is_scrolled = false}
}

if(is_scrolled && mouse_check_button(mb_left)) {
	scroll_end = 1 - (x + search_w - mouse_x) / search_w
	scroll_end = min(max(scroll_end,0),1)
}

if(is_scrolled && mouse_check_button_released(mb_left) && scroll_end < scroll_start) {
	scroll_temp = scroll_end
	scroll_end = scroll_start
	scroll_start = scroll_temp
}

search_posX = 0
search_posY = 0
if(x+search_w/2 > 960) {search_posX = 1}
if(y+search_h/2 > 540) {search_posY = 1}
