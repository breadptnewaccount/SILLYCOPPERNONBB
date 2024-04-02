audio_listener_position(obj_player.x, obj_player.y, 0)
var target = obj_player
view_enabled = true
view_visible[0] = true
view_xport[0] = (0 + irandom_range((-shake_mag), shake_mag))
view_yport[0] = (0 + irandom_range((-shake_mag), shake_mag))
view_wport[0] = 960
view_hport[0] = 540
camera_set_view_size(view_camera[0], width, height)
var wport = (view_wport[0] / 2)
var hport = (view_hport[0] / 2)
if !target.homing {
camx = Approach(camx, ((target.x - wport) + offsetx), 60)
camy = Approach(camy, ((target.y - hport) + offsety) - 50, 60)}
var playerstate = obj_player.state
var playersp = obj_player.movespeed
if (playerstate == states.run2)
	offsetx = Approach(offsetx, playersp * 4 * obj_player.xscale, 3)
else
	offsetx = Approach(offsetx, 0 * obj_player.xscale, 7)
camx = clamp(camx, 0, (room_width - view_wport[0]))
camy = clamp(camy, 0, (room_height - view_hport[0]))
camera_set_view_pos(view_camera[0], camx, camy)
if room != tiletest {
	layer_x("Backgrounds_1", camx)
	layer_y("Backgrounds_1", camy)
}
if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc
    if (shake_mag < 0)
        shake_mag = 0
}
