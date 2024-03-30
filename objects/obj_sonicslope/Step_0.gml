if (place_meeting(x, y, obj_player)) {
		with (instance_place(x, y, obj_player))
		{
			movespeed -= 1 * xscale
		}
}