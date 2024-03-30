function scr_player_enterdoor(){
	hsp = 0
	vsp = 0
	sprite_index = spr_player_lookdoor
	if (floor(image_index) == image_number - 1)
		image_speed = 0.35
	if (instance_exists(obj_fadeout) && obj_fadeout.fadein)
	{
		room_goto(targetRoom)
		state = states.backbreaker
		sprite_index = spr_player_comeoutdoor
		image_index = 0
		image_speed = 0.35
	}
}