function scr_initinputglobals() {
	ini_open("options.ini") 
	//keyboard
	var keybinds = ["key_left", "key_right", "key_up", "key_down", "key_jump", "key_attack"]
	var keybindsdefault = [vk_left, vk_right, vk_up, vk_down, ord("Z"), ord("X")]
	for (var i = 0; i < array_length(keybinds); ++i)
	{
		if (!ini_key_exists("controls", keybinds[i]))
			ini_write_real("controls", keybinds[i], keybindsdefault[i])
	}
	//gamepad
	var keybinds = ["key_left_gamepad", "key_right_gamepad", "key_up_gamepad", "key_down_gamepad", "key_jump_gamepad", "key_attack_gamepad"]
	var keybindsdefault = [gp_padl, gp_padr, gp_padu, gp_padd, gp_face1, gp_face3]
	for (var i = 0; i < array_length(keybinds); ++i)
	{
		if (!ini_key_exists("controls", keybinds[i]))
			ini_write_real("controls", keybinds[i], keybindsdefault[i])
	}
	//keyboard
	global.key_leftC = ini_read_real("controls", "key_left", vk_left)
	global.key_rightC = ini_read_real("controls", "key_right", vk_right)
	global.key_upC = ini_read_real("controls", "key_up", vk_up)
	global.key_downC = ini_read_real("controls", "key_down", vk_down)
	global.key_jumpC = ini_read_real("controls", "key_jump", ord("Z"))
	global.key_attackC = ini_read_real("controls", "key_attack", ord("X"))
	//gamepad
	global.key_leftG = ini_read_real("controls", "key_left_gamepad", gp_padl)
	global.key_rightG = ini_read_real("controls", "key_right_gamepad", gp_padr)
	global.key_upG = ini_read_real("controls", "key_up_gamepad", gp_padu)
	global.key_downG = ini_read_real("controls", "key_down_gamepad", gp_padd)
	global.key_jumpG = ini_read_real("controls", "key_jump_gamepad", gp_face1)
	global.key_attackG = ini_read_real("controls", "key_attack_gamepad", gp_face3)
	ini_close()
}
function scr_initinput(){
	scr_initinputglobals()
	player_input_device[0] = 0
	key_left = 0
	key_left2 = 0
	key_right = 0
	key_right2 = 0
	key_up = 0
	key_up2 = 0
	key_down = 0
	key_down2 = 0
	key_jump = 0
	key_jump2 = 0
	key_attack = 0
	key_attack2 = 0
	for (var i = 0; i < gamepad_get_device_count(); i++)
	{
		if gamepad_is_connected(i)
		{
			player_input_device[0] = i
		}
	}
	global.player_gamepad[0] = player_input_device[0]
}
function scr_getinput(){
	key_left = -(keyboard_check(global.key_leftC) || gamepad_button_check(global.player_gamepad[0], global.key_leftG))
	key_left2 = -(keyboard_check_pressed(global.key_leftC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_leftG))
	key_right = (keyboard_check(global.key_rightC) || gamepad_button_check(global.player_gamepad[0], global.key_rightG))
	key_right2 = (keyboard_check_pressed(global.key_rightC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_rightG))
	key_up = (keyboard_check(global.key_upC) || gamepad_button_check(global.player_gamepad[0], global.key_upG))
	key_up2 = (keyboard_check_pressed(global.key_upC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_upG))
	key_down = (keyboard_check(global.key_downC) || gamepad_button_check(global.player_gamepad[0], global.key_downG))
	key_down2 = (keyboard_check_pressed(global.key_downC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_downG))
	key_jump2 = (keyboard_check(global.key_jumpC) || gamepad_button_check(global.player_gamepad[0], global.key_jumpG))
	key_jump = (keyboard_check_pressed(global.key_jumpC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_jumpG))
	key_attack = (keyboard_check(global.key_attackC) || gamepad_button_check(global.player_gamepad[0], global.key_attackG))
	key_attack2 = (keyboard_check_pressed(global.key_attackC) || gamepad_button_check_pressed(global.player_gamepad[0], global.key_attackG))
	key_start = (keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(global.player_gamepad[0], gp_start))
}