draw_set_alpha(1)
draw_self()

draw_set_font(fnt_context)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_dkgray)

switch(global.search_type) {
	case 0:
		draw_text(x-180,y+220,"Plain Google search")
		break
	case 1:
		draw_text(x-180,y+220,"Google Translator")
		break
	case 2:
		draw_text(x-180,y+220,"Google Image")
		break
}
draw_text_transformed(x-270,y+320,"Hover for",0.8,0.8,0)
draw_text_transformed(x-270,y+350,string_format(global.trsh_hover/60,1,1)+" sec.",0.8,0.8,0)
draw_text_transformed(x-90,y+320,"Disappear",0.8,0.8,0)
draw_text_transformed(x-90,y+350,"after "+string_format(global.trsh_popup/60,1,1)+" sec.",0.8,0.8,0)
draw_text(x-180,y+445,string_format(100*(1-global.opac_popup),2,0)+"% transparent")
draw_text(x-180,y+475,"when neglected")