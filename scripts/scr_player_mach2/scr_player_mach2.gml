function scr_player_mach2(){
	if (floor(image_index) == image_number - 1 && sprite_index == spr_player_mach1)
	{
		sprite_index = spr_player_mach2
		mach2mode = 1
	}
	if (mach2mode == 1 && key_down)
	{
		mask_index = spr_player_crouchmask
		state = states.slide
		image_index = 0
		sprite_index = spr_player_crouchslip
	}
	if (key_attack2)
	{
		state = states.shoulderbash
		movespeed *= xscale
		sprite_index = spr_player_dash
		image_index = 0
	}
	move = (key_left + key_right)
	hsp = (movespeed * xscale)
	if (sprite_index != spr_player_slide)
		movespeed = Approach(movespeed, 18, 0.2)
	if (move != xscale)
	{
		state = states.machslide
		sprite_index = spr_player_stop
		mach2mode = 0
	}
	if (key_jump)
	{
		state = states.jump
		sprite_index = spr_player_mach2fall
		image_index = 0
		vsp = -8.5 - (movespeed / 50)
		movespeed *= xscale
	}
	if (movespeed >= 8)
	{
		state = states.run2
		sprite_index = spr_player_mach3
		mach2mode = 1
		flash = 1
	}
}