scr_getinput()
scr_collision()
if flash
	flash--
switch state {
	case states.idle:
		scr_player_idle()
		break
	case states.run:
		scr_player_mach2()
		break
	case states.run2:
		scr_player_mach3()
		break
	case states.machslide:
		scr_player_machslide()
		break
	case states.jump:
		scr_player_jump()
		break
	case states.dive:
		scr_player_dive()
		break
	case states.slide:
		scr_player_slide()
		break
	case states.shoulderbash:
		scr_player_shoulderbash()
		break
	case states.enterdoor:
		scr_player_enterdoor()
		break
	case states.backbreaker:
		scr_player_backbreaker()
		break
	case states.groundpound:
		scr_player_groundpound()
		break
	case states.cling:
		scr_player_cling()
		break
	default:
		state = states.idle
		break
}
if key_start
game_restart()
if (sprite_index == spr_player_mach4)
	self.machsfx(sfx_mach4)
else if (sprite_index == spr_player_mach3)
	self.machsfx(sfx_mach3)
else if (sprite_index == spr_player_mach2)
	self.machsfx(sfx_mach2)
else if (sprite_index == spr_player_mach1)
	self.machsfx(sfx_mach1)
else {
	self.machsfx(-4)
}