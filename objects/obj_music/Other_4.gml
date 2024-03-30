for (var i = 0; i < array_length(musicarray); ++i)
{
    var curroom = array_get(musicarray[i], 0)
    var curmusic = array_get(musicarray[i], 1)
    if (room == curroom && !audio_is_playing(curmusic))
    {
        audio_play_sound(curmusic, 1, true)
    }
}