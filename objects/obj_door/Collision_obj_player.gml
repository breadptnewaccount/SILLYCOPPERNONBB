with (other)
{
	if (key_up2 && grounded)
	{
		movespeed = 0
		instance_create(x, y, obj_fadeout)
		state = states.enterdoor
		sprite_index = spr_player_lookdoor
		image_index = 0
		targetDoor = other.targetDoor
		targetRoom = other.targetRoom
	}
}