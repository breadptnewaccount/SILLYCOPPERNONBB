if (targetDoor == "A" && instance_exists(obj_doorA))
{
	x = (obj_doorA.x + 16)
	y = (obj_doorA.y - 14)
}
if (targetDoor == "B" && instance_exists(obj_doorB))
{
	x = (obj_doorB.x + 16)
	y = (obj_doorB.y - 14)
}
if (targetDoor == "C" && instance_exists(obj_doorC))
{
	x = (obj_doorC.x + 16)
	y = (obj_doorC.y - 14)
}
if place_meeting(x,y,obj_door)
	audio_play_sound(sfx_door,1,false);