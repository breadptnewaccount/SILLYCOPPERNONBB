function scr_player_cling() {
	vsp = Approach(vsp, 5, 0.01)
	hsp = 0
	movespeed = 0
	if (key_jump)
	{
		xscale *= -1
		state = states.jump
		movespeed = 7 * xscale
		vsp = -10
		sprite_index = spr_player_jump
	}
	if (grounded)
	{
		state = states.idle
		sprite_index = spr_player_idle
	}
}