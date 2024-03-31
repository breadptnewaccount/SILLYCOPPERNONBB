function scr_player_groundpound(){
	vsp = approach(vsp, 20, 0.2)
	if (vsp >= 0)
		vsp = 20
	if (grounded)
	{
		state = states.jump
		vsp = -2
		sprite_index = spr_player_bounce
		image_index = 0
		mach2mode = 0
		mach4mode = 0
		hsp =  0
		movespeed = 0
	}
}