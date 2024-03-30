if global.debug {
	draw_set_halign(fa_middle)
	draw_set_color(c_white)
	draw_text(x,y - 75,string("movespeed:") + string(movespeed))
	draw_text(x,y - 100,string("mach sound FUCK:") + string(mach))
}
else {
	exit;	
}