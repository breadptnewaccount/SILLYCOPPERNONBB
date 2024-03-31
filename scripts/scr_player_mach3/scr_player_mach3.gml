function scr_player_mach3(){
	move = (key_left + key_right)
	hsp = (movespeed * xscale)
	movespeed = Approach(movespeed, 20, 0.09)
	if (key_down)
	{
		state = states.slide
		image_index = 0
		sprite_index = spr_player_crouchslip
	}
	if (key_attack2)
	{
		state = states.shoulderbash
		sprite_index = spr_player_dash
		image_index = 0
	}
	if (movespeed >= 18 && mach4mode == 0)
	{
		flash = 1
		sprite_index = spr_player_mach4
		mach4mode = 1
	}
	if (mach4mode && sprite_index != spr_player_mach4)
		sprite_index = spr_player_mach4
	if (move != xscale)
	{
		state = states.machslide
		sprite_index = spr_player_stop
		mach2mode = 0
		mach4mode = 0
	}
	if (key_jump)
	{
		audio_play_sound(sfx_jump, 1, false)
		state = states.jump
		sprite_index = spr_player_mach2fall
		image_index = 0
		vsp = -8.5 - (movespeed / 5)
		movespeed *= xscale
		mach4mode = 0
	}
}