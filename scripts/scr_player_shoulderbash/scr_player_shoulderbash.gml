function scr_player_shoulderbash(){
	movespeed = approach(movespeed, 10, 0.5)
	hsp = (movespeed * xscale)
	if (floor(image_index) == image_number - 1 && sprite_index == spr_player_dash)
	{
		state = states.run
	}
	if (key_left2 or key_left) or (key_right2 or key_right) {
		state = states.idle
		if image_xscale = 1 {
			image_xscale = -1	
		}
		if image_xscale = -1 {
			image_xscale = 1	
		}
	}
}