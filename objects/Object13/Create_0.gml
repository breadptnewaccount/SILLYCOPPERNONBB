/// @description Initialize Discord.

DISCORD_APP_ID = "1223338055285477546"
ready = false;
alarm[0] = room_speed * 5;
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}