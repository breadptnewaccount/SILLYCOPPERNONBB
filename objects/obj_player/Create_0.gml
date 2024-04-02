global.debug = true
scr_initinput()
scr_collision_init()
enum states {
	run,
	run2,
	machslide,
	shoulderbash,
	idle,
	jump,
	dive,
	slide,
	cling,
	enterdoor,
	backbreaker,
	groundpound,
}
image_speed = 0.35
depth = -107
global.hp = 4
homingattackid = -4
targetRoom = rm_test
targetDoor = "A"
jumpreverted = 0
flash = 0
jumpstop = 0
verticalmomentum = 0
momentum = 1
mach2mode = 0
mach4mode = 0
state = states.idle
movespeed = 0
move = 0
xscale = 1
yscale = 1
homing = false
angle = 0
alpha = 1
grav = 0.3

//mach shit

mach = noone;
mach_play = noone;

machsfx = function(argument0) 
{
	if mach == argument0 {
		exit;
	}
	if mach != noone {
        audio_stop_sound(mach_play)
	}
	if argument0 != noone
    {
        mach = argument0
        mach_play = audio_play_sound(argument0, 0, true, 0.5)
	}
    else
        mach = noone
}
