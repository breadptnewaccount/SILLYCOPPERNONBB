function scr_player_slide(){
	hsp = (movespeed * xscale)
	if (!key_down)
	{
		mask_index = spr_player_mask
		state = states.run
	}
	if (!grounded)
	{
		mask_index = spr_player_mask
		state = states.dive
	}
}