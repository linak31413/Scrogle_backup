if(keyboard_check_pressed(vk_escape)) {game_end(0)}

if(current_minute % 61 < 10) {string_time = string(current_hour) + ":0" + string(current_minute) + " AM"}
else {string_time = string(current_hour) + ":" + string(current_minute) + " AM"}
string_date = date_date_string(date_current_datetime())

if(global.hovering) {cursor_sprite = spr_text}
else {cursor_sprite = spr_cursor}


if(mouse_x > 512 && mouse_y > 96 && mouse_y < 1016) {
	if(mouse_wheel_up()) {global.offset = max(global.offset-75, 0)}
	if(mouse_wheel_down()) {global.offset = min(global.offset+75, ofs_max)}
}

ofs = global.offset
ofs_scrbar = ofs / ofs_max * 792

global.hovering = false
for(i = 0; i < search_cnt; i++) {
	if(global.hovering) {break}
	global.hovering = global.hovering || global.hover_each[i]
}