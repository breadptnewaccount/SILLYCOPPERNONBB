obj_player.homing = false
with (obj_camera)
{
	shake_mag = 3
	shake_mag_acc = 0.1
}
instance_create(x, y, obj_explosioneffect)
audio_play_sound(sfx_explosion, 1, false)