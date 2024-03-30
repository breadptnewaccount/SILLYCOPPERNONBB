image_blend = (deactivated ? c_orange : c_red)
if (place_meeting(x, y, obj_player)) {
	if !deactivated {
		with (instance_place(x, y, obj_player))
		{
			other.deactivated = 1
			vsp = -(movespeed * xscale)
			movespeed = 0
		}
	}
}
else
	deactivated = 0