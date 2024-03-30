function scr_player_shoulderbash(){
	movespeed = approach(movespeed, 10, 0.5)
	hsp = (movespeed * xscale)
	if (floor(image_index) == image_number - 1 && sprite_index == spr_player_dash)
	{
		state = states.run
	}
}