if(is_visible) {
	draw_set_alpha(0.3)
	draw_rectangle_color(x-12,y-6,x+search_w+12,y+search_h+6,c_green,c_green,c_green,c_green,true)
	draw_rectangle_color(x-12,y-6,x+search_w+12,y+search_h+6,c_blue,c_blue,c_blue,c_blue,false)
	draw_rectangle_color(x,y,x+search_w,y+search_h,c_navy,c_navy,c_navy,c_navy,false)
}
else {
	//draw_set_font(fnt_web)
	//draw_set_color(c_black)
	//draw_text(x-10,y-10,time_hover)
	if(is_scrolled) {
		draw_set_alpha(0.3)
		draw_rectangle_color(x+draw_x,max(y,96),x+draw_x+draw_w,max(y+search_h,96),c_gray,c_gray,c_gray,c_gray,false)
	}
}

draw_set_alpha(1)
draw_set_color(make_color_rgb(31,31,31))
draw_rectangle(300,1016,1800,1080,false)