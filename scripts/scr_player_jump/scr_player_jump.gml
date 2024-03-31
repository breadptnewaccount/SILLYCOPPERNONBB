function scr_player_jump(){
	move = (key_left + key_right)
	hsp = movespeed
	if (key_jump && jumpreverted == 0)
	{
		jumpreverted = 1
		vsp *= 1.3
		vsp *= -1
		yscale = 0.5
	}
	yscale = Approach(yscale, 1, 0.1)
	if (move != 0 && momentum == 0)
	{
		movespeed += 1 * move / 6
	}
	else if momentum == 0
	{
		movespeed = approach(movespeed, 0, 0.2)
	}
	if (movespeed != 0)
	{
		xscale = sign(movespeed)
	}
	if ((!key_jump2) && vsp < 0.5 && jumpstop == 0 && verticalmomentum == 0)
    {
        vsp /= 20
		jumpstop = 1
    }
	if grounded && vsp > 0
	{
		momentum = 0
		verticalmomentum = 0
		movespeed *= xscale
		state = states.run
		jumpreverted = 0
		sprite_index = spr_player_mach1
		show_debug_message("reverted to run")
	}
	if (mach2mode || mach4mode)
	{
		if (key_down)
		{
			movespeed *= xscale
			state = states.dive
			jumpreverted = 0
		}
		if (place_meeting_solid(x + 4 * xscale, y))
		{
			state = states.cling
			sprite_index = spr_player_wallslide
			show_debug_message("started wall slide")
		}
	}
	else if key_down2
	{
		vsp = -3
		hsp = 0
		movespeed = 0
		with (instance_create(x, y, obj_rageeffect))
		{
			hsp = -8
			sprite_index = spr_player_groundpound
			image_index = other.image_index
		}	
		with (instance_create(x, y, obj_rageeffect))
		{
			hsp = 8
			sprite_index = spr_player_groundpound
			image_index = other.image_index
		}	
		state = states.groundpound
		sprite_index = spr_player_groundpound
	}
}