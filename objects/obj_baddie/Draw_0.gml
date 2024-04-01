draw_self()
var playerdis = distance_to_object(obj_player)
var player = instance_nearest(x, y, obj_player)
if (playerdis <= 350 && player.state == states.jump && player.homingattackid == id)
{
	draw_circle(x, y, 40, true)
}
if (playerdis <= 350 && player.state == states.jump && !homing)
{
	homing = true

}
else if (playerdis >= 350 && homing)
{
	homing = false
}
