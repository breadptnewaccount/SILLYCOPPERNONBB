function scr_player_backbreaker(){
	hsp = 0
	vsp = 0
	if (floor(image_index) == image_number - 1 && sprite_index == spr_player_comeoutdoor)
	{
		state = states.idle
		sprite_index = spr_player_idle
		image_index = 0
	}
}