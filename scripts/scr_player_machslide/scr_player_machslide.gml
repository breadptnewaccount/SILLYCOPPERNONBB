function scr_player_machslide(){
	hsp = (movespeed * xscale)
	movespeed = Approach(movespeed, 0, 0.4)
	if (movespeed <= 2)
		sprite_index = spr_player_stopping
	if (movespeed == 0)
	{
		state = states.idle
		sprite_index = spr_player_idle
	}
	if key_jump
	{
		state = states.jump
		sprite_index = spr_player_bounce
		image_index = 0
		vsp = -10.5 - (movespeed / 50)
		movespeed = (4 * -xscale)
		xscale *= -1
		verticalmomentum = 1
		mach2mode = 1
	}
}