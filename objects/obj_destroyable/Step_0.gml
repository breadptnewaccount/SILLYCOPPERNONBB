if place_meeting(x,y,obj_player) {
	if obj_player.state = states.shoulderbash or obj_player.movespeed <= 12 {
		instance_destroy(self)	
	}
}