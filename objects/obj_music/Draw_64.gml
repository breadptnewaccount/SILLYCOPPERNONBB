if global.debug {
	for (var i = 0; i < array_length(musicarray); ++i)
	{
		draw_text(500, 100 + (30 * i), audio_get_name(musicarray[i][1]))
		draw_text(700, 100 + (30 * i), room_get_name(musicarray[i][1]))
	}	
}
else {
	exit;	
}

