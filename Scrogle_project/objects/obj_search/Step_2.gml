draw_x = search_w * scroll_start
draw_w = search_w * (scroll_end - scroll_start)
if(draw_w < 0) {
	draw_x += draw_w
	draw_w *= -1
}

if(is_scrolled && !mouse_check_button(mb_left)
   && global.hover_each[search_id]
   && mouse_x > x + draw_x - 12 && mouse_x < x + draw_x + draw_w + 12) {
	if(scroll_end - scroll_start > 0.6) {
		if(!show_result) {
			cursor_sprite = spr_search
			time_hover++
			if(time_hover >= global.trsh_hover) {
				instance_destroy(obj_popup)
				show_result = true
				time_hover = global.trsh_hover
				search_posX = x+search_w*(1-search_posX)-320*search_posX
				search_posY = y+(search_h-440)*search_posY
				with(instance_create_layer(search_posX,search_posY,"Instances",obj_popup)) {
					image_index = global.search_type * 2
					search_parent = other
					search_text = other.search_text
					search_id = other.search_id
				}
			}
		}
		else if(global.hovering) {cursor_sprite = spr_text}
		else {cursor_sprite = spr_cursor}
	}
	else {cursor_sprite = spr_missing}
}
else if(!show_result) {time_hover = 0}