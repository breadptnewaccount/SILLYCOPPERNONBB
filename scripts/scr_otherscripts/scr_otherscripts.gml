function audio_play_sound_3d(argument0, argument1, argument2)
{
	return audio_play_sound_at(argument0, x, y, 0, 500, 50, 10, argument2, argument1)
}
function add_music(argument0, argument1)
{
    with (obj_music)
    {
        array_push(musicarray, [argument0, argument1])
    }
}