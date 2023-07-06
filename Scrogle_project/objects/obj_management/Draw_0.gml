draw_set_alpha(1)
///////////////////////////
/* Group of Pre-Drawings */
///////////////////////////
// Shapes
draw_set_color(make_color_rgb(111,111,127))	
draw_rectangle(0,96,512,224,false)					// Title on left
draw_set_color(make_color_rgb(63,63,79))
draw_rectangle(0,224,512,1016,false)				// Index on left
draw_set_color(make_color_rgb(239,239,239))	
draw_rectangle(512,96,1920,1016,false)				// Whole web screen
draw_set_color(make_color_rgb(191,191,191))
draw_roundrect_ext(1880,128,1896,984,16,16,false)	// Scroll bar
// Lines
draw_set_color(make_color_rgb(31,31,47))
draw_line_width(16,328,496,328,3)					// Index separation lines
draw_line_width(16,424,496,424,3)
draw_line_width(16,520,496,520,3)
draw_line_width(16,616,496,616,3)
// Objects
draw_sprite_ext(spr_logo,0,256,108,0.7,0.7,0,c_white,1)
// Texts1
draw_set_font(fnt_main)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(make_color_rgb(207,207,223))
draw_text(24,256,"About Scrogle")
draw_text(24,352,"Efortless Searching")
draw_text(24,448,"Customizable Search")
draw_text(24,544,"Join Scrogle Today")
// Texts2
draw_set_font(fnt_context)
draw_set_color(make_color_rgb(31,31,47))
draw_set_halign(fa_center)
draw_text(256,976,"(not an acutal website)")

///////////////////////
/* Group of Movables */
///////////////////////
// Shapes
draw_set_color(make_color_rgb(127,127,127))
draw_roundrect_ext(1880,128+ofs_scrbar,1896,192+ofs_scrbar,16,16,false)	// Scroll bar
draw_set_color(make_color_rgb(63,63,79))
draw_roundrect_ext(960,3040-ofs,1472,3168-ofs,128,128,false)			// Scroll install
// Texts1
draw_set_font(fnt_title)
draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_set_color(c_gray)
draw_text_transformed(1216,272-ofs,"Scroll it, Hover it, Google it.",0.5,0.5,0)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text_transformed(544,384-ofs,"About Scrogle",0.8,0.8,0)
draw_text_transformed(544,920-ofs,"Efortless Searching",0.8,0.8,0)
draw_text_transformed(544,1800-ofs,"Customizable Search",0.8,0.8,0)
draw_text_transformed(544,2560-ofs,"Join Scrogle Today",0.8,0.8,0)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(1216,3072-ofs,"Install Scrogle")
// Texts2
draw_set_font(fnt_context)
draw_set_halign(fa_left)
draw_set_color(c_dkgray)
for(i = 0; i < array_length(cont_AbSc); i++) {
	draw_text(544,464+i*48-ofs,cont_AbSc[i])
}
for(i = 0; i < array_length(cont_EfSe); i++) {
	draw_text(544,1000+i*48-ofs,cont_EfSe[i])
}
for(i = 0; i < array_length(cont_CuSe); i++) {
	draw_text(544,1880+i*48-ofs,cont_CuSe[i])
}
for(i = 0; i < array_length(cont_Josc); i++) {
	draw_text(944,2640+i*48-ofs,cont_Josc[i])
}
// Texts3
draw_set_color(c_gray)
draw_text(544,3360-ofs,"CSE33301 Introduction to Human Computer Interaction")
draw_text(544,3408-ofs,"Team XuX: Low-fidelity prototype of <Scrogle>")
draw_text(544,3456-ofs,"Made by JunSu Lee")

//Objects
draw_sprite(spr_logo,0,1216,112-ofs)
draw_sprite(spr_imgSearch,0,1848,416-ofs)
draw_sprite(spr_imgScrogle,0,1216,1320-ofs)
draw_sprite(spr_imgCustom,0,1216,2148-ofs)
draw_sprite(spr_imgJoin,0,544,2644-ofs)

////////////////////////////
/* Group of Post-Drawings */
////////////////////////////
// Shapes
draw_set_color(make_color_rgb(191,191,223))
draw_rectangle(0,0,1920,48,false)				// Chrome tabbar
draw_set_color(make_color_rgb(239,239,239))
draw_rectangle(8,4,328,48,false)				// Scrogle tab
draw_rectangle(0,48,1920,96,false)				// Search toolbar
draw_set_color(make_color_rgb(191,191,191))
draw_roundrect_ext(192,52,1752,90,36,36,false)	// Search box
draw_set_color(make_color_rgb(31,31,31))
draw_rectangle(0,1016,1920,1080,false)				// Windows tab
draw_set_color(make_color_rgb(111,111,119))	
draw_rectangle(148,1016,220,1080,false)				// Windows highlight box
draw_set_color(make_color_rgb(63,63,79))
draw_rectangle(148,1076,220,1080,false)				// Windows highlight line
// Lines
draw_set_color(make_color_rgb(127,127,127))		
draw_line_width(0,96,1920,96,2)						// Search separation line
// Objects
draw_sprite_ext(spr_scrogle,0,36,26,0.3,0.3,0,c_white,1)
draw_sprite_ext(spr_barScreen,0,1896,24,0.40,0.40,0,c_white,1)
draw_sprite_ext(spr_barProfile,0,1896,72,0.40,0.40,0,c_white,1)
draw_sprite_ext(spr_barTab,0,24,72,0.3,0.3,0,c_white,0.8)
draw_sprite_ext(spr_barWindow,0,26,1050,0.3,0.3,0,c_white,1)
// Texts
draw_set_font(fnt_web)
draw_set_halign(fa_left)
draw_set_valign(fa_center)
draw_set_color(c_dkgray)
draw_text(56,28,"Introduction                 ×")
draw_text(212,74,"scrogle.com/introduction")
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text_transformed(1856,1036,string_time,0.8,0.8,0)
draw_text_transformed(1856,1064,string_date,0.8,0.8,0)
// Installation
if(!global.working) {
	draw_set_color(make_color_rgb(239,239,239))
	draw_rectangle(1768,52,1808,92,false)			// Hinders Extension
}

//draw_set_color(c_dkgray)
//draw_text(500,24,mouse_x)
//draw_text(550,24,mouse_y+ofs)