if(is_visible) {
	draw_set_alpha(0.3)
	draw_rectangle_color(x,y,x+button_w,y+button_h,c_red,c_red,c_red,c_red,true)
	draw_rectangle_color(x,y,x+button_w,y+button_h,c_yellow,c_yellow,c_yellow,c_yellow,false)
}
else {
	draw_set_alpha(visibility)
	switch(button_id) {
		case 0:
			draw_rectangle_color(x,y,x+button_w,y+button_h,c_red,c_red,c_red,c_red,false)
			break
		case 0.1:
			draw_circle_color(x+10,y+10,12,c_gray,c_gray,false)
			break
		case 1.1:
			draw_circle_color(x+16,y+16,20,c_gray,c_gray,false)
			break
		case 2:
			if(!global.on_popup) {draw_rectangle_color(x,y,x+button_w,y+button_h,c_gray,c_gray,c_gray,c_gray,false)}
			break
		case 3:
			if(!global.on_popup) {
				draw_set_color(c_gray)
				draw_roundrect_color_ext(x,y,x+button_w,y+button_h,button_h,button_h,c_gray,c_gray,false)
			}
			break
		case 4:
			if(global.working && !global.on_popup) {draw_circle_color(x+16,y+16,20,c_gray,c_gray,false)}
			break
	}
}

draw_set_alpha(1)
draw_set_color(make_color_rgb(31,31,31))
draw_rectangle(300,1016,1800,1080,false)