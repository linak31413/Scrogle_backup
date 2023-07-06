window_set_fullscreen(true)

window_set_cursor(cr_none)

scr_content()
scr_button()

global.offset = 0
ofs = 0
ofs_max = 2500
ofs_scrbar = 0

search_cnt = 20
global.working = false
global.hovering = false
global.on_popup = false
for(i = 0; i < search_cnt; i++) {global.hover_each[i] = false}

global.in_setting = false
global.search_type = 0
global.trsh_hover = 90
global.trsh_popup = 90
global.opac_popup = 0.5