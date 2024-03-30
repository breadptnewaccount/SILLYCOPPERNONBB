function scr_player_dive(){
	sprite_index = spr_player_dive
	vsp = 20
	if (grounded)
	{
		state = states.run
		sprite_index = spr_player_mach2
	}
	if key_jump
	{
		with (instance_create(x, y, obj_rageeffect))
		{
			hsp = -4
			sprite_index = spr_player_groundpound
			image_index = other.image_index
		}	
		with (instance_create(x, y, obj_rageeffect))
		{
			hsp = 4
			sprite_index = spr_player_groundpound
			image_index = other.image_index
		}	
		vsp = -3
		hsp /= 2
		state = states.groundpound
		sprite_index = spr_player_groundpound
	}
}