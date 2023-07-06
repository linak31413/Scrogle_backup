draw_set_alpha(opacity)
draw_self()

draw_set_font(fnt_web)
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_color(c_black)
switch(floor(image_index/2)) {
	case 0:
		draw_text(x+32,y+102,search_text)
		break
	case 1:
		draw_text(x+32,y+102,search_text+" meanings")
		break
	case 2:
		draw_text(x+32,y+102,"images of "+search_text)
		break
}