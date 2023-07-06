switch(floor(button_id)) {
	case 0:
		game_end(0)
		break
	case 1:
		game_restart()
		break
	case 2:
		if(!global.on_popup) {
			global.offset = button_pos
		}
		break
	case 3:
		if(!global.working) {
			global.working = true
			scr_search()
			instance_create_layer(1788,144,"Instances",obj_arrow)
		}
		break
	case 4:
		if(global.working) {
			global.in_setting = true
			instance_create_layer(1805,97,"Instances",obj_setting)
		}
		break
}