function scr_player_idle(){
	move = (key_left + key_right)
	hsp = (movespeed * xscale)
	movespeed = Approach(movespeed, 0, 0.5)
	yscale = Approach(yscale, 1, 0.1)
	if (key_attack2)
	{
		state = states.shoulderbash
		movespeed = -1
		sprite_index = spr_player_dash
		image_index = 0
	}
	/*
	if key_down2 and key_jump2
	{
		with (instance_create(x, y, obj_rageeffect))
		{
			sprite_index = spr_player_idle
			image_index = other.image_index
		}	
		state = states.run2
		movespeed = 16
		sprite_index = spr_player_mach3
		image_index = 0
		audio_play_sound(sfx_boost, 1, false)
	}
	*/// ill fix it later
	if (move != 0)
	{
		image_index = 0
		sprite_index = spr_player_mach1
		xscale = move
		state = states.run
		movespeed = 0
		mach4mode = 0
		mach2mode = 0
	}
	if (key_jump)
	{
		state = states.jump
		sprite_index = spr_player_fall
		image_index = 0
		vsp = -8.5
	}
}